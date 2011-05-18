%w(
  ustreamr/ext/object
  ustreamr/ext/hash
).each{|file| require_local file}

Object.send(:include, ObjectExtension)
Hash.send(:include, HashExtension)
