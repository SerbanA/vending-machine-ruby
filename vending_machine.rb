class VendingMachine
    def initialize(products)
        @products = products
    end

    def on_standby
        puts
        puts "Welcome!"
        puts "To proceed please insert the money first then type the code of your desired item from the list below."
        listing_products 
    end

    def listing_products
        puts
        puts "Code : Product        Price"
        puts "_______________________________________"
        products.each {|code, value|  puts "#{code}  : #{value[:name]}      #{value[:price]}" }
        getting_product_code
    end

    def getting_money
        printf "Credit :"
        cash = insert_money
        puts cash
        verifying_money(cash)
    end

    def verifying_money(cash)
        if cash < 0
            puts "Money error.Please reinsert."
            cash = 0
            getting_money
        elsif cash < 4
            puts "The minimum ammount of money to purchase a product is 4.0 RON"
            cash = 0
            getting_money
        end
        cash
    end

    def getting_product_code
        printf "Code:"
        code = type_code
        puts code
        verifying_code(code)
    end

    def verifying_code(code)
        if products.key?(code) == false
            puts "Item does not exist"
        end
        code
    end

    def product_verification(code, cash)
        drink = products[code]
        if cash < drink[:price]
          puts "Not enough credit,please reinsert your money!"
          credit = 0  
          insert_money
        else 
           change = cash - drink[:price]
           puts "Please retrieve your change:#{change}"
           take_change
        end
    end

    def releasing_product
     #reducing the quantity of said product by 1
     puts "Your product is in the bin,will you retrive it?[y/n]"
     take_product
    end

    def product_validate_no
        puts "Further operation cannot proceed until the products is taken!"
        releasing_product
    end
    def product_validate_yes
        puts "Thank you for your patronage!"
        puts "Have a great day!"
    end



 private    
     attr_reader :products
end
