cart = {
  "PEANUT BUTTER" => {:price => 3.00, :clearance => true,  :count => 2},
  "KALE" => {:price => 3.00, :clearance => false, :count => 3},
  "SOY MILK" => {:price => 4.50, :clearance => true,  :count => 1}
}

cart.each do |item, attributes|
  p attributes[:price]
end


#discount the price of every item on clearance by twenty percent
def apply_clearance(cart)
  cart.each do |item, attributes|
    if attributes[:clearance] == true
      attributes[:price] *= 0.2
      (attributes[:price]).round(2)
    else
      #do nothing
    end
  end
  cart
end
