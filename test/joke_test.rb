require './lib/joke'
require "minitest/autorun"

class JokeTest<Minitest::Test
#I was reading an article that argued that in an object test tests that object so calling it my name as test_joke_has_attributes is redundant. It continued this logic could be extended to test_it_has_attributes. I found it compelling.
  def test_has_attributes
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal 1, joke.id
    assert_equal "Why did the strawberry cross the road?", joke.setup
    assert_equal "Because his mother was in a jam.", joke.punchline

  end

end
