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
    Contact.all.each do |contact|
      puts contact.first_name
    end
  end

  def search_by_attribute(name_of_attribute)
    self.find_by = name_of_attribute
  end

end

# a_crm_app = CRM.new('Deb')
# Contact.create('Deb', 'Rosenfeld', 'drosenfeld87@gmail.com', 'likes_cats',)
# # a_crm_app.modify_existing_contact(first_name, last_name, email, notes)
# puts a_crm_app.print_main_menu

CRM.run
