class Person
  
# instant objects initializes with any number of attributes
# iterate over each attribute noting each key and it's value
# for each key, create attr_accessor of the the key, and use send (setter method) to set the value of the key to it's original value
#   Example: attr_accessor :key,  self.send("#{key}=", value) OR self.key = value

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end
