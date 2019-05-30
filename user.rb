require_relative 'vending_machine'

products = {
    "001" => { name: 'Coca-Cola', price: 4.0  },
    "002" => { name: 'Sprite   ',    price: 6.0  },
    "003" => { name: 'Coffee   ',    price: 5.0  },
    "004" => { name: 'Tea      ',       price: 5.5  }
}
def insert_money
    cash = gets.to_f
end

def type_code        
    code = gets.chomp
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

