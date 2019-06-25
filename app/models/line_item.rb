class LineItem < ActiveRecord::Base
  belongs_to :letter

  def full_price
    unit_price * quantity
  end
end
