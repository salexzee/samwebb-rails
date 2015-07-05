module ArticlesHelper
	# Blog formats [Title, URL, Date]

	def td_blogs
		[["3 Reasons CoffeeScript is Better!","http://www.tribaldev.io/posts/3","May 10, 2015"], ["JavaScript Random Letter Generator in 6 Lines of Code","http://www.tribaldev.io/posts/2","May 1, 2015"]]
	end

	def cts_blogs
		[["5 Amazing Websites", "http://codingtestsite.com/blogs/5-amazing-websites.php", "Nov 15, 2014"], ["Show and Hide using jQuery", "http://codingtestsite.com/blogs/hide-show-text.php", "Nov 1, 2014"]]
	end

	def external_post_format(post, site_abbr)
		str = ""
		str += '<p class="index-blog-date ruby">'
		str +=  post[2]
		str += '</p>'
		str += '<p class="index-blog-title">'
		str += '<a href="'
		str += post[1]
		str += '" target="_blank">'
		str += post[0]
		str += '(' + site_abbr + ')'
		str += '</a></p><br>'
		str.html_safe
	end

	def format_time(datetime)
		datetime.strftime("%b %d, %Y")
	end
end
