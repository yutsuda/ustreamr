#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require File.join(File.dirname(__FILE__), '..', 'lib', 'ustreamr')

def main()
  stream_command = Ustreamr::Stream.new
  user_command = Ustreamr::User.new

  doc = stream_command.get_random

  user_name = doc[:user_name]

  puts user_name 
  
  puts "\n###### getInfo #{user_name}"
  p user_command.get_info(user_name)

  puts "\n##### getValueOf #{user_name}"
  p user_command.get_value_of(user_name, :about)

  puts "\n##### getId #{user_name}"
  p user_command.get_id(user_name)

  puts "\n##### listAllChannels #{user_name}"
  p user_command.list_all_channels(user_name)

  puts "\n##### listAllVideos #{user_name}"
  p user_command.list_all_videos(user_name)

  puts "\n##### getComments #{user_name}"
  p user_command.get_comments(user_name)

  puts "\n##### search {live, all}"
  p user_command.search("live", 
                        "all", 
                        {:limit=>3, :page=>1})

end

if $0 == __FILE__
  main
end


