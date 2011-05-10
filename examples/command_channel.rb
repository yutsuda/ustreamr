#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require File.join(File.dirname(__FILE__), '..', 'lib', 'ustreamr')

def main()
  stream_command = Ustreamr::Stream.new
  channel_command = Ustreamr::Channel.new
  
  doc = stream_command.get_random
  channel_name = doc[:url_title_name]
  
  puts channel_name 
  
  puts "\n###### getInfo #{channel_name}"
  p channel_command.get_info(channel_name)
  
  puts "\n##### getValueOf #{channel_name}"
  p channel_command.get_value_of(channel_name, :description)
  
  puts "\n##### getId #{channel_name}"
  p channel_command.get_id(channel_name)
  
  puts "\n##### getEmbedTag #{channel_name}"
  p channel_command.get_embed_tag(channel_name)
  
  #puts "getCustomEmbedTag #{channel_name}"
  #p channel_command.get_custom_embed_tag(channel_name)
  
  puts "\n##### getComments #{channel_name}"
  p channel_command.get_comments(channel_name)

  puts "\n##### search {live, all}"
  p channel_command.search("live", 
                           "all", 
                           {:limit=>3, :page=>1})


end

if $0 == __FILE__
  main
end
