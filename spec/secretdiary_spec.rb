require 'secretdiary'

describe SecretDiary do
  it "creates a new instance of Diary" do
    expect(subject).to be_instance_of SecretDiary
  end

  it "expects the Diary to be locked" do
    diary = SecretDiary.new
    expect(subject.locked?).to eq true
  end

  describe "#add_entry" do
    it "doesn't allow the user to add_entry as locked" do
      diary = SecretDiary.new
      diary.locked?
      expect{ diary.add_entry }.to raise_error "Sorry! Diary Locked"
    end
  end

  describe "#get_entries" do
    it "doesn't allow the user to get_entries as locked" do
      diary = SecretDiary.new
      diary.locked?
      expect{ diary.get_entries }.to raise_error "Sorry! Diary Locked"
    end
  end

end
