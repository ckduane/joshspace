module BandHelper
	def has_comments?
		!@band.comments.empty?
	end

	def has_friends?
		!@band.friends.empty?
	end

  def has_posts?
    !@band.posts.empty?
  end
end
