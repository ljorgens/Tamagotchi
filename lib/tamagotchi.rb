class Tamagotchi
  @@current_tamagotchi = []

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
  define_method :exercise do |amount|
    @activity_level += amount
  end
  define_method :sleep_level= do |level|
    @sleep_level = level
  end
  define_method :is_insane? do
    @sleep_level > 0
  end
  define_method :activity_level= do |level|
    @activity_level = level
  end
  define_method :is_depressed? do
    @activity_level > 0
  end
  define_singleton_method :current do
    @@current_tamagotchi
  end
  define_method :save do
    @@current_tamagotchi.push(self)
  end
  define_singleton_method :clear do
    @@current_Tamagotchi = []
  end
end
