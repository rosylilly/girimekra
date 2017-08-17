# frozen_string_literal: true

class << Rails.application
  def redis_configure
    @redis_configure ||= YAML.safe_load(
      ERB.new(File.read(Rails.root.join('config', 'redis.yml'))).result,
      [],
      [],
      true
    )[Rails.env].deep_symbolize_keys
  end

  def redis
    @redis ||= ConnectionPool.new(redis_configure[:pool]) do
      Redis.new(redis_configure[:connection])
    end
  end
end
