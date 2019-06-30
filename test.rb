cart = {
  "PEANUT BUTTER" => {:price => 3.00, :clearance => true,  :count => 2},
  "KALE" => {:price => 3.00, :clearance => false, :count => 3},
  "SOY MILK" => {:price => 4.50, :clearance => true,  :count => 1}
}

cart.each do |item, attributes|
  attributes.each do |key, value|
    puts value[:clearance]
  end
end


# #discount the price of every item on clearance by twenty percent
# def apply_clearance(cart)
#   cart.each do |item, attributes|
#     if item[:clearance] == true
#       item[:price] *= 0.2
#       (item[:price]).round(2)
#     else
#       #do nothing
#     end
#   end
#   cart
# end
