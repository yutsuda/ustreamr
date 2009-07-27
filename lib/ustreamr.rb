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
require 'open-uri'

# rubygems library
require 'json'

# local library 
require_local 'ustreamr/version'
require_local 'ustreamr/base'
require_local 'ustreamr/ext'
require_local 'ustreamr/command'
