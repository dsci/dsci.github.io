require 'spec_helper'

describe "Class inheritance" do

  describe "An animal" do

    let(:animal){Animal.new}

    it "has feets" do
      animal.should respond_to(:feets)
    end

    it "has a color" do
      animal.should respond_to(:color)
    end

  end

  describe "Mortuus the cat" do

    let(:mortuus){Cat.with_feet(4)}

    it "is a cat" do
      mortuus.should be_instance_of Cat
    end

    it "is also an animal" do
      mortuus.should be_kind_of Animal
    end

    it "has 4 feets" do
      mortuus.feets.should be 4
    end

    it "speaks if he wants" do
      mortuus.should respond_to(:speak)
    end

    it "didn't fetch stuff" do
      mortuus.should_not respond_to(:fetch)
    end
    
    it "eats much" do
      mortuus.should respond_to(:eat)
    end

    it "steals food" do
      mortuus.should respond_to(:steal_food)
    end

  end

  describe "Lassy the dog" do

    let(:lassy){Dog.with_feet(4)}

    it "is a dog" do
      lassy.should be_instance_of Dog
    end

    it "is also an animal" do
      lassy.should be_kind_of Animal
    end

    it "has 4 feets" do
      lassy.feets.should be 4
    end

    it "couldn't speak" do
      expect{lassy.speak}.to raise_error NoMethodError
    end

    it "fetches stuff" do
      lassy.should respond_to(:fetch)
    end

    it "eats much" do
      lassy.should respond_to(:eat)
    end

    it "did not steal food" do
      lassy.should_not respond_to(:steal_food)
    end

  end

  # For mixin stuff
  describe "Clara the bird" do

    let(:clara){Bird.with_feet(2)}

    it "is a bird" do
      clara.should be_instance_of Bird
    end

    it "is an animal" do
      clara.should be_kind_of Animal
    end

    it "flies" do
      clara.should respond_to(:fly)
    end

    it "eats much" do
      clara.should respond_to(:eat)
    end

    it "didn't fetch stuff" do
      clara.should_not respond_to(:fetch)
    end

    it "steals food" do
      clara.should respond_to(:steal_food)
    end

  end
end