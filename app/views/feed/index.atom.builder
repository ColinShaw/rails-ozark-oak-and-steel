atom_feed do |af|

	af.title("Ozark Oak and Steel News Feed")
	af.updated(@feed[0].created_at) if @feed.length > 0

	@feed.each do |f|
  		af.entry(f) do |entry|
    		entry.title(f.title)
    		entry.content(f.content, type: 'text/html')
    		entry.author do |author|
      			author.name("Ozark Oak and Steel")
    		end
  		end
	end
	
end