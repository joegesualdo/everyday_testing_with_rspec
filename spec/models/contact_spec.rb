# all of your specs will include this require line moving forward.
require 'spec_helper'

describe Contact do
  it "is valid with a firstname and lastname" do
    contact = Contact.new(
        firstname: "Joe",
        lastname: "Gesualdo",
        email: "joe@example.com")
    expect(contact).to be_valid
  end

  it "is invalid without a firstname"
  it "is invalid without a lastname"
  it "is invalid with a duplicate email address"
  it "returns a contact's full name as a string"

end
