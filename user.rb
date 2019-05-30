require_relative 'vending_machine'

products = {
    "001" => { name: 'Coca-Cola', price: 4.0  },
    "002" => { name: 'Sprite   ',    price: 6.0  },
    "003" => { name: 'Coffee   ',    price: 5.0  },
    "004" => { name: 'Tea      ',       price: 5.5  }
}

def insert_money
    printf "Credit :"
    cash = gets.to_f
    if cash < 0
        puts "Money error.Please reinsert."
        cash = 0
        insert_money
    elsif cash < 4
        puts "The minimum ammount of money to purchase a product is 4.0 RON"
        cash = 0
        insert_money
    end
    cash
end

def type_code        
    printf "Code:"
    code = gets.chomp
    code
end

def take_change
    puts "You have taken the change."
    change = 0  
    releasing_product
end

def take_product
    res = gets.chomp
    case res
     when "y"
      product_validate_yes
     when "n" 
      product_validate_no
     end
end


v = VendingMachine.new(products)
v.on_standby
cash = insert_money
code = type_code
v.verifying_money(code,cash)  
