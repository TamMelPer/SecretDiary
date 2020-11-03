require 'secretdiary'

describe SecretDiary do
  it "creates a new instance of Diary" do
    expect(subject).to be_instance_of SecretDiary
  end

  it "expects the Diary to be locked" do
    diary = SecretDiary.new
    expect(subject.locked?).to eq true
  end
end
