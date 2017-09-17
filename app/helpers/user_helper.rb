module UserHelper
	  def is_josh?
	  	current_user == User.find_by_email('hochman.josh@gmail.com')
	  end
end
