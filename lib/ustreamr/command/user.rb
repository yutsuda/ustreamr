class Ustreamr::User
  include Ustreamr::Command

  def initialize
    @@base_uri = [Ustreamr::Base::api_host, Ustreamr::Base::format, 'user'].join('/')
  end

  # Get information about the user subject
  #
  # The properties that return from the getInfo command represent all that 
  # can be known about the user defined by the UID.  Note, to protect user 
  # privacy, a call will not return personally identifying data such as full 
  # name, e-mail address, home town, and the like. Once you run a getInfo, 
  # you will have a listing of the values for that UID. getInfo will return 
  # all properties whether or not the property has a value. It's a quick way 
  # to see the available properties for the "user" subject area. For a detailed 
  # discussion of how the user UID is defined please refer to the table Fields 
  # in a Generalized API Request earlier in the documentation.
  #
  # +URL GET method example+ 
  #  http://api.ustream.tv/html/user/apiuser/getInfo?key=yourDevKey
  #
  # === Parameters
  # * +channel_name+ -
  #  
  #
  # === Return Value
  #
  #
  # === Exceptions
  # None
  #
  # === Example
  #
  #
  #
  def get_info(user_name)
    uri = create_api_uri(@@base_uri, user_name, 'getInfo')
    return get(uri)
  end


  # Get specific a property's value for the user
  # 
  # This command returns a specific property value for the user. getValueOf 
  # can retrieve any of the properties that getInfo provides.   For example, 
  # getValueOf can return their login name, number of comments, their website 
  # of record, or their user rating by other users.
  # 
  # +URL GET method example+ 
  # http://api.ustream.tv/html/user/apiuser/getValueOf/id?key=yourDevKey
  #
  # === Parameters
  # * +channel_name+ -
  #  
  # === Return Value
  #
  #
  #
  # === Exceptions
  # None
  #
  # === Example
  #
  #
  # 
  def get_value_of(user_name, parameter)
    uri = create_api_uri(@@base_uri, user_name, 'getValueOf')
    return get_with_parameters(uri, parameter)
  end

  def get_id(user_name)

  end

  def list_all_channels(user_name)
  
  end

  def list_all_videos(user_name)
  
  end

  def get_comments(user_name)
  
  end

  #def search(user_name, search_scope, :sort_options)
 
  #end

end
