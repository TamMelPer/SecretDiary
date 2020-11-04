class SecretDiary

attr_reader :locked, :entries

  def initialize
    @locked = true
    @entries = []
  end

  def add_entry(entry)
    fail "Sorry! Diary Locked" if @locked == true
    @entries << entry
  end

  def get_entries
    fail "Sorry! Diary Locked" if @locked == true
    puts @entries
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end
