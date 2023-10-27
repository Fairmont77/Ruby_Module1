class Phone
  attr_accessor :id, :surname, :name, :patronymic, :address, :credit_card_number, :debit, :credit, :city_calls_duration, :intercity_calls_duration

  def initialize(id, surname, name, patronymic, address, credit_card_number, debit, credit, city_calls_duration, intercity_calls_duration)
    @id = id
    @surname = surname
    @name = name
    @patronymic = patronymic
    @address = address
    @credit_card_number = credit_card_number
    @debit = debit
    @credit = credit
    @city_calls_duration = city_calls_duration
    @intercity_calls_duration = intercity_calls_duration
  end

  def set_tun(id, surname, name, patronymic, address, credit_card_number, debit, credit, city_calls_duration, intercity_calls_duration)
    @id = id
    @surname = surname
    @name = name
    @patronymic = patronymic
    @address = address
    @credit_card_number = credit_card_number
    @debit = debit
    @credit = credit
    @city_calls_duration = city_calls_duration
    @intercity_calls_duration = intercity_calls_duration
  end

  def get_tun
    [id, surname, name, patronymic, address, credit_card_number, debit, credit, city_calls_duration, intercity_calls_duration]
  end

  def to_string
    "Id: #{id}, Surname: #{surname}, Name: #{name}, Patronymic: #{patronymic}, Address: #{address}, Credit Card Number: #{credit_card_number}, Debit: #{debit}, Credit: #{credit}, City Calls Duration: #{city_calls_duration}, Intercity Calls Duration: #{intercity_calls_duration}"
  end
end

phones = [
  Phone.new(1, "Doe", "John", "Michael", "123 Main St", "1234 5678 9012 3456", 231479, 124, 50, 20),
  Phone.new(2, "Smith", "Jane", "Alice", "456 Oak Ave", "5678 9012 3456 7890", 800, 300, 40, 15),
  Phone.new(3, "Johnson", "Robert", "William", "789 Elm St", "2468 1357 9135 7913", 1200, 700, 60, 30),
  Phone.new(4, "Williams", "Mary", "Elizabeth", "567 Cedar Ave", "9876 5432 1098 7654", 1500, 900, 70, 40),
  Phone.new(5, "Джонс", "Іван", "Михайлович", "вул. Головна, 123", "1234 5678 9012 3456", 1000, 500, 50, 20),
  Phone.new(6, "Сміт", "Ірина", "Олександрівна", "просп. Дубовий, 456", "5678 9012 3456 7890", 800, 300, 40, 15),
  Phone.new(7, "Джонсон", "Роберт", "Вікторович", "вул. Вишнева, 789", "2468 1357 9135 7913", 1200, 700, 60, 30),
  Phone.new(8, "Вільямс", "Марія", "Олександрівна", "вул. Ялинкова, 567", "9876 5432 1098 7654", 1500, 900, 70, 40),
  Phone.new(9, "Петренко", "Олександр", "Іванович", "пров. Сосновий, 23", "4567 1234 5678 9012", 1100, 400, 45, 25),
  Phone.new(10, "Коваль", "Софія", "Петрівна", "вул. Липова, 78", "7890 4321 6543 2109", 950, 600, 55, 35)
]

loop do
  puts "Виберіть опцію: [A] звіт про абонентах, у яких час внутрішньоміських розмов перебільшує задане, [B] звіт про абонентах, які користувались міжгородським зв'язком, [C] звіт про абонентів в алфавітному порядку, або [X] щоб вийти."
  option = gets.chomp.upcase

  case option
  when 'A'
    puts "Звіт про абонентах з перевищеним часом внутрішньоміських розмов:"
    phones.each do |phone|
      puts phone.to_string if phone.city_calls_duration > 50
    end
  when 'B'
    puts "Звіт про абонентах, які користувались міжгородським зв'язком:"
    phones.each do |phone|
      puts phone.to_string if phone.intercity_calls_duration.positive?
    end
  when 'C'
    puts "Звіт про абонентів в алфавітному порядку:"
    phones.sort_by! { |phone| phone.surname }
    phones.each do |phone|
      puts phone.to_string
    end
  when 'X'
    break
  else
    puts "Невірний вибір. Спробуйте ще раз."
  end
end