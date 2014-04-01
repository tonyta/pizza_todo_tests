require 'rspec'
require 'spec_helper'
require 'todo'

describe Todo  do

  let(:todo) {Todo.new()}

  it "has a title" do
    expect(todo.attributes).to include(:title)
  end

  it "has a description" do
    expect(todo.attributes).to include(:description)
  end

  it "has a status" do
    expect(todo.attributes).to include(:status)
  end

  it "has a created_at timestamp" do
    expect(todo.attributes).to include(:created_at)
  end

end
