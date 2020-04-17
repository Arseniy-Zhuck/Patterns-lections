require 'fox16' # Используются привязки к FOX 1.6.
include Fox

application = FXApp.new
main = FXMainWindow.new(application, "Today's Date")
str = Time.now.strftime("&Today is %B %d, %Y")
button = FXButton.new(main, str)
button.connect(SEL_COMMAND) { application.exit }
application.create
main.show(PLACEMENT_SCREEN)
application.run