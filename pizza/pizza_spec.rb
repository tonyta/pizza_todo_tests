require 'rspec'
require_relative 'pizza'

describe 'pizza' do
  let(:pizza) {Pizza.new()}

  context "upon creation" do
    it "should have a name" do
      pizza.should respond_to(:name)
    end
    it "should have a description" do
      pizza.should respond_to(:description)
    end
    it "should have a time_baked" do
      pizza.should respond_to(:time_baked)
    end
  end

  context '#initialize' do
    it 'should expect a string for a name' do
      expect(pizza.name).to be_a String
    end

    it 'should default time_baked to 0' do

    end
  end
end
