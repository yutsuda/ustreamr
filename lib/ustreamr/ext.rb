class Object
  def array?
    return self.class == Array
  end

  def string?
    return self.class == String
  end

  def hash?
    return self.class == Hash
  end  
end

class Hash
  def to_sym
    key = nil
    value = nil
    hash = self.inject({}){|h, k|
      if k[0].string?
        key = k[0].gsub(/([A-Z])/){'_'+$1.downcase}.to_sym
      else 
        key = k[0]
      end 

      if k[1].hash?
        value = k[1].to_sym
      elsif k[1].array?
        value = k[1].map{|v| v.hash? ? v.to_sym : v}
      else 
        value = k[1]
      end
      h.merge(key => value)
    }
    return hash
  end
end

