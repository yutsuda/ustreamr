class Ustreamr::User
  include Ustreamr::Command

  def initialize
    @@base_uri = [Ustreamr::Base::api_host, Ustreamr::Base::format, 'user'].join('/')
  end

  def get_info(user_name)
    uri = create_api_uri(@@base_uri, user_name, 'getInfo')
    return get(uri)
  end

  def get_value_of(user_name)

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
