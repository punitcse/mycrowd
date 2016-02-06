# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.find_or_create_by!(name: 'abc', email:'abc@xyx.com')

Test.create!([{application_type: 0, url: 'abc.com', user_id: user.id},
             {application_type: 1, url: 'xyz.com', user_id: user.id},
             {application_type: 2, url: 'google.com', user_id: user.id}])
