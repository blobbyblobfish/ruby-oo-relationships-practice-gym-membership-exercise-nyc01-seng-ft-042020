class Lifter
  attr_reader :name, :lift_total

  @@all = []
  @@lift_total_all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
    Lifter.lift_total_all << @lift_total
  end

  def self.all
    @@all
  end

  def self.lift_total_all
    @@lift_total_all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_lift_total
    #sum lift totals and divide by lift count
    lift_total_all.sum / lift_total_all.count
  end

  def total_cost
    cost_array = self.memberships.map do |membership|
      membership.cost
    end
    cost_array.sum
  end

  def new_gym_membership (gym, cost)
    Membership.new(cost, self, gym)
  end

end
