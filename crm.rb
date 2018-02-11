require './contact.rb'

class CRM
  def self.run
    crm = CRM.new
    crm.main_menu
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number:'
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
    end
  end

  def search_by_attribute
    puts "which attribute would you like"
    value = gets.chomp.to_s
    return Contact.search_by_attribute(value)
  end

  def add_new_contact
    print 'Enter First Name: '
  first_name = gets.chomp

  print 'Enter Last Name: '
  last_name = gets.chomp

  print 'Enter Email Address: '
  email = gets.chomp

  print 'Enter a Note: '
  note = gets.chomp

  Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    #find contact to modify
    contact = search_by_attribute
    puts contact
    #ask for attribute to modify and new value
    puts 'what do you want to change'
    attribute_to_change = gets.chomp
    puts 'what do you want to change it to?'
    new_value = gets.chomp
    #update attribute on contact
    Contact.update(contact, attribute_to_change, new_value)
    # print 'Edit First Name: '
    # first_name = gets.chomp
    #
    # print 'Edit Last Name: '
    # last_name = gets.chomp
    #
    # print 'Edit Email Address: '
    # email = gets.chomp
    #
    # print 'Edit a Note: '
    # note = gets.chomp
  end

  def delete_contact
    puts "who do you want to delete"
    name = gets.chomp.to_s
    contact = Contact.search_by('first_name', name)
    puts "Do you really want to delete #{contact.first_name}? (y/n)"
    answer = gets.chomp.to_s
    if answer == 'y'
      Contact.delete(contact)
    else
      puts "good"
    end
  end

  def display_all_contacts
    Contact.all.each do |contact|
      puts "#{contact.first_name}, #{contact.last_name}, #{contact.email}, #{contact.note}"
    end
  end

end

# a_crm_app = CRM.new('Deb')
# Contact.create('Deb', 'Rosenfeld', 'drosenfeld87@gmail.com', 'likes_cats',)
# # a_crm_app.modify_existing_contact(first_name, last_name, email, notes)
# puts a_crm_app.print_main_menu

CRM.run
