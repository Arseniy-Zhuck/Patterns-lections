module MyMod
	@aa
	
	def setter(a)
	@aa =a
	end
	
	def getter
	@aa
	end
	
	
	def met1
	puts "met1"
	end
	
	def met2
	puts "met2"
	end
	
end


class Ar 
include MyMod
attr_accessor :ar

	def my_own_each(&block1)
		i = 0
		while i<self.ar.size
			yield(self.ar[i])
			i+=1
		end

	end
	
	def my_own_sel(&b)
		i = 0
		cur_ar=[]
		while i<self.ar.size
			if yield(self.ar[i])
				cur_ar.push(ar[i])
			end
			i+=1
		end
		return cur_ar
	end
	
end

class Ar1 < Ar

	def met3
		puts "met1"
	end
end


	def sum_n(&b)
		i=1
		s=0
		while i<10
			yield(i)
		end
		
	end



a= Ar.new
a.ar= [20,3,40,5]

a.my_own_each {|x| puts x*x}
b = a.my_own_sel {|x| x>10}
p b
a.met1
c= Ar1.new
c.ar= [2,3,5]
c.met2
c.setter(3)
puts c.@aa