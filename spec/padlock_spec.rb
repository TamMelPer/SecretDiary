require 'padlock'

describe Padlock do

subject {Padlock.new}

  it "initializes locked" do
    expect(subject.locked).to eq true
  end

  it "allows the user to unlock the lock" do
    subject.unlock
    expect(subject.locked).to eq false
  end

  it "allows the user to lock the lock" do
    subject.unlock
    subject.lock
    expect(subject.locked).to eq true
  end
end
