puts 'Would you like to see the |menu|, or |order|?'
menu = {"Pizza" => 5, "Cheeseburger" => 6, 'Cookie' => 1, "Fries" => 2, "Chicken" => 4, "Pasta" => 10}

def display(x)
	x.each do |f, p|
		puts "#{f} is $#{p}"
		puts ""
	end
end


while answer = gets.chomp.downcase.capitalize!
	case answer
	when "Menu"
		display(menu)
		break
	when "Order"
		puts "What would you like to order?"
		puts ""
		break
	else
		puts "Sorry, I didn't quiet catch that."
		puts ""
		puts "Would you like to see the |menu|, or |order|"
		puts ""
	end
end


	#  see if its on the menu

while order = gets.chomp.downcase.capitalize!
		# if not on the menu, display menu again.
	if !menu[order].nil?
		puts "Okay, that will be $#{menu[order]}"
		puts ""
		break
		# if it is on the menu say the price of the order.
	else
		puts "Sorry that is not on the menu." 
		puts ""
		puts "We have:"
			menu.each do |f, p|
				puts "#{f} is  $#{p}"
				puts ""
			end
	end
end

# make variable for the price of the meal
order_cost = menu[order]


puts "Would you like anything else with that? Yes/no"
puts ""

# Would you like fries with that?
while order_add = gets.chomp.downcase.capitalize!

	if order_add == 'Yes'
		puts "What would you like?    If you would like to see the menu, type Menu."
		puts ""
		add = gets.chomp.downcase.capitalize!
			if menu[add].nil?
				puts "sorry, that's not on the menu, do you want anything else? Yes/No"
				puts ""
			elsif add == "Menu"
				display(menu)
			else
				order_cost += menu[add]
				puts "Alright! That will be $#{order_cost}."
				puts ""
				puts "Anything else? Yes/No"
				puts ""
			end
	elsif order_add == "Menu"
		display(menu)
		puts ""
		puts "Anything else? Yes/No"
	elsif order_add == 'No'
		puts "Your final total will be $#{order_cost}"
		break
	else
		puts "Sorry, I didn't understand that..."
		puts ""
		puts "Would you like to add anything to the order? Yes/No/Menu"
	end
end