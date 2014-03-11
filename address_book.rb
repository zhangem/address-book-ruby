require './lib/contact'

@list = []

def main_menu
  puts "Press 'a' to add new contact"
  puts "Press 'l' to show all contacts"

  user_input = gets.chomp
  if user_input == 'a'
    add_contact
    phone_number
  else user_input == 'l'
    list_contact
    main_menu
  end
end


def add_contact
  puts "Enter the full name of your contact."
  full_name = gets.chomp

  @list << Contact.new(full_name)
  puts "Name added. \n\n"

    puts "Enter phone number for contact."
  phone_number = gets.chomp

  @list << Contact.new(phone_number)
  puts "Phone number added. \n\n"
  main_menu
end


def list_contact
  puts "Here are all of your contacts:"
  @list.each_with_index do |name, index|
    puts (index + 1).to_s + ". " + name.full_name
  end
  puts "\n"
  main_menu
end

main_menu

