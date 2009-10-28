class Ustreamr::Channel
  include Ustreamr::Command
  
  def initialize
    @@base_uri = [Ustreamr::Base::api_host, Ustreamr::Base::format, 'channel'].join('/')
  end
 

  # Get information about the channel subject
  #
  # The properties that return from the getInfo command represent all that 
  # can be known about the channel subject. Note, getInfo will return all 
  # properties whether or not the property has a value. It's a quick way to 
  # see the properties for the "channel" subject area. For a detailed dis-
  # cussion of how the channel UID is defined please refer to the table Fields
  # in a Generalized API Reques  
  #
  # +URL GET method example+ 
  #  http://api.ustream.tv/html/channel/api-test-show/getInfo?key=yourDevKey
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
  def get_info(channel_name)
    uri = create_api_uri(@@base_uri, channel_name, 'getInfo')
    return get(uri)
  end
	    

  # Get specific a property's value for the channel
  #
  # This command returns a specific property's value for that channel. 
  # getValueOf can retrieve any of the properties that getInfo provides.  This 
  # command is used best where you want a specific value about a channel and do 
  # not want to process other information about that channel.
  # 
  # +URL GET method example+ 
  #  http://api.ustream.tv/html/channel/api-test-show/getValueOf/description?key=yourDevKey
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
  def get_value_of(channel_name, parameter)
    uri = create_api_uri(@@base_uri, channel_name, 'getValueOf')
    return get_with_parameters(uri, parameter)
  end

		   
  # Get the integer UID for the channel    
  # 
  # This command returns just the integer UID for the channel. This is a 
  # shortcut method to getValueOf for "uid".  The input paramater is a text 
  # string containing the channel title as represented in the channel URL, 
  # or else a fully qualified pathname to the channel page (http://www.ust-
  # ream.tv/channel/api-test-show ) For a detailed discussion of how the cha-
  # nnel title is extracted from the URL please refer to the table Fields in 
  # a Generalized API Request earlier in the documentation.
  #
  # +URL GET method example+
  #  http://api.ustream.tv/html/channel/api-test-show/getId?key=yourDevKey
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
  # 
  def get_id(channel_name)
    return get_value_of(channel_name, :id)
  end


  # Get the embed tag for the show
  #
  # This command returns just the embed tag for the show, useful if you want 
  # to embed the show in a page. The embed tag is also returned via getInfo. 
  # This call is a shortcut.
  #
  # +URL GET method example+
  #  http://api.ustream.tv/html/channel/api-test-show/getEmbedTag?key=yourDevKey
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
  # 
  # 
  def get_embed_tag(channel_name)
    uri = create_api_uri(@@base_uri, channel_name, 'getEmbedTag')
    return get(uri)
  end


  # Get the embed tag customized withe any options 
  #
  # This command returns just the embed tag for the show, but with sizing and 
  # other customization options.
  #
  # +URL GET method example+
  # http://api.ustream.tv/html/channel/api-test-show/getCustomEmbedTag?key=yourDevKey&params=autoplay:false;mute:false;height:100;width:100
  # (Params: autoplay:false; mute:false; height:100; width:100)
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
  # 
  # 
  def get_custom_embed_tag(channel_name)
    uri = create_api_uri(@@base_uri, channel_name, 'getCustomEmbedTag')
    return get(uri)
  end

  
  # Get the list of all channels that belongs to the user 
  # 
  # This command is similar to the same call in the User subject area, and 
  # returns all the channels that belong to the user who is owner of the 
  # channel UID provided. Meaning that if you have a UID for a channel you 
  # can call this command and get the list of all the other channels (if 
  # there are any more) owned by the same user. It may consist of just the 
  # same channel listed again because most users have only a single show. 
  # But if not, then all channels will be listed in the results. 
  #
  # === Parameters
  # * +channel_name+ -
  #  
  #
  # === Return Value
  #
  #
  #
  # === Exceptions
  # None
  #
  #
  # === Example
  #
  #
  # 
  # 
  # 
  def list_all_channels(channel_name)
    uri = create_api_uri(@@base_uri, channel_name, 'listAllChannles')
    return get(uri)
  end


  # Get comments for the channel
  #
  # This command returns any comments for the channel specified by the UID.  
  # They will be returned as an array of comment arrays.  Output is truncated 
  # to the ten most recent comments.
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
  # 
  # 
  def get_comments(channel_name)
    uri = create_api_uri(@@base_uri, channel_name, 'getComments')
    return get(uri)
  end


  # Get user-generated channel tags
  #  
  # getTags is a handy shortcut that returns only user-generated channel tags. 
  # If there are tags, they will be returned as an array of tag arrays. Note, 
  # today only Ustream.TV users can generate tags for their own channel. 
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
  def get_tags
    uri = create_api_uri(@@base_uri, channel_name, 'getTags')
    return get(uri)
  end


  # Get the result search by parameters  
  #
  # In place of the unique identifier, you should use a scope operator (any 
  # of recent, newest, popular, or live) to specify scope and sorting, and 
  # your criteria are passed in the params position of the API request. 
  # Search is discussed in greater detail in the section entitled, API-based 
  # Search Engine.
  #
  # === Parameters
  # * +channel_name+ -
  #  
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
  # 
  # 
  def search
#    uri = [@@base_uri, channel_name, 'getEmbedTag'].join('/')
#    return get(uri)
  end

end

