require 'padlock'

describe Padlock do

  it "initializes locked" do
    padlock = Padlock.new
    expect(padlock.locked).to eq true
  end
end
