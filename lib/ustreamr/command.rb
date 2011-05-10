module Ustreamr::Command

 :private
  def create_api_uri(base_uri, command_uid, command)
    return [base_uri, URI.encode(command_uid), command].join('/')
  end

  def get(uri)
    result = open(uri)
    return JSON.parse(result.read).to_sym[:results]
  end 

  def get_with_parameters(uri, params = {})
    params_str = params.map{|k, v| k.to_s + '=' + v.to_s}.join('&')
    uri_with_params = uri + '?' + params_str
    return get(uri_with_params)
  end

end

%w(
ustreamr/command/user
ustreamr/command/channel
ustreamr/command/video
ustreamr/command/stream
ustreamr/command/system
).each{|file| require_local file}
