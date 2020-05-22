class Big_class
	def op1
		puts "yeahhh"
		puts "u-ha-ha"
	end
end
class Small_class < Big_class
	def op1
		super
		puts "main_shtuka"
	end
end

puts Small_class.new.op1
