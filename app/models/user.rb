# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :mastodon_server

  validates :uid, presence: true, uniqueness: { scope: :mastodon_server_id, allow_blank: true }
  validates :nickname, presence: true
  validates :bearer_token, presence: true

  def self.create_by_omniauth(auth)
    domain = auth.uid.sub(%r{\A.*@}, '')
    server = MastodonServer.find_by!(domain: domain)

    user = find_or_initialize_by(uid: auth.extra.raw_info.id, nickname: auth.info.nickname, mastodon_server_id: server.id)
    user.update!(bearer_token: auth.credentials.token)

    user
  end

  def rest_client
    @rest_client ||= Mastodon::REST::Client.new(base_url: "https://#{mastodon_server.domain}", bearer_token: bearer_token)
  end
end
