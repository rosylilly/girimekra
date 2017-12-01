class StreamController < ApplicationController
  include ActionController::Live

  def queue
    response.headers["Content-Type"] = "text/event-stream"

    loop do
      queue = Sidekiq::Queue.new.size
      data = { queue: queue }
      response.stream.write("data: #{data.to_json}\n\n")
      sleep 1
    end
  rescue IOError
    logger.info "Stream closed"
  rescue ActionController::Live::ClientDisconnected
    logger.info "Stream closed"
  ensure
    response.stream.close
  end
end
