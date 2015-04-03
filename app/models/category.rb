class Category < ActiveRecord::Base
  has_many :users

  def short_category_name
    name.parameterize
  end

  def self.seed
    User.create(first_name: "George", last_name: "Foreman", username: "Griller", category_id: 2, email: "foreman@gmail.com", crypted_password: "ahfushjas", salt: "dhskadjhskjh")
      User.create(first_name: "Tom", last_name: "Jones", username: "TJ", category_id: 1, email: "slkjslkfjs@gmail.com", crypted_password: "hdjkshbk", salt: "snjdus87y")
      User.create(first_name: "Terry", last_name: "Jacks", username: "TerryJ", category_id: 3, email: "dfsfsdfs@gmail.com", crypted_password: "whujsh78", salt: "sbd7y8s")
      User.create(first_name: "Kendra", last_name: "Loorie", username: "KendraL", category_id: 1, email: "sfsfsfsd@gmail.com", crypted_password: "smndkjsj", salt: "bd8st7yduis")
      User.create(first_name: "Jim", last_name: "Jokie", username: "JimJ", category_id: 1, email: "eywowhh@gmail.com", crypted_password: "ncnhush", salt: "snbduisyu")
      User.create(first_name: "Pam", last_name: "Krelis", username: "Pamcakes", category_id: 3, email: "skfkls@gmail.com", crypted_password: "wuhdjkshzk", salt: "sdbisuy798dsui")
      User.create(first_name: "Zeke", last_name: "Mert", username: "ZekeM", category_id: 2, email: "ijlksjdio@gmail.com", crypted_password: "38yhjh7", salt: "bhsgu")
      User.create(first_name: "Paul", last_name: "Werlet", username: "PaulW", category_id: 2, email: "kanlskj@gmail.com", crypted_password: "sbdh7s87", salt: "sdbsgd87y")
      User.create(first_name: "Ringo", last_name: "Starr", username: "RingoSta", category_id: 4, email: "skjdlkjslk@gmail.com", crypted_password: "sudywiu7", salt: "sdbsgiudgisu")
      User.create(first_name: "Starbuck", last_name: "Vandelay", username: "StarbuckV", category_id: 2, email: "ndhuwho@gmail.com", crypted_password: "sndbiuuu", salt: "sdguygusg")
      User.create(first_name: "Apollo", last_name: "Trent", username: "ApolloT", category_id: 2, email: "jdwjoil@gmail.com", crypted_password: "38yhushd7", salt: "sdbiushiu")
      User.create(first_name: "Prince", last_name: "King", username: "PrintK", category_id: 1, email: "ieuoisodi@gmail.com", crypted_password: "sndbiusy", salt: "sdg7s86")
      User.create(first_name: "Barry", last_name: "Elvis", username: "BarryK", category_id: 3, email: "nskjndsioi@gmail.com", crypted_password: "dhsy8u98", salt: "sdhg8s7ygu")
      User.create(first_name: "Fred", last_name: "Kong", username: "Fritz", category_id: 3, email: "jiwjncuwwk@gmail.com", crypted_password: "sudh987y", salt: "sdb78ty87")
      User.create(first_name: "Lulu", last_name: "Crool", username: "Lulululu", category_id: 5, email: "kjelknn8@gmail.com", crypted_password: "suhds7y7y", salt: "sdhg863hhdg")
      User.create(first_name: "Noobi", last_name: "Queen", username: "NoobiQ", category_id: 3, email: "skjnklj8@gmail.com", crypted_password: "328yhjsbdu8", salt: "piueywhh7")
      User.create(first_name: "Raul", last_name: "Branson", username: "RaulB", category_id:2, email: "poosjidsjk@gmail.com", crypted_password: "njhiusby7", salt: "sudy77yuhu")

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
