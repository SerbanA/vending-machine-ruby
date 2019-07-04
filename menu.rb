def show_main_menu(v)
  puts " CREDIT: #{v.credit}    CODE:#{v.code}"
  puts " Code : Product    Price   Quantity"
  puts "------------------------------------"  
  v.products.each {|code, value|
  puts " #{code.ljust(5)}: #{value[:name].ljust(12)}#{value[:price].to_s.ljust(9)} #{value[:quantity]}" }
  
  puts "1.Insert money"
  puts "2.Type product code"
  puts "3.Finalize order"
  puts "4.Refresh stock"
  puts "5.Check money"
  puts "6.Exit/Shut Down"
end

def inserting_money_menu(v)
  puts "CREDIT: #{v.credit}   CODE:#{v.code}"
  puts "Available currency : RON"
  puts "Valid bills and coins:"
  puts "1. 50 Bani"
  puts "2. 1 Leu"
  puts "3. 5 Lei"
  puts "4. 10 Lei"
  puts "5. Back"
end

def product_code_menu(v)
  puts "CREDIT: #{v.credit}   CODE:#{v.code}"
  v.products.each {|code, value|
  puts " #{code.ljust(5)}: #{value[:name].ljust(12)}#{value[:price].to_s.ljust(9)} #{value[:quantity]}" }
  puts "1.Type Code"
  puts "2.Exit"
end

def finalize_order
  puts "The confirmation of the order,displaying the order, total ammount to pay,option to cancel the order"
end

def refresh_stock
  puts "Option to replenish stock,should a certain key be provided"
end

def cash_storage_menu(v)
  total_cash = 0
  v.storage.each {|value, ammount|
   total_cash = total_cash + ( value * ammount ) }
 puts "Total ammount of cash: #{total_cash}"
end

def option_not_valid
  puts "Not a valid option"
end