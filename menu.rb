def show_main_menu(v)
  puts " CREDIT: #{v.credit}    CODE:#{v.code}"
  puts " Code : Product    Price   Quantity"
  puts "------------------------------------"  
  v.products.each {|code, value|
  puts " #{code.ljust(5)}: #{value[:name].ljust(12)}#{value[:price].to_s.ljust(9)} #{value[:quantity]}" }
  
  puts "1.Insert money"#done
  puts "2.Type product code"#make code visible after typing
  puts "3.Finalize order"#WIP
  puts "4.Refresh stock"#done
  puts "5.Check money"#done
  puts "6.Exit/Shut Down"#done
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
end

def finalize_order
  puts "The confirmation of the order,displaying the order, total ammount to pay,option to cancel the order"
end

def refresh_stock(v)
  puts "Resupplying product stock..."
  v.products.each {|code, value|
     value[:quantity] = 10
  }
  puts "Resupplying finished!"
end

def cash_storage_menu(v)
  total_cash = 0
  v.storage.each {|value, ammount|
  puts "Number of #{value.to_s.ljust(3)} coins/banknotes : #{ammount}"
  total_cash += ( value * ammount ) }
 puts "Total ammount of cash: #{total_cash}"
end

def option_not_valid
  puts "Not a valid option"
end