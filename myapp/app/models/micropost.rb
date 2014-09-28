class Micropost < ActiveRecord::Base
belongs_to :user #it means micropost belongs to the user
validates :content,  :length =>{ :maximum =>140}

end

