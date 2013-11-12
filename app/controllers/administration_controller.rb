class AdministrationController < ApplicationController

  layout 'administration'

  USER, PASSWORD = 'qwe', 'qwe'

  before_filter :authenticate

  private

  def authenticate
    authenticate_or_request_with_http_basic do |user, password|
      user == USER && password == PASSWORD
    end
  end

end




