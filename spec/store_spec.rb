require('spec_helper')

describe Store do
  it { should have_and_belong_to_many(:shoes) }

  it { should validate_presence_of(:name) }

  it { should validate_presence_of(:city) }

  describe('#upcase_first_letter') do
    it ('should upcase the first letter of name on save') do
      test_store = Store.create(:name => 'portland', :city => 'pdx', :street => '300 SW 4th St', :state => 'OR')
        expect(test_store.name()).to(eq('Portland'))
    end
  end
end
