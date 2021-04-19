class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :check_application_token

  def check_application_token
    return true if request.headers['X-Application-token'] == ENV['APPLICATION_TOKEN']
    render json: {error: 'Invalid X-Application-token. Please specify a valid token on header' }
  end
  
end
