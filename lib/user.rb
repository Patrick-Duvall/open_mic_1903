class User
attr_reader :name, :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end
#could act wierd if multiple jokes have same id, I might use sympols for jokes, also, comedians are more likely to mentally label their jokes as say :dog_joke
  def joke_by_id(num)
    @jokes.find{|joke| joke.id == num}
  end

end
