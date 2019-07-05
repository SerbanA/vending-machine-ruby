require_relative 'vending-machine'
require_relative 'menu'

def main
  storage = { 
    0.5 => 10,
    1 => 10,
    5 => 10,
    10 => 10
  }

  products = {
      "001" => { name: 'Coca-Cola', price: 4.0, quantity: 5 },
      "002" => { name: 'Sprite',    price: 6.0, quantity: 8 },
      "003" => { name: 'Coffee',    price: 5.0, quantity: 0 },
      "004" => { name: 'Tea',       price: 5.5, quantity: 10 }
  }

  credit = 0
  exit_program = 0
  code = " "
  v = VendingMachine.new(products, credit, code, storage)
  
  while (exit_program == 0) do
    show_main_menu(v)
    option = gets.chomp
    case option
        when "1"
          inserting_money_menu(v)
          money = get_money_from_user(storage)
          v.inserting_money(money)
        when "2"
          product_code_menu(v)
          code = v.product_code_processing
        when "3"
          finalize_order_menu(v)
          v.order_processing
        when "4"
          refresh_stock(v)
        when "5"
          cash_storage_menu(v)
        when "6"
          exit_program = 1
        else
          puts "No wizard powers allowed!"
    end
  end
end

def get_money_from_user(storage)
  credit = 0
  while (credit <= 0) do
    puts "Please insert:"
    option = gets.chomp
    case option
    when "1"
      credit += 0.5
      storage[0.5] += 1 
    when "2"
      credit += 1
      storage[1] += 1
    when "3"
      credit += 5
      storage[5] += 1
    when "4"
      credit += 10
      storage[10] += 1
    when "5"
      break
    else
      puts "Invalid choice"
      credit
    end
  end
  credit
end

main