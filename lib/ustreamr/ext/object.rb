module ObjectExtension
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

