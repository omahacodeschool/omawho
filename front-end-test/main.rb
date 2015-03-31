require "sinatra"

get "/" do
  erb :test1, :layout => :'layout1'
end
