namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    
    make_users
    make_slotposts
    make_microposts
    make_relationships
    
  end
end

def make_users
  admin = User.create!(name:     "Example User",
                       email:    "example@railstutorial.org",
                       password: "foobar",
                       password_confirmation: "foobar",
                       admin: true)
  9.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_microposts
  users = User.all(limit: 6)
  5.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_slotposts
  users= User.all(limit:6)
  10.times do
    ground_name = Faker::Name.name
    sport =  Faker::Name.name
    vacancy= 10
    date = Faker::Business.credit_card_expiry_date #=> <Date: 2015-11-11 ((2457338j,0s,0n),+0s,2299161j)>
    users.each { |user| user.slotposts.create!(ground_name: ground_name,sport: sport, vacancy: vacancy, date: date) }
  end
end


def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end

