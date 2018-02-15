
require 'rspec'
require_relative 'MikeTheresa'


describe Vehicle do
    # Story: As a programmer, I can make a Vehicle.
    it "has to exist as a vehicle and go" do
      expect {Vehicle.new}.to_not raise_error
    end

end

describe Boat do
    #Story: As a programmer, I can make a boat.
    it "has to be a Vehicle" do
      expect {Boat.new}.to_not raise_error
    end
    it "inherits from Vehicle" do
      a_boat = Boat.new
      # expect(a_boat.class.superclass).to eq Vehicle
      should be_kind_of Vehicle
    end
    # Story: As a programmer, I can tell how many engines a boat has; default is four.
    it "should have a number of engines" do
      b_boat = Boat.new
      expect(b_boat.engines).to eq 2
    end
    # Story: As a programmer, I can blow the boat horn
    it "make a horn noise" do
      c_boat = Boat.new
      expect(c_boat.horn).to eq "default noise"
    end
    #Story: As a programmer, I can call all of a boats information.
    it "has to have attributes that can be listed" do
      a_boat = Boat.new
      expect(a_boat).to have_attributes(:engines => 2,:horn => "default noise")
      # a_boat.info.should_expect(2).once.and_return(2, "default noise")
      # Boat.new {should_have_at_least(5).items}
    end

    it "should carry a number of life vests porportional to its capacity"

end

describe Yacht do
  # Story: As a programmer, I can make a Yacht Boat
  it "has a Yacht class of boat and makes a noise" do
    a_yacht = Yacht.new
    should be_kind_of Boat
    expect(a_yacht.horn).to eq "BOOOOOOOOOAAWWWW"
  end

    it "I can create a Yacht with a build year" do
      a_yacht = Yacht.new
      a_yacht.year("2004")
      expect(a_yacht.get_year).to eq "2004"
    end

end

describe Sailboat do

    it "has a Sailboat class of boat and makes a noise" do
      a_sailboat = Sailboat.new
      should be_kind_of Boat
      expect(a_sailboat.horn).to eq "Jingle Bells"
    end

end

describe Pontoon do

  it "has a Pontoon class of boat and makes a noise" do
    a_pontoon = Pontoon.new
    should be_kind_of Boat
    expect(a_pontoon.horn).to eq "BOOOOZEEEE-- BOOOO BOOO"
  end

end


# Story: As a programmer, I can store and retrieve all of my cars from a harbor.
describe Harbor do

    it "can hold multiple boats" do
      vienna = Yacht.new
      a_harbor = Harbor.new
      a_harbor = a_harbor.add_boat(vienna)
      expect(a_harbor).not_to be_empty
    end

    it "can retrieve info on a particular boat" do
      vienna = Yacht.new
      a_harbor = Harbor.new
      a_harbor = a_harbor.add_boat(vienna)
      expect(a_harbor).to include(vienna)
    end
    it "can sort the boats it contains" do
      vienna = Yacht.new
      vienna.year("2002")
      mike = Sailboat.new
      mike.year "1993"
      theresa = Pontoon.new
      theresa.year("1990")
      vienna1 = Yacht.new
      vienna1.year "2017"
      mike1 = Sailboat.new
      mike1.year "1982"
      theresa1 = Pontoon.new
      theresa1.year "2010"
      a_harbor = Harbor.new
      a_harbor.add_boat(vienna, theresa, mike, vienna1, theresa1, mike1)
      p a_harbor
      # expect(a_harbor.list_boats).to include(mike1)
      a_harbor.sort_by_year
      expect(a_harbor.list_boats[0]).to be(mike1)

    end

end




    # Story: As a programmer, I can sort the cars in my harbor based on build year.
    # Story: As a programmer, I can sort the cars in my harbor based on type and then year.
