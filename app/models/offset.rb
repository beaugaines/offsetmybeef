class Offset < ActiveRecord::Base
  has_many :sales

  validates :price,
    { numericality: { greater_than: 49, message: "must be at least 50 cents"} }
end
