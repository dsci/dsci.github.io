require "spec_helper"

describe "Short constructor with meta programming" do

  let(:personal_attributes) do
    {
      :lastname => "Maier", 
      :firstname => "Bill",
      :age => 43
    }
  end

  let(:person) do
    Person.new(personal_attributes)
  end

  context "assign persons attributes" do

    it{ person.lastname.should eq personal_attributes[:lastname] }
    it{ person.firstname.should eq personal_attributes[:firstname] }
    it{ person.age.should be personal_attributes[:age] }

  end

end