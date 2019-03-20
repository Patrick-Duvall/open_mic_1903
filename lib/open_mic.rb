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
# I know this is terrible, I feel I'm missing something obvious and wanted to talk to someone and had to implement something so here.
  def repeated_jokes?
    @performers.map(&:jokes_told).flatten.uniq != @performers.map(&:jokes_told).flatten
  end



end
