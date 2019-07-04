require_relative 'vending-machine'
require_relative 'menu'

def main
  internal_money_storage = [5, 5, 5, 5]
  products = {
      "001" => { name: 'Coca-Cola', price: 4.0, quantity: 10 },
      "002" => { name: 'Sprite',    price: 6.0, quantity: 10 },
      "003" => { name: 'Coffee',    price: 5.0, quantity: 10 },
      "004" => { name: 'Tea',       price: 5.5, quantity: 10 }
  }
  credit = 0
  code = "0"
  exit_program = 0
  v = VendingMachine.new(products, credit, code, internal_money_storage)

  while (exit_program == 0) do
    show_main_menu(v)
    option = gets.chomp
    case option
        when "1"
          inserting_money_menu(v)
          money = get_money_from_user
          v.inserting_money(money)
        when "2"
          product_code_menu(v)
          code = v.product_code_processing()
        when "3"
          finalize_order
        when "4"
          refresh_stock
        when "5"
          check_money
        when "6"
          exit_program = 1
        else
          puts "blyat"
    end
  end
end

def get_money_from_user
  credit = -1
  while (credit < 0) do
    puts "Please insert:"
    option = gets.chomp
    credit = case option
    when "1"
      0.5
      internal_money_storage[0] +=1
    when "2"
      1
      internal_money_storage[1] +=1
    when "3"
      5
      internal_money_storage[2] +=1
    when "4"
      10
      internal_money_storage[3] +=1
    when "5"
      0
    else
      puts "Invalid choice"
      credit
    end
  end
  credit
end

main