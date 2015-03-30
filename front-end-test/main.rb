require "sinatra"

get "/" do
  erb :test1, :layout => :'layout1'
end

get "/2" do
  erb :test1, :layout => :'layout2'
end