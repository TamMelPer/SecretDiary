class SecretDiary

attr_reader :locked

  def initialize
    @locked = true
  end

  def add_entry
    fail "Sorry! Diary Locked" if @locked == true
  end

  def get_entries
    fail "Sorry! Diary Locked" if @locked == true
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end
