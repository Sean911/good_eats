class Restaurant < ActiveRecord::Base
  CATEGORIES = [
    "Fast Food",
    "Italian",
    "French",
    "Japanese"
  ]
  has_many :reviews

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true,
                       length: { is: 5 }


  validates :category,
    inclusion: { in: CATEGORIES, allow_blank: true }
end
