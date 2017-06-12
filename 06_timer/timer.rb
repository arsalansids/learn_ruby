class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    self.seconds = 0
  end

  def time_string
    hours = self.seconds / 3600
    minutes = (self.seconds % 3600) / 60
    seconds = (self.seconds % 3600) % 60
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(number)
    number.to_s.size == 1 ? "0#{number}" : "#{number}"
  end
end
