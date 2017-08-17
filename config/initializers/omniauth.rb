# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :mastodon, scope: 'read write follow', credentials: lambda { |domain, callback_url|
    Rails.logger.info "Requested credentials for #{domain} with callback URL #{callback_url}"

    server = MastodonServer.by(domain, callback_url: callback_url)

    [server.client_id, server.client_secret]
  }
end
