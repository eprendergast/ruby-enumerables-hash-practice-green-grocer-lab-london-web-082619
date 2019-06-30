cart = {
  "PEANUT BUTTER" => {:price => 2.40, :clearance => true,  :count => 2},
  "KALE"         => {:price => 3.00, :clearance => false, :count => 3},
  "SOY MILK"     => {:price => 3.60, :clearance => true,  :count => 1}
}

#Create a checkout method that calculates the total cost of the consolidated cart
#It consolidates the cart, applies coupons, and applies discounts. Then, it totals the cost of the entire cart,
#accounting for each item and their prices, and returns this value.
#if, after all coupons and discounts, the cart's total is over $100, the customer gets an additional 10% off. Apply this discount when appropriate.
def checkout(cart, coupons)
  #Consolidate cart...
  consolidated_cart = consolidate_cart(cart)
  # Apply coupons...
  coupons_applied = apply_coupons(consolidated_cart, coupons)
  #Apply clearance...
  final_cart = apply_clearance(coupons_applied)
  #Total the cost of the cart...
  cart_total = 0.00
  cart.each do |item, attributes|
    cart_total = cart_total + (attributes[:count] * attributes[:price])
  end
  #If the cart total is > 100...
  if cart_total > 100
    cart_total *= 0.9
  end
  cart_total
end