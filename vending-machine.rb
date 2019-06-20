class VendingMachine  
 
  def initialize(products)    
   @product = products
  end

  def inserting_money(credit)
    exit = 0
    while (exit == 0) do
     option = gets.chomp
     case option
      when "1"
        credit += 0.5
        puts "CREDIT: #{credit}"
      when "2"
        credit += 1
        puts "CREDIT: #{credit}"
      when "3"
       credit += 5
       puts "CREDIT: #{credit}"
      when "4"
        credit += 10
        puts "CREDIT: #{credit}"
      when "5"
        exit = 1
      else 
        puts "Invalid currency!"
     end
    end
    credit
  end


end

