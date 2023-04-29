class User < ApplicationRecord
    # Returns an array of follows for the given user instance
    has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"

    # Returns an array of users who follow the user instance
    has_many :followers, through: :received_follows, source: :follower

    # Returns an array of follows a user gave to someone else
    has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"

    # Returns an array of other users who the user has followed
    has_many :followings, through: :given_follows, source: :followed_user

    # Returns the profile owned by the user
    has_one :profile, dependent: :destroy
end
