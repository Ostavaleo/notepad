# Класс «Заметка», разновидность базового класса «Запись»
class Memo < Post
  # Отдельный конструктор здесь не нужен, т. к. у заметки нет дополнительных
  # переменных экземпляра.

  # Этот метод пока пустой, он будет спрашивать ввод содержимого Заметки
  def read_from_console
    puts "Новая заметка (все, что пишите до строчки \"end\"):"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  # Этот метод будет возвращать массив из строк заметки + строка-дата создания
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d_%H-%M-%S.txt")} \n\r \n\r"

    return @text.unshift(time_string)
  end
end
