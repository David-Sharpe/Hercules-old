class WeightBreakdown
  WEIGHTS = [2.5, 5.0, 10.0, 25.0, 45.0]
  
  def initialize(weight)
    @weight = weight
  end
  
  def convert
    @weight =  (@weight - 45) / 2.0
    return break_down(@weight, bah, {})
  end
  
  def bah
    [2.5, 5.0, 10.0, 25.0, 45.0]
  end
  
  private
  
  def break_down(weight, denomination, result)
    if weight == 0 then
      return result
    else
      current_denomination = denomination.pop
      quantity = (weight / current_denomination).floor
      result[current_denomination] = quantity
      return break_down(weight % current_denomination, denomination, result)
    end
  end
end
