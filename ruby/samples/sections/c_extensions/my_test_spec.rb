require_relative 'my_test'
require 'minitest/autorun'


describe MyTest do

  before do
    @my_test = MyTest.new
  end

  it "must has Object as super class" do
    MyTest.superclass.must_equal Object
  end

  describe "an instance of MyTest" do

    it "must have MyTest as class" do
      @my_test.class.must_equal MyTest
    end

    it "must have an instance variable @arr" do
      @my_test.instance_variable_defined?(:@arr).must_equal true
    end

    it "must add numbers to its array" do
      @my_test.add(1)
      @my_test.add(2)

      @my_test.instance_variable_get(:@arr).must_equal [1,2]
    end

  end
end