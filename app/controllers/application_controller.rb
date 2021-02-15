class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller? # a Devise helper method
end
