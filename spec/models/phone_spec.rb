require 'spec_helper'

describe Phone do
    it "does not allow duplicate phone numbers per contact" do
      contact = Contact.create(firstname: 'Joe', lastname: 'Tester',
                               email: 'joetester@example.com')
      home_phone = contact.phones.create(phone_type: 'home',
                                         phone: '785-555-1234')
      mobile_phone = contact.phones.build(phone_type: 'mobile',
                                          phone: '785-555-1234')

      expect(mobile_phone).to_not be_valid
    end

    it "allows two contacts to share a phone number" do
      create(:home_phone,
              phone: "785-555-1234")
      expect(build(:home_phone, phone: "785-555-1234")).to be_valid
    end
end
