class User
attr_reader :name, :jokes, :jokes_told
  def initialize(name)
    @name = name
    @jokes = []
    @jokes_told = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)

    user.learn(joke)
    @jokes_told << joke
  end
#could act wierd if multiple jokes have same id, I might use sympols for jokes, also, comedians are more likely to mentally label their jokes as say :dog_joke
  def joke_by_id(num)
    @jokes.find{|joke| joke.id == num}
  end

end
