class Dessert
  def initialize(name, calories)
    @des_name = name
    @des_calories = calories
    # YOUR CODE HERE
  end
  
  # accessor methods
   def name
      @des_name
   end
   def calories
      @des_calories
   end

   # setter methods
   def name= (value)
      @des_name = value
   end
   def calories= (value)
      @des_calories = value
   end

  def healthy?
    # YOUR CODE HERE
    if @des_calories < 200
      true
    else
      false
    end
  end
  
  def delicious?
    # YOUR CODE HERE
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @des_name = name
    @des_calories = calories
    @des_flavor = flavor

    # YOUR CODE HERE
  end
  
  def flavor
      @des_flavor
   end

   # setter methods
   def flavor=(value)
      @des_flavor = value
   end

  def delicious?
    if @des_flavor == "black licorice"
      false
    else
      true
    end
    # YOUR CODE HERE
  end
end

dessert = Dessert.new('ffoo', 20)
puts dessert.healthy?
puts dessert.name
dessert.name= (4)
puts dessert.name

dessert.calories=(100)
puts dessert.calories

j1 = JellyBean.new('ffoo', 20,"nice")
j1.flavor=("great")
puts j1.flavor