# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# gym - name
gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("Equinox")
gym3 = Gym.new("24 Hours")

# lifter - name, lift_total
lifter1 = Lifter.new("Tashawn", 100)
lifter2 = Lifter.new("Ryan", 200)
lifter3 = Lifter.new("Anna", 300)

# membership - cost, lifter, gym
membership1 = Membership.new(100, lifter1, gym1)
membership2 = Membership.new(200, lifter2, gym1)
membership3 = Membership.new(100, lifter3, gym3)

# lifter methods
Lifter.all
Lifter.average_lift_total
lifter1.memberships
lifter1.gyms
lifter1.new_gym_membership("Equinox", 1000)
lifter1.total_cost

# gym methods
Gym.all
gym1.memberships
gym1.lifters
gym1.lifter_name
gym1.combined_lift_total

# membership methods
Membership.all


binding.pry

puts "Gains!"
