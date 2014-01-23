require 'spec_helper'

describe Person do
  let(:person) {Person.new}
  let(:person_with_bike) {Person.new(:bike)}
  
  it "has a bike" do
    expect(person_with_bike).to have_bike
  end

  it "should not have a bike" do
    expect(person).not_to have_bike
  end

  it "breaks the bike when the person falls down" do
    bike = double :bike
    person = Person.new(bike)
    expect(bike).to receive(:break!)

    person.fall_down
  end

  it "rents a bike" do 
    station = double (:station), rent_bike: :bike

    exp
  end
end