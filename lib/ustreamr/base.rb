module Ustreamr::Base
  API_HOST = 'http://api.ustream.tv'
  RETURN_FORMAT = 'json'

  class << self
    def api_host
      return API_HOST
    end

    def format
      return RETURN_FORMAT
    end
  end

end

