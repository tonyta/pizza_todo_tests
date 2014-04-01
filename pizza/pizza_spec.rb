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
      pizza.time_baked.should == 0
    end
  end

  context 'toppings' do
    before do
      @pizza1 = Pizza.new
      topping1 = Topping.new(required_bake_time: 30)
      topping2 = Topping.new(required_bake_time: 30)
      @pizza1 << topping1 << topping2
    end

    it 'should have more than 1 topping' do
      @pizza1.toppings.count > 1
    end
  end

  context '#required_bake_time' do
    it 'should have a method "required_bake_time"' do
      @pizza1.respond_to required_bake_time
    end

    it 'should return 900 + all max_bake_times' do
      @pizza1.required_bake_time.should eq 960
    end
  end
end

describe 'topping' do
  let(:topping) { Topping.new(required_bake_time: 30) }

  describe '#required_bake_time' do
    it 'should return the topping\'s bake time' do
      topping.required_bake_time.should eq 30
    end
  end


end
