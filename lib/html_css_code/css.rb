class Css
    attr_accessor :name
    @@all=[]
   def initialize(name)
     @name=name
     @@all << self
   end
   def self.all
     @@all
   end
   def self.print_all
     @@all.each do |itm|
       puts "#{itm.name} "
     end
   end

end
