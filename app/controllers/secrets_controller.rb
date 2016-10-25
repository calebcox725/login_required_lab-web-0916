class SecretsController < ApplicationController
  def show
    if current_user.nil?
      redirect_to login_path
    end
  end
end
