class Big_class
	def op1
		
	end
end
class Small_class < Big_class
	def op1
		puts "yeahhh"
		puts "u-ha-ha"
		puts "main_shtuka"
		puts "Bugaga"
		puts "Valeraaaaa" 
		puts "finish"
	end
end

class Min_class <Big_class
	def op1
		puts "yeahhh"
		puts "u-ha-ha"
		puts "fantaser, ti menya nazivala"
		puts "Bugaga"
		puts "bumbox" 
		puts "finish"
		puts "PS: hop hop hop chida hop"
	end
end


puts Small_class.new.op1
puts Min_class.new.op2
