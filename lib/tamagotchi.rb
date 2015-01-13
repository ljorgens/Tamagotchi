class Tamagotchi
  define_method :initialize do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end
  define_method :food_level do
    @food_level
  end
  define_method :name do
    @name
  end
  define_method :sleep_level do
    @sleep_level
  end
  define_method :activity_level do
    @activity_level
  end
  define_method :time_passes do
    @food_level -= 1
    @sleep_level -= 1
    @activity_level -= 1
  end
  define_method :is_alive? do
    @food_level > 0
  end
  define_method :food_level= do |level|
    @food_level = level
  end
  define_method :feed do |amount|
    @food_level += amount
  end
  define_method :sleep do |amount|
    @sleep_level += amount
  end
end
