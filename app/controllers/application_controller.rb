class ApplicationController < ActionController::Base
  before_action :authorized
  include SessionsHelper
end
