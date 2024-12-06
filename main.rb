business_list = []

puts "Welcome to the Business Sorting Program!"

loop do
    print "Please enter the name of a business: "
    business_input = gets.chomp

    if business_input.empty?
        puts "Input cannot be empty. Please try again."
        next
    end

    business_list.push(business_input)
    business_list = business_list.sort_by { |business| business.downcase }

    puts "\nYour businesses are:"
    business_list.each { |business| puts business }

    print "\bAnother business? (Yes/No): "
    choice = gets.chomp.downcase
    break unless choice == "yes" || choice == "y"
end

puts "\nThank you for running the Business Sorting Program!"