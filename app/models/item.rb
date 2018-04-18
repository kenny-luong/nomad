class Item < ApplicationRecord
  belongs_to :order
  validates :name, presence: true
  validates :price, presence: true

  def format_price
    @price = self.price.split(".")
    @cents = @price[1] || ""
  
    @cents += "0" until @cents.length == 2
    
    @price = @price[0] + "." + @cents 
    self.price = @price
  end
end

