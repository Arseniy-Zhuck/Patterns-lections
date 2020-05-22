class Op1Behavior
	def makeop1
		puts "Now we have different ways to make op1"
		puts "For this method we perform:"
	end
end

class Op1Strategy1 < Op1Behavior
	def makeop1
		super
		puts "Strategy number 1"
	end
end

class Op1Strategy2 < Op1Behavior
	def makeop1
		super
		puts "Strategy number 2"
	end
end



class Op2Behavior

	def makeop2
		puts "Now we have different ways to make op2"
		puts "For this method we perform another way: "
		puts "READY! STEADY! GO!!!"
	end

	def wzhuh
		puts "WZHUUUHHH"
		puts "WZHUUUHHH"
		puts "WZHUUUHHH"
	end

	def finish
		puts "WZHUUUHHH"
		puts "And thats all"
	end

end

class Op2Strategy1 < Op2Behavior
	def op2
		super
		wzhuh
		puts "Strategy number 1"
		finish
	end
end

class Op2Strategy2 < Op2Behavior
	def op2
		super
		wzhuh
		puts "Strategy number 2"
		finish
	end
end


class MainClass
	attr_accessor :op1Behavior,:op2Behavior, :name

	def initialize(name)
		self.name= name
	end

	def makeop1
		self.op1Behavior.makeop1
	end

	def makeop2
		self.op2Behavior.makeop2
	end

	def makeop3
		puts "op3 is made by anyone"
	end

	def to_s
		return "#{self.name}  of class #{self.class}"
	end

end

class Class1 < MainClass
	def initialize(name)
		super
		self.op1Behavior= Op1Strategy1.new
		self.op2Behavior= Op2Strategy1.new
	end
end

class Class2 < MainClass
	def initialize(name)
		super
		self.op1Behavior= Op1Strategy1.new
		self.op2Behavior= Op2Strategy2.new
	end
end

class Class3 < MainClass
	def initialize(name)
		super
		self.op1Behavior= Op1Strategy2.new
		self.op2Behavior= Op2Strategy1.new
	end
end

class Class4 < MainClass
	def initialize(name)
		super
		self.op1Behavior= Op1Strategy2.new
		self.op2Behavior= Op2Strategy2.new
	end
end

def main
	obj1= Class1.new("Petr")
	puts obj1
	obj1.makeop1
	obj1.makeop2
	obj1.makeop3
	obj2= Class2.new("Pavel")
	puts obj2
	obj2.makeop1
	obj2.makeop2
	obj2.makeop3
	obj3= Class3.new("Fedor")
	puts obj3
	obj3.makeop1
	obj3.makeop2
	obj3.makeop3
	obj4= Class4.new("Fedor")
	puts obj4
	obj4.makeop1
	obj4.makeop2
	obj4.makeop3

end

main