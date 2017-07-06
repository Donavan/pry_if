require 'pry_if/version'

class Object
  def pry_if(flag=nil, object=nil, hash={})
    flag = yield if flag.nil?
    return unless flag
    require 'pry' unless defined? Pry
    Pry.config.output = STDOUT
    if object.nil? || Hash === object
      Pry.start(self, object || {})
    else
      Pry.start(object, hash)
    end
  end
end
