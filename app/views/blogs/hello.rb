class Model
	@@attributes = []

	def initialize
		@attributes = @@attributes
	end

	def self.field(name)
		attr_accessor name
		@@attributes << name
	end
	
end


class User < Model
	field :name
	field :age
	field :address
end



u = User.new

u.name = "pardeep bansal"
u.age = 12


print(u.inspect)