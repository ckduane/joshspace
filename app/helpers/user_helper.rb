module UserHelper
	  def is_masc?
	  	current_user == User.find_by_email('masc4mascbandemail@gmail.com')
	  end
end
