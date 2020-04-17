require 'fox16'
include Fox

class HelloWindow < FXMainWindow
	def initialize(app)
		super(app, "Hello, World!", :width => 200, :height => 100)
	end
	
	def create
		super
		show(PLACEMENT_SCREEN)
	end
end

app = FXApp.new
HelloWindow.new(app)
app.create
app.run