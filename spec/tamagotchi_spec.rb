require 'rspec'
require 'tamagotchi'
require 'pry'

describe("Tamagotchi") do
  describe("#initialize") do
    it("sets the name and a few other properties") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end
  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
    it("decreases the amount of sleep and activity the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.sleep_level()).to(eq(9))
      expect(my_pet.activity_level()).to(eq(9))
    end

  end
  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_alive?()).to(eq(true))
    end
    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.food_level= 0
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end
  describe("#feed") do
    it("takes in number and adds it to food level") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.feed(5)).to(eq(15))
    end
  end
  describe("#sleep") do
    it("takes in number and adds it to sleep level") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.sleep(5)).to(eq(15))
    end
  end
end
