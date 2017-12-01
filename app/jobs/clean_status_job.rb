# frozen_string_literal: true

class CleanStatusJob < ApplicationJob
  queue_as :default

  def perform(user_id, max_id: 0)
    max_id = [max_id.to_i, 0].max
    @user = User.find(user_id)

    options = { limit: 40 }
    options[:max_id] = max_id if max_id > 0

    sleep 3 # for mastodon performance

    statuses = @user.rest_client.statuses(@user.uid, limit: 40)
    statuses.each do |status|
      DestroyStatusJob.perform_later(@user.id, status.id)
    end

    CleanStatusJob.perform_later(user_id, max_id: statuses.last.id) until statuses.size.zero?
  end
end
