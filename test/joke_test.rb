require './lib/joke'
require "minitest/autorun"

class JokeTest<Minitest::Test

  def test_has_attributes
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal 1, joke.id
    assert_equal "Why did the strawberry cross the road?", joke.setup
    assert_equal "Because his mother was in a jam.", joke.punchline

  end

end
