require './contact.rb'

class CRM

  def initialize(name)
    puts "Okay, this CRM has the name "

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
    print 'Enter a #{number}'
    number=gets.to_i
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

  def modify_existing_contact(first_name, last_name, email, note)
    print 'Edit First Name: '
  first_name = gets.chomp

  print 'Edit Last Name: '
  last_name = gets.chomp

  print 'Edit Email Address: '
  email = gets.chomp

  print 'Edit a Note: '
  note = gets.chomp

  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end

end

a_crm_app = CRM.new('deb')
# Contact.create('Deb', 'Rosenfeld', 'drosenfeld87@gmail.com', 'likes_cats',)
# a_crm_app.modify_existing_contact
puts a_crm_app.add_new_contact
