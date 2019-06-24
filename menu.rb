def show_main_menu(products, credit, code)
    puts " CREDIT: #{credit}    CODE:#{code}"
    puts " Code : Product    Price   Quantity"
    puts "------------------------------------"
    products.each {|code, value|  
    puts " #{code.ljust(5)}: #{value[:name].ljust(12)}#{value[:price].to_s.ljust(9)} #{value[:quantity]}" }
    puts "1.Insert money"
    puts "2.Type product code"
    puts "3.Finalize order"
    puts "4.Refresh stock"
    puts "5.Check money"
    puts "6.Exit/Shut Down"
end

def inserting_money_menu(credit, code)
    puts "CREDIT: #{credit}   CODE:#{code}"
    puts "Available currency : RON"
    puts "Valid bills and coins:"
    puts "1. 50 Bani" 
    puts "2. 1 Leu" 
    puts "3. 5 Lei"
    puts "4. 10 Lei"
    puts "5. Back"
end

def product_code_menu(products, credit, code)
    puts "CREDIT: #{credit}   CODE:#{code}"
    products.each {|code, value|  
    puts " #{code.ljust(5)}: #{value[:name].ljust(12)}#{value[:price].to_s.ljust(9)} #{value[:quantity]}" }
    puts "1.Type Code"
    puts "2.Exit"
end