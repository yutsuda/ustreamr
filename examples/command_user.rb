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

end

if $0 == __FILE__
  main
end


