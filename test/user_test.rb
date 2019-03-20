require './lib/joke'
require "./lib/user"
require "minitest/autorun"

class UserTest<Minitest::Test

  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal = User.new("Sal")
  end

  def test_has_name
    assert_equal "Sal", @sal.name
  end

  def test_can_learn_jokes
    assert_equal [], @sal.jokes
    @sal.learn(@joke_1)
    assert_equal [@joke_1], @sal.jokes
    @sal.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], @sal.jokes

  end

end
