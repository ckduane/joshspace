class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_list(folder)
    client = DropboxApi::Client.new(ENV["DROPBOX_OAUTH_BEARER"])
    result = client.list_shared_links
  end
end
