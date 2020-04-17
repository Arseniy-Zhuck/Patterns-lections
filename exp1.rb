require 'fox16'
app = Fox::FXApp.new
main = Fox::FXMainWindow.new(app, "Hello, World!" , :width => 400, :height => 200)
app.create
main.show(Fox::PLACEMENT_SCREEN)
app.run