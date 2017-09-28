class User < ApplicationRecord
    has_many :bytes
    
    has_many :followers, :class_name => "Relationship", :foreign_key => "user_id"
    has_many :following, :class_name => "Relationship", :foreign_key => "follower_id"
end
