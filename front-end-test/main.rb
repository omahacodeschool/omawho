require "sinatra"

get "/" do
  erb :test1, :layout => :'layout1'
end

get "/new" do
  erb :new_user, :layout => :'layout1'
end

get "/edit" do
  erb :edit_user, :layout => :'layout1'
end

get "/profile" do
  erb :profile, :layout => :'layout1'
end

get "/login" do
  erb :login, :layout => :'layout1'
end

get "/forgot" do
  erb :forgot_password, :layout => :'layout1'
end

get "/sorcery" do
  erb :new_password, :layout => :'layout1'
end