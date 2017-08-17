# frozen_string_literal: true

require 'sidekiq/api'

Rails.application.config.active_job.queue_adapter = :sidekiq

Sidekiq.configure_client do |config|
  config.redis = Rails.application.redis
end

Sidekiq.configure_server do |config|
  config.redis = Rails.application.redis
end
