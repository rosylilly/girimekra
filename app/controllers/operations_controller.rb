# frozen_string_literal: true

class OperationsController < ApplicationController
  before_action :check_login, only: %i[new create]

  def root; end

  def new; end

  def create
    CleanStatusJob.perform_later(user.id)

    render :new, locals: { running: true }
  end

  private

  def check_login
    redirect_to login_path if user.blank?
  end

  def user
    @user ||= User.find_by(id: session[:user_id])
  end
  helper_method :user
end
