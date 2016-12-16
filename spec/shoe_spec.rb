require('spec_helper')

describe Shoe do
  before do
    @new_shoe = Shoe.create(:name => 'Dima Sneaker', :brand => 'Chrome', :description => 'Slip-on sneaks for the city.', :style => 'Sneaker', :cost => 80)
    @new_shoe_2 = Shoe.create(:name => 'Storm Bike Shoe', :brand => 'Chrome', :description => 'Bike shoe for all weather.', :style => 'Sneaker', :cost => 90)
    @new_store = Store.create(:name => 'PDX', :city => 'Portland', :street => '300 SW 4th St', :state => 'OR')
  end

  describe('#recipes') do
    it('returns a list of ingredients in a recipes with this ingredient') do
      @new_shoe.update({:store_ids => [@new_store.id()]})
      @new_shoe_2.update({:store_ids => [@new_store.id()]})
      expect(@new_store.shoes()).to(eq([@new_shoe, @new_shoe_2]))
    end
  end

  it { should have_and_belong_to_many(:stores) }

  it { should validate_presence_of(:name) }

  describe('#upcase_first_letter') do
    it ('should upcase the first letter of name on save') do
      test_shoe = Shoe.create(:name => 'dima sneaker', :brand => 'chrome industries', :description => 'Slip-on sneaks for the city.', :style => 'Sneaker', :cost => 80)
        expect(test_shoe.name()).to(eq('Dima Sneaker'))
        expect(test_shoe.brand()).to(eq('Chrome Industries'))
    end
  end
end
