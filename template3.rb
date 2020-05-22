class Big_class
	attr_accessor :is_min
	def op1
		puts "yeahhh"
		puts "u-ha-ha"
		op2
		puts "Bugaga"
		op3
		puts "finish"
		if self.is_min then
			op4
		end
	end
	def op2
	end
	def op3
	end
	def op4
	end
end
class Small_class < Big_class
	def initialize
		self.is_min= false
	end
	def op2
		puts "main_shtuka"
	end
	def op3
		puts "Valeraaaaa"
	end
end

class Min_class <Big_class
	def initialize
		self.is_min= true
	end
	def op2
		puts "fantaser, ti menya nazivala"
	end
	def op3
		puts "bumbox"
	end
	def op4
		puts "PS: hop hop hop chida hop"
	end
end


puts Small_class.new.op1
puts Min_class.new.op1