require ('sinatra')
require ('sinatra/reloader')
also_reload('./lib/tamagotchi')
require ("./lib/tamagotchi")

get('/') do
  erb(:new)
end

get('/index') do
  current = Tamagotchi.new(params.fetch("new_name"))
  current.save
  @name = Tamagotchi.current[0].name
  @food_level = Tamagotchi.current[0].food_level
  @sleep_level = Tamagotchi.current[0].sleep_level
  @activity_level = Tamagotchi.current[0].activity_level
  erb(:index)
end

get ('/action') do
  erb(:action)
end
