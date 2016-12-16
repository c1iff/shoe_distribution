class Store < ActiveRecord::Base
  has_and_belongs_to_many :shoes

  validates :name, presence: true
  validates :city, presence: true
  
  before_save(:upcase_first_letter)

private

  def upcase_first_letter
    self.name=(name().capitalize())
  end
end
