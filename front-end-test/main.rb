require "sinatra"

get "/" do
  erb :test1, :layout => :'layout1'
end

get "/new" do
  erb :new_user, :layout => :'layout1'
end

