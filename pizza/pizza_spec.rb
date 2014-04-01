require 'rspec'
require_relative 'pizza'

describe 'pizza' do
  let(:pizza) {Pizza.new()}

  context "upon creation" do
    it "should have a name" do
      expect(pizza.attributes).to include(:name)
    end
    it "should have a description" do
      expect(pizza.attributes).to include(:description)
    end
    it "should have a time_baked" do
      expect(pizza.attributes).to include(:time_baked)
    end
  end

  context '#initialize' do
    it 'should expect a string for a name' do
      expect(pizza.name).to be_a String
    end
  end
end
