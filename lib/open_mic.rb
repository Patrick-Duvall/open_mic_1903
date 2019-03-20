class OpenMic
  attr_reader :location, :date, :performers
  def initialize(attributes_hash)
    @location = attributes_hash[:location]
    @date = attributes_hash[:date]
    @performers = []
    # @repeated_jokes = false
  end

  def welcome(user)
    @performers << user
  end
# I feel I'm missing something obvious. This does add some functionality in that it gives users informaion on what jokes they've told.
  def repeated_jokes?
    specific_jokes = @performers.map(&:jokes_told).flatten.uniq
    all_jokes = @performers.map(&:jokes_told).flatten
    specific_jokes != all_jokes
  end



end
