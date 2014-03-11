require 'rspec'
require 'contact'

describe Contact do
  it 'initializes the first and last name of a contact' do
    test_contact = Contact.new('First Last')
    test_contact.should be_an_instance_of Contact
  end

  it 'passes through the full name that is inputted' do
    test_contact = Contact.new('Missy Elliot')
    test_contact.full_name.should eq 'Missy Elliot'
  end
end

describe Number do
  it 'initializes the phone number of a contact' do
    test_number = Number.new('3606065760')
    test_number.phone_number.should eq '3606065760'
  end
end

