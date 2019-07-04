class VendingMachine

  attr_reader :products, :credit, :code, :storage

  def initialize(products = {}, credit = 0, code = "NO CODE GIVEN", storage = {})
   @products = products
   @credit = credit
   @code = code
   @storage = storage
  end

  def inserting_money(inserted_credit)
    @credit = @credit + inserted_credit
  end

  def product_code_processing
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
      product_code_menu
    else
      code
    end
  end



end