require './lib/joke'
require "./lib/user"
require "./lib/open_mic"
require "minitest/autorun"
require "pry"


class OpenMicTest<Minitest::Test

  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal = User.new("Sal")
    @ali = User.new("Ali")
  end
#attributes given via hash
  def test_has_attributes
    assert_equal "Comedy Works", @open_mic.location
    assert_equal "11-20-18", @open_mic.date
  end

  def test_can_add_performers
    assert_equal [], @open_mic.performers
    @open_mic.welcome(@sal)
    assert_equal [@sal], @open_mic.performers
    @open_mic.welcome(@ali)
    assert_equal [@sal, @ali], @open_mic.performers
  end

  def test_knows_if_a_joke_has_been_repeated
    assert_equal false, @open_mic.repeated_jokes?
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    @sal.learn(@joke_1)
    @sal.tell(@ali, @joke_1)
    @ali.tell(@sal, @joke_1)
    assert_equal true, @open_mic.repeated_jokes?
  end

end
