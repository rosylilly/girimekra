# frozen_string_literal: true

class CleanStatusJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    @user = User.find(user_id)

    statuses = @user.rest_client.statuses(@user.uid, limit: 40)

    until statuses.size.zero?
      statuses.each do |status|
        DestroyStatusJob.perform_later(@user.id, status.id)
      end
      sleep 1

      statuses = @user.rest_client.statuses(@user.uid, max_id: statuses.last.id, limit: 40)
    end
  end
end
