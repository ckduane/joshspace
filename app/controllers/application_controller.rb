require 'net/https'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  RECAPTCHA_MINIMUM_SCORE = 0.5

  def get_list(folder)
    client = DropboxApi::Client.new(ENV["DROPBOX_OAUTH_BEARER"])
    result = client.list_shared_links
  end

  def verify_recaptcha?(token, recaptcha_action)
  	secret_key = ENV["RECAPTCHA_PRIVATE_KEY"]
  	uri = URI.parse("https://www.google.com/recaptcha/api/siteverify?secret=#{secret_key}&response=#{token}")
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)
    json['success'] && json['score'] > RECAPTCHA_MINIMUM_SCORE && json['action'] == recaptcha_action
  end
end
