# frozen_string_literal: true

class MastodonServer < ApplicationRecord
  validates :domain, presence: true, uniqueness: { allow_blank: true }
  validates :client_id, presence: true
  validates :client_secret, presence: true

  def self.by(domain, callback_url: nil)
    find_or_create_by!(domain: domain) do |record|
      client = Mastodon::REST::Client.new(base_url: "https://#{domain}")
      app = client.create_app('Girimekra', callback_url, 'read write follow')
      record.client_id = app.client_id
      record.client_secret = app.client_secret
    end
  end
end
