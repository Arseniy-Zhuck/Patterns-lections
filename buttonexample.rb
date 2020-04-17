#---
# Excerpted from "FXRuby: Create Lean and Mean GUIs with Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fxruby for more book information.
#---
require 'fox16'

include Fox

class Controller
  def initialize
    @launch_sequence_activated = false
  end
  
  def activate_launch_sequence
    unless launch_sequence_activated?
      @launch_sequence_activated = true
      puts "Launch sequence activated!"
    end
  end
  
  def cancel_launch_sequence
    if launch_sequence_activated?
      @launch_sequence_activated = false
      puts "Launch sequence cancelled."
    end
  end

  def launch_sequence_activated?
    @launch_sequence_activated
  end
end

class ButtonExample < FXMainWindow
  def initialize(app)
    super(app, "Buttons", :width => 400, :height => 100)
    @controller = Controller.new
    p = FXVerticalFrame.new(self, :opts => LAYOUT_FILL_X|LAYOUT_CENTER_Y)

    activate_button = FXButton.new(p, "Activate Launch Sequence",
      :opts => BUTTON_NORMAL|LAYOUT_CENTER_X)
    activate_button.connect(SEL_COMMAND) do |sender, sel, data|
      @controller.activate_launch_sequence
    end

    activate_button.connect(SEL_UPDATE) do |sender, sel, data|
      sender.enabled = !@controller.launch_sequence_activated?  # the button is the sender
    end


    cancel_button = FXButton.new(p, "Ca&ncel Launch Sequence",
      :opts => BUTTON_NORMAL|LAYOUT_CENTER_X)

    cancel_button.connect(SEL_COMMAND) do |sender, sel, data|
      @controller.cancel_launch_sequence
    end

    cancel_button.connect(SEL_UPDATE) do |sender, sel, data|
      sender.enabled = @controller.launch_sequence_activated?
    end

  end
  
  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

if __FILE__ == $0
  FXApp.new do |app|
    ButtonExample.new(app)
    app.create
    app.run
  end
end