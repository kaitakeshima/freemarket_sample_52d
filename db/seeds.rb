# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  {
    email: '123456789@mail.com', 
    encrypted_password: 'aaaaaa',
    nickname:'yoshida',
    family_name:'yoshida',
    first_name:'yusaku', 
    family_name_kana:'ヨシダ', 
    first_name_kana:'ユウサク',
    birthday: '1', 
    city: '3', 
    address: '2', 
    password:'aaaaaa'
  }
)

Item.create!(
  {
    name: 'お花',
    discription: '中国製',
    condition: 1,
    delivery_fee: 1, 
    delivery_method: 1, 
    delivery_days: 1, 
    price: 9970, 
    size: 1, 
    user_id: 1, 
    brand: 'デ◯ズニー', 
    prefecture: 1, 
    image: open("#{Rails.root}/db/dummy_img/1.jpg"),
    status: 1,
    category: 1
  }
)