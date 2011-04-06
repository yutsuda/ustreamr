class Hash
  def to_sym
    value = nil
    hash = self.inject({}){|h, k|
      if k[1].class == Hash
        value = k[1].to_sym
      elsif k[1].class == Array
       # value = k[1].map{|key| key.to_sym if key.class == Hash}
        value = k[1].map{|key| key.class == Hash ? key.to_sym : key}
      else 
        value = k[1]
      end
      h.merge(k[0].gsub(/([A-Z])/){'_'+$1.downcase}.to_sym => value)
    }
    return hash
  end
end

