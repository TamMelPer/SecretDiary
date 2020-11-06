require 'secretdiary'

describe SecretDiary do

  subject {SecretDiary.new}


  it "creates a new instance of Diary" do
    expect(subject).to be_instance_of SecretDiary
  end

  # it "initialized diary is locked" do
  #   expect(subject.locked).to eq true
  # end

  it "initializes an instance of the padlock class" do
    expect(subject.padlock.locked).to eq true
  end


  describe "#add_entry" do
    it "doesn't allow the user to add_entry as locked" do
      expect{ subject.add_entry("test") }.to raise_error "Sorry! Diary Locked"
    end
    it "accepts a diary entry from the user" do
      subject.unlock
      expect{ subject.add_entry("test") }.to change{ subject.entries.count }.by 1
    end
  end

  describe "#get_entries" do
    it "doesn't allow the user to get_entries as locked" do
      expect{ subject.get_entries }.to raise_error "Sorry! Diary Locked"
    end
    it "shows the entries" do
      subject.unlock
      subject.add_entry("Hello")
      subject.add_entry("Goodbye")
      expect{ subject.get_entries }.to output("Hello\nGoodbye\n").to_stdout
    end
  end

  describe "#unlock" do
    it "allows the user to unlock the diary and edit" do
      expect{ subject.unlock }.to change{ subject.padlock.locked }.from(true).to(false)
    end
  end

    describe "#lock" do
      it "allows the user to lock the diary" do
        subject.unlock
        expect{ subject.lock }.to change{ subject.padlock.locked }.from(false).to(true)
      end
    end



end
