require_relative "./html_css_code/version"
# require_relative "./html_css_code/CLI"

class HTMLTag
  attr_accessor :name ,:syntax 
  @@all=[]
 def initialize(name,syntax)
   @name=name
   @syntax=syntax
   @@all << self
 end
 def self.all
   @@all
 end
 def self.print_all
   @@all.each do |itm|
       puts "#{itm.name} : #{itm.syntax} "
   end
 end
end
