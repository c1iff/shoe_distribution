class Shoe < ActiveRecord::Base
  has_and_belongs_to_many :stores

  validates :name, presence: true

  before_save(:upcase_first_letter)

private

  def upcase_first_letter
    capitalized_name = []
    self.name().split(' ').each() do |each|
      capitalized_name.push(each.capitalize())
    end
    self.name=(capitalized_name.join(' '))
  end
end
