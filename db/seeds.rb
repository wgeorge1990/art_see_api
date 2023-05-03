# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

will = User.create(username: "tester_will")
sydney = User.create(username: "tester_sydney")
Follow.create(follower_id: 1, followed_user_id: 2)
Follow.create(follower_id: 2, followed_user_id: 1)
Profile.create(user_id: 1)
Profile.create(user_id: 2)