module ArticlesHelper
	def cts_blogs
		[["5 Amazing Websites", "http://codingtestsite.com/blogs/5-amazing-websites.php", "Nov 15, 2014"], ["Show and Hide using jQuery", "http://codingtestsite.com/blogs/hide-show-text.php", "Nov 1, 2014"]]
	end

	def format_time(datetime)
		datetime.strftime("%b %d, %Y")
	end
end
