class Apartments::CLI 
  
  def call
    list_apartments
    menu
    goodbye
  end 
  
  def list_apartments
    puts "Current Apartments:"
     @rentals = Apartments::Rentals.today
     @rentals.each.with_index(1) do |rentals,i|
       puts "#{i} - #{rentals.name} - #{rentals.price} - #{rentals.fee}"
     end
  end 
  
  def menu
    input = nil 
    while input !="exit"
    puts "Enter the amount of bedroom you are looking for or type list to see apartments again or type exit to enter:"
    input = gets.strip
    
    if input.to_i > 0 
      the_rental = @rentals[input.to_i-1]
      puts "#{the_rental.name} - #{the_rental.price} - #{the_rental.fee}"
    else if input == "list"
      list_apartments
    else 
       puts "No results found, type list or exit."
      end 
    end 
  end
  
  def goodbye 
   puts "Thank you for choosing our search engine!"
  end
end 
end
