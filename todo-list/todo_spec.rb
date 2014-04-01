require 'rspec'
# require 'spec_helper'
require_relative 'todo'

describe Todo  do

  let(:todo) {Todo.new()}#{title:"write tests",description: "Write some fucking tests", status:"complete",created_at:Time.now})}

  it "has a title" do
    todo.should respond_to(:title)
  end

  it "has a description" do
    todo.should respond_to(:description)
  end

  it "has a status" do
    todo.should respond_to(:status)
  end

  it "has a created_at timestamp" do
    todo.should respond_to(:created_at)
  end


  it "expects a DateTime for the timestamp" do
    todo.created_at.class.should be == DateTime
  end


  it "has a default status of 'incomplete'" do
    todo.status.should be =="incomplete"
  end

  it "is initialized with a created_at timetamp" do
    todo.created_at.should_not be_nil
  end

  it "has a 'mark_as_complete!' method" do
    todo.should respond_to(:mark_as_complete!)
  end

  it "sets its status to 'complete' when mark_as_complete! is called" do
    todo.mark_as_complete!
    todo.status.should == "complete"
  end

  it "has a 'mark_as_incomplete!' method" do
    todo.should respond_to(:mark_as_incomplete!)
  end

  it "sets its status to 'incomplete' when mark_as_incomplete! is called" do
    todo.mark_as_incomplete!
    todo.status.should == "incomplete"
  end

  it "has a 'complete?' method" do
    todo.should respond_to(:complete?)
  end

  it "returns a boolean when 'complete?' is called" do
    todo.complete?.class.should == FalseClass
  end

  #it "returns "
end
