require 'pry'

class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.each do |membership|
      membership.lifter.name
    end
  end

  def lifter_name
    #iterate into an array of this gym's memberships and return the lifter's name
    memberships.map do |membership|
      membership.lifter.name
    end
  end

  def combined_lift_total
    #get all lifters with memberships to the gym and sum their lift_totals
    lift_total_array = memberships.map do |membership|
      membership.lifter.lift_total
    end
    lift_total_array.sum
    binding.pry
  end

end

