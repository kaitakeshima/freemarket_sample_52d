# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lady = Category.create(:name => "レディース")
mens = Category.create(:name => "メンズ")
lady_tops = lady.children.create(:name => "ジャケット/アウター")
mens_leg = mens.children.create(:name => "レッグウェア")
lady_tops.children.create([{:name => "Tシャツ(半袖/袖なし)"}, {:name => "Tシャツ/カットソー(七分/長袖)"}])
mens_socks = mens_leg.children.create(:name => "靴下")