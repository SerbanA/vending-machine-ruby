class VendingMachine  
 
  def initialize(products)    
   @product = products
  end

  def inserting_money(credit, code)
    exit = 0
    while (exit == 0) do
     option = gets.chomp
     case option
      when "1"
        credit += 0.5
         inserting_money_menu(credit, code)
      when "2"
        credit += 1
         inserting_money_menu(credit, code)
      when "3"
       credit += 5
        inserting_money_menu(credit, code)
      when "4"
        credit += 10
         inserting_money_menu(credit, code)
      when "5"
        exit = 1
      else 
        puts "Invalid currency!"
        inserting_money_menu(credit, code)
     end
    end
    credit
  end

 def product_code_processing(products)
  exit = 0
  while (exit == 0) do 
   option = gets.chomp
     case option
       when "1"
        printf "Code:" 
        code = gets.chomp
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
     product_code_processing(products)
   else
     code
   end
  end

end

