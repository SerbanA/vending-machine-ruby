require_relative 'vending-machine'
require_relative 'menu'
products = {
    "001" => { name: 'Coca-Cola', price: 4.0, quantity: 10 },
    "002" => { name: 'Sprite',    price: 6.0, quantity: 10 },
    "003" => { name: 'Coffee',    price: 5.0, quantity: 10 },
    "004" => { name: 'Tea',       price: 5.5, quantity: 10 }
}
credit = 0
exit = 0
code = "0"
v = VendingMachine.new(products)

while (exit == 0) do
    show_main_menu(products, credit, code)
    option = gets.chomp
    case option
        when "1"
          inserting_money_menu(credit, code)
          credit = v.inserting_money(credit, code)
        when "2"
          product_code_menu(products, credit, code) 
          code = v.product_code_processing(products)
        when "3"
         puts "The confirmation of the order,displaying the order, total ammount to pay,option to cancel the order"
        when "4"
         puts "Option to replenish stock,should a certain key be provided"
        when "5" 
          puts "option to check ammount of cash in the machine should a key be provided"
        when "6"
            exit = 1
        else
          puts "Not a valid option"
    end
end



