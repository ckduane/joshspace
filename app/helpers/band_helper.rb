module BandHelper
	def has_comments?
		!@band.comments.empty?
	end
end
