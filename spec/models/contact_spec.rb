# all of your specs will include this require line moving forward.
require 'spec_helper'

describe Contact do

  it "has a valid factory" do
    expect(build(:contact)).to be_valid
  end

  it "is valid with a firstname and lastname" do
    contact = Contact.new(
        firstname: "Joe",
        lastname: "Gesualdo",
        email: "joe@example.com")
    expect(contact).to be_valid
  end

  it "is invalid without a firstname" do
    contact = build(:contact, firstname: nil)
    expect(contact).to have(1).errors_on(:firstname)
  end

  it "is invalid without a lastname" do
    contact = build(:contact, lastname: nil)
    expect(contact).to have(1).errors_on(:lastname)
  end

  it "is invalid with a duplicate email address" do
    create(:contact, email: "aaron@example.com")
    contact = build(:contact, email: "aaron@example.com")
    expect(contact).to have(1).errors_on(:email)
  end

  it "returns a contact's full name as a string" do
    contact = build(:contact)
    expect(contact.name).to eq "John Doe"
  end

  describe "filter last name by letter" do
    before :each do
      @smith = Contact.create(firstname: 'John', lastname: 'Smith',
                              email: 'jsmith@example.com')
      @jones = Contact.create(firstname: 'Tim', lastname: 'Jones',
                              email: 'tjones@example.com')
      @johnson = Contact.create(firstname: 'John', lastname: 'Johnson',
                                email: 'jjohnson@example.com')
    end

    context "matching letters" do
      it "returns an assorted array of results that match" do
        expect(Contact.by_letter("J")).to eq [@johnson, @jones]
      end
    end

    context "non-matching letter" do
      it "only returns names with provided starting letter" do
        expect(Contact.by_letter("J")).to_not include @smith
      end
    end
  end

end
