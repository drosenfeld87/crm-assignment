class Contact
  @@contacts = []
  @@id = 1

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  #setters (writers)
  def first_name(first_name)
    @first_name = first_name
  end

  def last_name(last_name)
    @last_name = last_name
  end

  def email(email)
    @email = email
  end

  def note(note)
    @note = note
  end

  def id
    @id
  end

  #getters (readers)
  def add_new_contact
    @add_new_contact
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def note
    @note
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
  @@contacts << new_contact
    return new_contact
  end



  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
      if contact.id == id
        return contact
      end
    end
    return nil
  end
  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(name_of_attribute, value_of_attribute)
    if name_of_attribute == 'first_name'
      @first_name = value_of_attribute
    elsif name_of_attribute == 'last_name'
      @last_name = value_of_attribute
    elsif name_of_attribute == 'email'
      @email = value_of_attribute
    elsif
      @note = value_of_attribute
    end
  end
end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(name_of_attribute, value_of_attribute)
    if name_of_attribute == 'first_name'
      @@contacts.find do |contact|
        contact.name_of_attribute == value_of_attribute
      end
    elsif name_of_attribute == 'last_name'
      @@contacts.find do |contact|
        contact.last_name == value_of_attribute
      end
    elsif name_of_attribute == 'email'
      @@contacts.find do |contact|
        contact.email == value_of_attribute
      end
    else
      @@contacts.find do |contact|
        contact.note == value_of_attribute
      end
    end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts []
  end

  def full_name
    "#{@first_name}, #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contact.delete()
  end
    # Feel free to add other methods here, if you need them.


new_contact1 = Contact.create('Deb', 'Rosenfeld', 'drosenfeld87@gmail.com', 'likes_cats',)
new_contact2 = Contact.create('Devin', 'McCoy', 'devingmccoy@gmail.com', 'likes_gaming')
new_contact3 = Contact.create('Meg', 'Pesant', 'megan@meganpesant.com', 'likes_photography')

# n= Contact.full_name(first_name, last_name)
# pp n
# p new_contact2.update('first_name','Dev')
