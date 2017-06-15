class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from NoMethodError, with: :method_error

  private
  def record_not_found
    redirect_to root_url, notice: "BRO. THIS DOESN'T EXIST."
  end

  def method_error
    redirect_to root_url, notice: "Error. Must sign in if not working."
  end
end
