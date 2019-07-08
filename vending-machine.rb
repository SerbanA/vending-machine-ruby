class VendingMachine

  attr_reader :products, :credit, :code, :storage

  def initialize(products = {}, credit = 0, code = "NO CODE GIVEN", storage = {})
   @products = products
   @credit = credit
   @code = code
   @storage = storage
   #@stmp_torage = storage
  end

  def inserting_money(inserted_credit)
    @credit = @credit + inserted_credit
  end
=begin
  def credit
    #calculate the credit form tmp_storage
  end
=end
  def product_code_processing
    exit = 0
    while (exit == 0) do
      puts "1.Type Code"
      puts "2.Exit"
      option = gets.chomp
      case option
        when "1"
          printf "Code:"
          @code = gets.chomp
          code_validation(products, code)
          exit = 1
        when "2"
          exit = 1
        else
          puts "Invalid action"
          product_code_menu(products,code)
      end
    end
    code
  end
  
  def code_validation(products, code)
    if products.key?(code) == false
      puts "Item does not exist."
      @code = "NaN"
      product_code_processing
    else
      code
    end
  end

  def order_processing
    product = products[code]
    total_cost = 0
    puts "1 X #{product[:name]}   Price: #{product[:price]}"
    total_cost += product[:price]
    puts "__________________________________"
    puts "Total Cost:            #{total_cost}"
    exit = 0
    while (exit == 0) do
     puts "1.Confirm order and finish process"
     puts "2.Return to main menu"
     puts "Choice:"
     option = gets.chomp
     case option
       when "1" 
         if credit < product[:price]
           puts "Insufficient credit!Returning to main menu."
           exit = 1
         elsif ((credit >= product[:price]) and (product[:quantity]>0))
           puts "Please retrieve your product and change"
           product[:quantity] -= 1 
           change = credit - product[:price]  
           if change != 0 
             while ((change > 9) && (storage[10] > 0))
               change -= 10
               storage[10] -= 1
             end
             while ((change > 4) and (storage[5] > 0))
                change -= 5
                storage[5] -= 1
             end
             while ((change > 0.9) and (storage[1] > 0))
                change -= 1
                storage[1] -= 1
             end
             while ((change > 0) and (storage[0.5] > 0))
                change -= 0.5
                storage[0.5] -= 1
             end
             @credit = change
             @code = ""
             exit = 1
            end
         else 
          puts "Product not available, returning to main menu"
          exit = 1
        end
       when "2"
         exit = 1
       else 
         puts "No wizard powers allowed, returning to main menu...."
      end
    end
  end
end