module Ustreamr::Command

 :private
  def create_api_uri(obj)
    
  end

  def get(uri)
    result = open(uri)
    if result.class == StringIO
      return JSON.parse(result.string).to_sym[:results]
    else 
      return nil
    end 
  end 

  def get_with_parameters(uri, parameters)
    uri_with_parameters = [uri, parameters.to_s].join('/')
    return get(uri_with_parameters)
  end

end

require_local 'ustreamr/command/user'
require_local 'ustreamr/command/channel'
require_local 'ustreamr/command/video'
require_local 'ustreamr/command/stream'
require_local 'ustreamr/command/system'
