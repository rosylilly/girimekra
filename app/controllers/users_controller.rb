# frozen_string_literal: true

class UsersController < ApplicationController
  DOMAIN_REGEXP = %r{\A(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]{1,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}\z}i

  def new; end

  def start
    domain = params[:domain]

    if available_domain?(domain)
      opts = { identifier: "@#{domain}" }
      redirect_to "/auth/mastodon?#{opts.to_param}"
    else
      render :new, locals: { error: true }
    end
  end

  def create
    user = User.create_by_omniauth(auth_hash)
    session[:user_id] = user.id

    redirect_to new_operation_path
  end

  protected

  def available_domain?(domain)
    domain.match(DOMAIN_REGEXP) && (MastodonServer.where(domain: domain).exists? || ping_server(domain))
  end

  def ping_server(domain)
    resp = Net::HTTP.get_response(URI("https://#{domain}/api/v1/instance"))
    Rails.logger.info(resp)

    resp.code === '200'
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end
