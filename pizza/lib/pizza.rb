class Pizza
  attr_reader :description, :time_baked, :name, :toppings
  attr_writer :toppings, :time_baked
  def initialize(name)
    @description = nil
    @time_baked = 0
    @name = name
    @toppings = []
  end

  def required_bake_time
    max_val = 0
    toppings.each do |top_obj|
      if top_obj.required_bake_time > max_val
        max_val = top_obj.required_bake_time
      end
    end
    return 900 + max_val
  end

  def bake(time)
    self.time_baked = time_baked + time
    self.toppings.each do |top_obj|
      top_obj.time_baked = top_obj.time_baked + time
    end
  end

  def finished_toppings
    finished = []
    toppings.each do |top_obj|
      if top_obj.baked?
        finished << top_obj.name
      end
    end
    return finished
  end

  def unfinished_toppings
    unfinished = []
    toppings.each do |top_obj|
      if top_obj.baked? == false
        unfinished << top_obj.name
      end
    end
    return unfinished
  end

  def baked?
    if time_baked >= required_bake_time
      return true
    else
      return false
    end
  end

end

class Topping

  attr_reader :name, :required_bake_time, :time_baked
  attr_writer :time_baked

  def initialize(name, bake_time)
    @name = name
    @required_bake_time = bake_time
    @time_baked = 0
  end

  def bake(time)
    self.time_baked = time_baked + time
  end

  def baked?
    if time_baked >= required_bake_time
      return true
    else
      return false
    end
  end


end
