require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @stores = Store.all()
  erb(:index)
end

get('/stores/new') do
  @stores = Store.all()
  @show = ''
  erb(:index)
end

get('/stores/:id') do
  @store = Store.find(params['id'])
  erb(:store)
end

post('/stores') do
  name = params['store-name']
  street = params['store-street']
  city = params['store-city']
  state = params['store-state']
  if Store.create(:name => name, :city => city, :street => street, :state => state)
    redirect('/')
  else
    erb(:error)
  end
end

get('/shoes/:id/new') do
  @store = Store.find(params['id'])
  @show = ''
  erb(:store)
end

post('/shoes/:id') do
  @store = Store.find(params['id'])
  name = params['shoe-name']
  brand = params['shoe-brand']
  style = params['shoe-style']
  price = params['shoe-price']
  description = params['shoe-description']
  if @store.shoes.create(:name => name, :brand => brand, :description => description, :style => style, :cost => price)
    redirect("/stores/#{@store.id()}")
  else
    erb(:error)
  end
end









#********************************database shortcuts***********************

get('/seed') do
  10.times do |i|
    Store.create(:name => "name#{i}", :city => "city#{i}", :street => "street#{i}", :state => "state#{i}")
    Shoe.create(:name => "name#{i}", :brand => "brand#{i}", :description => "description#{i}", :style => "style#{i}", :cost => i)
  end
  redirect ('/')
end

get('/clear') do
  Shoe.all.each() do |shoe|
    shoe.destroy()
  end

  Store.all.each() do |store|
    store.destroy()
  end
  redirect ('/')
end
