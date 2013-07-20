class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :calories
  attr_accessor :name
  
  def healthy?
    if self.calories < 200
      true
    else
      false
    end
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end
  
  def delicious?
    if self.flavor == "black licorice"
      false
    else
      true
    end
  end
end
