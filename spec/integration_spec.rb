require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new store', {:type => :feature}) do
  it('allows a user to add a new store') do
    visit('/')
    click_link('View Stores')
    click_link('Add Store')
    fill_in('store-name', :with =>'Daves Shoes')
    fill_in('store-street', :with =>'555 5th St')
    fill_in('store-city', :with =>'Portland')
    fill_in('store-state', :with =>'OR')
    click_button('Add Store')
    expect(page).to have_content('Daves Shoes')
  end
end

describe('adding a new shoe', {:type => :feature}) do
  it('allows a user to add a new shoe') do
    visit('/')
    click_link('View Shoes')
    click_link('Add Shoe')
    fill_in('shoe-name', :with =>'Dimas')
    fill_in('shoe-brand', :with =>'Chrome')
    fill_in('shoe-style', :with =>'Sneaker')
    fill_in('shoe-price', :with =>'50')
    fill_in('shoe-description', :with =>'Slip-on sneaks for the city.')
    click_button('Add Shoe')
    click_link('View')
    expect(page).to have_content('Dimas')
  end
end

describe('adding a new shoe', {:type => :feature}) do
  it('allows a user to add a new shoe') do
    visit('/')
    click_link('View Shoes')
    click_link('Add Shoe')
    fill_in('shoe-name', :with =>'Dimas')
    fill_in('shoe-brand', :with =>'Chrome')
    fill_in('shoe-style', :with =>'Sneaker')
    fill_in('shoe-price', :with =>'50')
    fill_in('shoe-description', :with =>'Slip-on sneaks for the city.')
    click_button('Add Shoe')
    visit('/')
    click_link('View Stores')
    click_link('Add Store')
    fill_in('store-name', :with =>'Daves Shoes')
    fill_in('store-street', :with =>'555 5th St')
    fill_in('store-city', :with =>'Portland')
    fill_in('store-state', :with =>'OR')
    click_button('Add Store')
    click_link('View Store')
    click_link('Add Shoes')
    check('Dimas')
    click_button('Add Shoes')
    expect(page).to have_content('Dimas')
  end
end

describe('adding a new store', {:type => :feature}) do
  it('allows a user to add a new store') do
    visit('/')
    click_link('View Stores')
    click_link('Add Store')
    fill_in('store-name', :with =>'Daves Shoes')
    fill_in('store-street', :with =>'555 5th St')
    fill_in('store-city', :with =>'Portland')
    fill_in('store-state', :with =>'OR')
    click_button('Add Store')
    click_link('View Store')
    expect(page).to have_content('Shoe')
  end
end
