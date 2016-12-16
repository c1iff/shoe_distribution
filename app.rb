require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @stores = Store.all()
  erb(:index)
end

get('/stores/:id') do
  @store = Store.find(params['id'])
  erb(:store)
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
