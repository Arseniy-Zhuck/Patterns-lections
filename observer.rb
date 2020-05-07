module Admin
	@observers
	def registerObserver(o)
		@observers << o
	end

	def start()
		@observers=[]
	end

	def removeObserver(o)
		@observers.delete(o)
	end

	def notifyObservers()
		@observers.each do
			|o|
			o.update(self)
		end
	end
end

class Zhurnal
	include Admin
	attr_accessor :a, :name
	
	def initialize(name)
		self.name= name
		start
	end

	def read_line
		self.a=gets.chomp
	end

	def analis_line
		notifyObservers
	end

	def read_a_lot
			self.read_line
		while self.a!="exit"
			self.analis_line
			self.read_line
		end
	end
end

class Akula
	def update(o)
		puts "OUHH!!! You even don't understand what happend with #{o.name}..."
	end

	def initialize(zhurnal1:,zhurnal2: nil,zhurnal3: nil,zhurnal4: nil)
		zhurnal1.registerObserver(self)
		if zhurnal2 
			zhurnal2.registerObserver(self)
		end
		if zhurnal3 
			zhurnal3.registerObserver(self)
		end
		if zhurnal4 
			zhurnal4.registerObserver(self)
		end
	end

end


class BigTiger < Akula
	

	def update(o)
		
		if o.a.include? "Koronavirus"
			super
			puts "#{o.name} is again about ..."
			puts "Big Tiger is reporting"
		end
	end
end

class Sharp < Akula
	def update(o)
		
		if o.a.include? "Lannisters"
			super
			puts "The world is fucking off and #{o.name} again tells us only about game of thrones"
			puts "Sharp is reporting"
		end
	end
end	

class TiredAkula < Akula
	def update(o)
		super
		puts "But it doesn't matter"
		puts "tiredAkula is reporting"
	end
end
def main
	bigManZhurnal = Zhurnal.new("bigManZhurnal")
	a1=BigTiger.new(zhurnal1: bigManZhurnal)
	a2=Sharp.new(zhurnal1: bigManZhurnal)
	a3=TiredAkula.new(zhurnal1: bigManZhurnal)
	bigManZhurnal.read_a_lot
end
main