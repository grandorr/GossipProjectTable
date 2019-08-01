City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
Jointab.destroy_all
10.times do
  n = City.create(name: Faker::Address.city,zip_code: rand(10000..20000))
  c = User.create(city: n, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, description: Faker::Quote.yoda,email: Faker::Internet.email,age: rand(8..99))
c1 = User.create(city: n, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, description: Faker::Quote.yoda,email: Faker::Internet.email,age: rand(8..99))
  2.times do
    g = Gossip.create(title: Faker::Game.title, content:  Faker::Quote.yoda, user: c )
    t = Tag.create(title: "#"+Faker::CryptoCoin.coin_name)
    t1 = Tag.create(title: "#"+Faker::CryptoCoin.coin_name)
    Jointab.create(gossip: g,tag: t)
    Jointab.create(gossip: g,tag: t1)
    PrivateMessage.create(content: Faker::Quote.yoda, sender: c, recipient: c1 )
  end
end
