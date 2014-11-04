# Stock model
class Stock < ActiveRecord::Base
  validates :stock_name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  validates :percentage, numericality: { greater_than: 0 }
  validates :years, numericality: { only_integer: true, greater_than: 0 }

  def stock_values
    period = (0..years)
    Hash[period.map { |year| [year, sprintf('%.2f', value_for_year(year))] }]
  end

  private

  def value_for_year(year)
    price * quantity * (1 + percentage / 100)**year
  end
end
