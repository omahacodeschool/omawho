class Category < ActiveRecord::Base
  has_and_belongs_to_many :users

  def short_category_name
    name.parameterize
  end

  def self.seed
    User.create(first_name: "George", last_name: "Foreman", username: "Griller", email: "foreman@gmail.com", password: 'password', password_confirmation: 'password', salt: "dhskadjhskjh")
      User.create(first_name: "Tom", last_name: "Jones", username: "TJ", email: "slkjslkfjs@gmail.com", password: 'password', password_confirmation: 'password', salt: "snjdus87y")
      User.create(first_name: "Terry", last_name: "Jacks", username: "TerryJ", email: "dfsfsdfs@gmail.com", password: 'password', password_confirmation: 'password', salt: "sbd7y8s")
      User.create(first_name: "Kendra", last_name: "Loorie", username: "KendraL", email: "sfsfsfsd@gmail.com", password: 'password', password_confirmation: 'password', salt: "bd8st7yduis")
      User.create(first_name: "Jim", last_name: "Jokie", username: "JimJ", email: "eywowhh@gmail.com", password: 'password', password_confirmation: 'password', salt: "snbduisyu")
      User.create(first_name: "Pam", last_name: "Krelis", username: "Pamcakes", email: "skfkls@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdbisuy798dsui")
      User.create(first_name: "Zeke", last_name: "Mert", username: "ZekeM", email: "ijlksjdio@gmail.com", password: 'password', password_confirmation: 'password', salt: "bhsgu")
      User.create(first_name: "Paul", last_name: "Werlet", username: "PaulW", email: "kanlskj@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdbsgd87y")
      User.create(first_name: "Ringo", last_name: "Starr", username: "RingoSta", email: "skjdlkjslk@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdbsgiudgisu")
      User.create(first_name: "Starbuck", last_name: "Vandelay", username: "StarbuckV", email: "ndhuwho@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdguygusg")
      User.create(first_name: "Apollo", last_name: "Trent", username: "ApolloT", email: "jdwjoil@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdbiushiu")
      User.create(first_name: "Prince", last_name: "King", username: "PrintK", email: "ieuoisodi@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdg7s86")
      User.create(first_name: "Barry", last_name: "Elvis", username: "BarryK", email: "nskjndsioi@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdhg8s7ygu")
      User.create(first_name: "Fred", last_name: "Kong", username: "Fritz", email: "jiwjncuwwk@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdb78ty87")
      User.create(first_name: "Lulu", last_name: "Crool", username: "Lulululu", email: "kjelknn8@gmail.com", password: 'password', password_confirmation: 'password', salt: "sdhg863hhdg")
      User.create(first_name: "Noobi", last_name: "Queen", username: "NoobiQ", email: "skjnklj8@gmail.com", password: 'password', password_confirmation: 'password', salt: "piueywhh7")
      User.create(first_name: "Raul", last_name: "Branson", username: "RaulB", email: "poosjidsjk@gmail.com", password: 'password', password_confirmation: 'password', salt: "sudy77yuhu")

      create(name: "Graphic Design")
      create(name: "Photography")
      create(name: "Writing")
      create(name: "Web & Software")
      create(name: "Music/Film/Art")
      create(name: "Fashion")
      create(name: "Architecture & Interior Design")
      create(name: "Venture Capital")
      create(name: "Community Connector")
      create(name: "Non-Profit")
      create(name: "Sales & Marketing")
  end

end
