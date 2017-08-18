require "sinatra"

get '/' do
  erb :sandwich_parts
end

post '/build' do
  puts "MADE IT TO POST /build"
  parts = params[:parts].to_s
  puts '#{parts} here'
  redirect '/complete?parts=' + parts
end

get '/complete' do
  puts 'MADE IT TO GET /complete'
  parts = params[:parts].split
  erb :complete, :locals=>{:parts=>parts}
end

get '/correct' do
  parts = params[:parts]
  toppings = params[:toppings]
  erb :results, :locals=>{:toppings=>toppings}
end