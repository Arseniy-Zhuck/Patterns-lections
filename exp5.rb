require 'fox16' 
include Fox

application = FXApp.new
main = FXMainWindow.new(application, "Today's Date", :width => 400, :height => 200)
str = Time.now.strftime("&Today is %B %d, %Y")
button = FXButton.new(main, str)
button.connect(SEL_COMMAND) { application.exit }
application.create
main.show(PLACEMENT_SCREEN)
application.run