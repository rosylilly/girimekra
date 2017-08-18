# frozen_string_literal: true

require 'sidekiq/api'

Rails.application.config.active_job.queue_adapter = :sidekiq

Sidekiq.configure_client do |config|
  config.redis = Rails.application.redis_configure[:connection].merge(Rails.application.redis_configure[:pool])
end

Sidekiq.configure_server do |config|
  config.redis = Rails.application.redis_configure[:connection].merge(Rails.application.redis_configure[:pool])
end
