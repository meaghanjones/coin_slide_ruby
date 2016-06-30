require('sinatra')
require('sinatra/reloader')
require('./lib/coin_slide.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_slide') do
  form_value = params.fetch('change')
  coin_array = form_value.coin_slide()
  @quarters = coin_array[0]
  @dimes = coin_array[1]
  @nickles = coin_array[2]
  @pennies = coin_array[3]
  erb(:coin_slide)
end
