require 'fox16'
include Fox
 
class TwoButtonUpdateWindow < FXMainWindow
  def initialize(app)
    # Сначала инициализируем базовый класс.
    super(app, "Update Example", nil, nil,
    DECOR_TITLE | DECOR_CLOSE)
    # Первая кнопка:
    @button_one = FXButton.new(self, "Enable Button 2")
    @button_one_enabled = true
    # Вторая кнопка:
    @button_two = FXButton.new(self, "Enable Button 1")
    @button_two.disable
    @button_two_enabled = false
    # Устанавливаем обработчики сообщений.
    @button_one.connect(SEL_COMMAND, method(:onCommand))
    @button_two.connect(SEL_COMMAND, method(:onCommand))
    @button_one.connect(SEL_UPDATE, method(:onUpdate))
    @button_two.connect(SEL_UPDATE, method(:onUpdate))
 end

 def onCommand(sender, sel, ptr)
    # Обновить состояние приложения.
    @button_one_enabled = !@button_one_enabled
    @button_two_enabled = !@button_two_enabled
 end
 
 def onUpdate(sender, sel, ptr)
    # Обновить кнопки в зависимости от состояния приложения.
    @button_one_enabled ?
    @button_one.enable : @button_one.disable
    @button_two_enabled ?
    @button_two.enable : @button_two.disable
 end

end

application = FXApp.new
main = TwoButtonUpdateWindow.new(application)
application.create
main.show(PLACEMENT_SCREEN)
application.run