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

  it "is invalid without a firstname" do
    expect(Contact.new(firstname: nil)).to have(1).errors_on(:firstname)
  end

  it "is invalid without a lastname" do
    expect(Contact.new(lastname: nil)).to have(1).errors_on(:lastname)
  end

  it "is invalid with a duplicate email address" do
    Contact.create(
        firstname: "Joe",
        lastname: "Gesualdo",
        email: "joe@example.com"
    )
    contact = Contact.new(
        firstname: "Joe",
        lastname: "Shmo",
        email: "joe@example.com"
    )
    expect(contact).to have(1).errors_on(:email)
  end

  it "returns a contact's full name as a string" do
    contact = Contact.new(
        firstname: "Joe",
        lastname: "Shmo",
        email: "joe@example.com"
    )
    expect(contact.name).to eq "Joe Shmo"
  end

  it "returns a sorted array of results that match" do
      smith = Contact.create(firstname: 'John', lastname: 'Smith',
                             email: 'jsmith@example.com')
      jones = Contact.create(firstname: 'Tim', lastname: 'Jones',
                             email: 'tjones@example.com')
      johnson = Contact.create(firstname: 'John', lastname: 'Johnson',
                             email: 'jjohnson@example.com')

      expect(Contact.by_letter("J")).to eq [johnson, jones]
  end

  it "by_letter should not return a name without the first letter given" do
    smith = Contact.create(firstname: 'John', lastname: 'Smith',
                           email: 'jsmith@example.com')
    jones = Contact.create(firstname: 'Tim', lastname: 'Jones',
                           email: 'tjones@example.com')
    johnson = Contact.create(firstname: 'John', lastname: 'Johnson',
                             email: 'jjohnson@example.com')
    expect(Contact.by_letter("J")).to_not include smith
  end
end
