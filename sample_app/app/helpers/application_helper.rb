module ApplicationHelper

#Return a title on a per page
	 def title
	 	base_title ="RoR Sample"
	 	if @title.nil?
	 		base_title
	 	else
	 		"Ruby On Rails | #{@title}"
	 	end
	 end
end
