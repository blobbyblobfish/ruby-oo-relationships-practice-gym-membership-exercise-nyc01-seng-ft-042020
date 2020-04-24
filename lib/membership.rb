class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    Membership.all << self
  end

  def self.all
    @@all
  end

end

# - Get a list of all memberships