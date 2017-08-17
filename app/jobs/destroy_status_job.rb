# frozen_string_literal: true

class DestroyStatusJob < ApplicationJob
  queue_as :default

  def perform(user_id, status_id)
    @user = User.find(user_id)

    @user.rest_client.destroy_status(status_id)
  end
end
