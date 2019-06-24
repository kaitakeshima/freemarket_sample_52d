# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
first_user = User.create(:nickname => "yosshi", :family_name => "吉田", :first_name => "優作", :family_name_kana => "ヨシダ", :first_name_kana => "ユウサク",:birthday => "1", :city => "3", :address => "2", :email => "123456789@mail.com", :encrypted_password => "$2a$11$lbE4bAOirHSzXERJErDYtuqM0ynx841f27opZheeBqa2MLtohNG96"  )
first_item =  Item.create(:name => "犬", :discription => "中国製",:condition => "2",:delivery_fee => "1", :delivery_method => "1", :delivery_days => "1", :price => "9970", :size => "2", :user_id => "1", :brand => "デ◯ズニー", :prefecture => "1", :image => "m99673450604_1.jpg" )