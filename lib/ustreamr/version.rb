module Ustreamr::Version
  MAJOR = 0
  MINOR = 0
  PATCH  = 0

  class << self
    def to_s
      return "#{MAJOR}.#{MINOR}.#{PATCH}"
    end
  end
end
