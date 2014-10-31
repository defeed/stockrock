# Stock model
class Stock < ActiveRecord::Base
  validates :stock_name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 1 }
  validates :quantity, numericality: { only_integer: true, greater_than: 1 }
  validates :percentage, numericality: { greater_than: 1 }
  validates :years, numericality: { only_integer: true, greater_than: 1 }
end
