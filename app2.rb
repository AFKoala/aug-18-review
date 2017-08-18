require "sinatra"

get '/' do
  erb :sandwich_parts
end

post '/build' do
  parts = params[:parts]
  erb :complete, :locals=>{:parts=>parts}
end

get '/correct' do
    parts = params[:parts]
    toppings = params[:toppings]
    erb :results, :locals=>{:parts=>parts, :toppings=>toppings}
  end