require './lib/joke'
require "./lib/user"
require "minitest/autorun"

class UserTest<Minitest::Test

  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal = User.new("Sal")
    @ali = User.new("Ali")
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

  def test_can_tell_jokes
      @sal.learn(@joke_1)
      @sal.tell(@ali, @joke_1)
      assert_equal [@joke_1], @ali.jokes
      @sal.learn(@joke_2)
      @sal.tell(@ali, @joke_2)
      assert_equal [@joke_1, @joke_2], @ali.jokes
  end

  def test_user_knows_jokes_by_id
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
    assert_equal @joke_1, @sal.joke_by_id(1)
    @sal.tell(@ali, @joke_2)
    assert_equal @joke_2, @ali.joke_by_id(2)
  end

end
