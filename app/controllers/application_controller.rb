class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_list(folder)
    client = DropboxApi::Client.new
    result = client.list_folder(folder)
  end
end
