require_relative 'vending-machine'

products = {
    "001" => { name: 'Coca-Cola', price: 4.0, quantity: 10 },
    "002" => { name: 'Sprite',    price: 6.0, quantity: 10 },
    "003" => { name: 'Coffee',    price: 5.0, quantity: 10 },
    "004" => { name: 'Tea',       price: 5.5, quantity: 10 }
}
credit = 0
exit = 0

def show_main_menu(products, credit)
    puts " CREDIT: #{credit}"
    puts " Code : Product    Price   Quantity"
    puts "------------------------------------"
    products.each {|code, value|  
    puts " #{code.ljust(5)}: #{value[:name].ljust(12)}#{value[:price].to_s.ljust(9)} #{value[:quantity]}" }
    puts "1.Insert money"
    puts "2.Type product code"
    puts "3.Finalize order"
    puts "4.Refresh stock"
    puts "5.Check money"
end
def inserting_money_menu(credit)
    puts "CREDIT: #{credit}"
    puts "Available currency : RON"
    puts "Valid bills and coins:"
    puts "1. 50 Bani" 
    puts "2. 1 Leu" 
    puts "3. 5 Lei"
    puts "4. 10 Lei"
    puts "5. Back"
end
v = VendingMachine.new(products)

while (exit == 0) do
    show_main_menu(products, credit)
    option = gets.chomp
    case option
        when "1"
          inserting_money_menu(credit)
          credit = v.inserting_money(credit)
        when "2"
         puts "Type the code for the product,verifies the code ,maybe multile purchases in 1,return to main menu"
        when "3"
         puts "The confirmation of the order,displaying the order, total ammount to pay,option to cancel the order"
        when "4"
         puts "Option to replenish stock,should a certain key be provided"
        when "5" 
          pus "option to check ammount of cash in the machine should a key be provided"
        else
          puts "Not a valid option"
    end
end



