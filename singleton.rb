class Main
	@@instance=nil
	attr_accessor :par1,:par2,:par3
	def self.get_instanse(par1,par2,par3)
		if @@instance then
			@@instance.set_parameters(par1,par2,par3)
		else
			@@instance = Main.new(par1,par2,par3)
		end
		return @@instance
	end

	def set_parameters(par1,par2,par3)
		self.par1= par1
		self.par2= par2
		self.par3= par3
	end

	def get_parameters
		return self.par1, self.par2, self.par3
	end

	def to_s
		a,b,c = self.get_parameters 
		return "This is object #{super}, #{a}, #{b}, #{c}"
	end	

	private def initialize(par1,par2,par3)
		self.set_parameters(par1,par2,par3)
	end

end

def do_singleton
	a = Main.get_instanse(1,2,3)
	puts a
	b = Main.get_instanse(5,6,7)
	puts a
	puts b
end

do_singleton
