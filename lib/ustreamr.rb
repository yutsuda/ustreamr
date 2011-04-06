#
#= Ustreamr: Ustream API Wrapper
#
#Authors::	Yu Tsuda
#Version::	0.0.0
#Copyright::	Copyright (C) Yu Tsuda, 2009. All rights reserved. 
#License::	Ruby License
#
#
#= See Also
#
# 1. {Ustream API document}[http://developer.ustream.tv/docs/Home.html]

module Ustreamr

end

def require_local(suffix)
  require File.expand_path(File.join(File.dirname(__FILE__), suffix))
end


# standard library
%w(
  open-uri
).each{|lib| require lib}

# rubygems library
%w(
  rubygems
  json
  twitter
).each{|gem| require gem}

# local files
%w(
  ustreamr/version
  ustreamr/base
  ustreamr/ext
  ustreamr/command
).each{|file| require_local file}

