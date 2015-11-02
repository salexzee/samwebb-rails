module ArticlesHelper

	# Formats the date for articles
	def format_time(datetime)
		datetime.strftime("%b %d, %Y")
	end

end
