class Ustreamr::Stream
  include Ustreamr::Command

  def initialize
    @@base_uri = [Ustreamr::Base::api_host, Ustreamr::Base::format, 'stream'].join('/')
  end

  # Fetches one item. Returns information about the most recent show that started broadcasting.
  # 
  def get_recent
    uri = [@@base_uri, 'all', 'getRecent'].join('/')
    return get(uri)
  end

  # Fetches one item. Returns information about the currently running show having the most viewers.
  #
  def get_most_viewers
    uri = [@@base_uri, 'all', 'getMostViewers'].join('/')
    return get(uri)
  end

  #
  # Fetches one item. Returns information about a currently on-air show pulled entirely at random from the pool of all on-air broadcasts.
  #
  def get_random
    uri = [@@base_uri, 'all', 'getRandom'].join('/')
    result = get(uri)
    if result.class == Array
      return result.first 
    else
      return nil
    end
  end
  
  # This command returns all the current live shows that are new where new is defined as newly created by their owners. The current default value for new is any show less than 1 hour old. This default value may be changed by Ustream.TV at any time. The actual rule used to determine newness will be returned in the 'msg' portion of the results set when you use this command. Note, the user account may or may not be new.
  #
  def get_all_new
    uri = [@@base_uri, 'all', 'getAllNew'].join('/')
    return get(uri)
  end

  def search

  end

end

