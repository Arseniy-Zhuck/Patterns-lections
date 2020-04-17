require 'fox16'
include Fox
 
class TextWindowRead < FXMainWindow
  def initialize(app)
    # Сначала инициализируем базовый класс.
    super(app, "TextWindowRead Example", nil, nil,
    DECOR_TITLE | DECOR_CLOSE)
    # Первая кнопка:
    simple = FXTextField.new(main, 20, nil, 0,
    JUSTIFY_RIGHT|FRAME_SUNKEN|
    FRAME_THICK|LAYOUT_SIDE_TOP)
    simple.text = "Simple Text Field"
    passwd = FXTextField.new(main, 20, nil, 0,
    JUSTIFY_RIGHT|TEXTFIELD_PASSWD|
    FRAME_SUNKEN|FRAME_THICK|
    LAYOUT_SIDE_TOP)
    passwd.text = "Password"
    real = FXTextField.new(main, 20, nil, 0,
    TEXTFIELD_REAL|FRAME_SUNKEN|
    FRAME_THICK|LAYOUT_SIDE_TOP|
    LAYOUT_FIX_HEIGHT, 0, 0, 0, 30)
    real.text = "1.0E+3"
    int = FXTextField.new(main, 20, nil, 0, TEXTFIELD_INTEGER|
    FRAME_SUNKEN|FRAME_THICK|
    LAYOUT_SIDE_TOP|LAYOUT_FIX_HEIGHT,
    0, 0, 0, 30)
    int.text = "1000"
 end

 
end

application = FXApp.new
main = TextWindowRead.new(application)
application.create
main.show(PLACEMENT_SCREEN)
application.run