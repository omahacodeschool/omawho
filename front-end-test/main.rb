require "sinatra"

get "/" do
  erb :test1, :layout => :'layout1'
end

get "/new" do
  erb :new_user, :layout => :'layout1'
<<<<<<< HEAD
end
=======
end
>>>>>>> 11f4c1ccd5899e3b269263fe914082c75272b275
