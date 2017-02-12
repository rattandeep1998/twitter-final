class User < ActiveRecord::Base
   has_many :tweets
   has_many :likes
   has_many :follower_mappings, class_name: 'FollowMapping', foreign_key: 'followee_id'
   has_many :followee_mappings, class_name: 'FollowMapping', foreign_key: 'follower_id'
   has_many :followers, through: :follower_mappings
   has_many :followees, through: :followee_mappings


# def followers
#    	fms = follow_mappings
#    	followers = []
#    	follow_mappings.each do |fm|
#    		followers << fm.follower
#    	end
#    	followers
#    end


#    def follower_mappings
#    	FollowMapping.where(followee_id: self.id)
#    end
end
