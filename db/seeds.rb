# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['farmer', 'pharmacist'].each do |cust|
  user  = User.find_or_create_by!(email: cust + '@example.com') do |user|
    user.password = 'cust_' + cust
    user.password_confirmation = 'cust_' + cust
    user.customer!
    user
  end
  puts 'CREATED Dummy Customer: ' << user.email
end


user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

