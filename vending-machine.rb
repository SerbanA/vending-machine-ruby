products = {
    "001" => { name: 'Coca-Cola', price: 4.0, quantity: 10 },
    "002" => { name: 'Sprite',    price: 6.0, quantity: 10 },
    "003" => { name: 'Coffee',    price: 5.0, quantity: 10 },
    "004" => { name: 'Tea',       price: 5.5, quantity: 10 }
}
class VendingMachine  

 def initialize(products, code, money)    
   @code = code
   @money = money
   @product = products
 end

 def get_info(products, code, money) 
    product = products[code]
    puts "Code: #{@code}, Money: #{@money}, and Product: #{product[:name]}, and Quantity: #{product[:quantity]}"  
    product[:quantity] -= 1
   
 end
end

code = "001"
money = 5
my_purchase = VendingMachine.new(products, code, money)
my_purchase.get_info(products, code, money)