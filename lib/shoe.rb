class Shoe < ActiveRecord::Base
  has_and_belongs_to_many :stores

  validates :name, presence: true

  before_save(:upcase_first_letter)

private

  def upcase_first_letter
    capitalized_name = []
    capitalized_brand = []
    self.name().split(' ').each() do |each|
      capitalized_name.push(each.capitalize())
    end
    self.name=(capitalized_name.join(' '))

    self.brand().split(' ').each() do |each|
      capitalized_brand.push(each.capitalize())
    end
    self.brand=(capitalized_brand.join(' '))
  end
end
