begin  
  raise 'A test exception.'  
rescue StandardError => e  
  puts e.message  
  puts e.backtrace.inspect  
end 


def raise_exception  
  puts 'I am before the raise.'  
  raise 'An error has occured'  
  puts 'I am after the raise'  
end  
# descomente a linha a seguir para chamar o método que lança a exceção
# raise_exception


def raise_and_rescue  
  begin  
    puts 'I am before the raise.'
    raise 'An error has occured.'
    puts 'I am after the raise.'
  rescue  
    puts 'I am rescued.'
  end  
  puts 'I am after the begin block.'
end  
puts raise_and_rescue

## Exemplo de argument error
def inverse(x)  
  raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric  
  1.0 / x  
end  

begin
  puts inverse(2)  
  puts inverse('not a number') 
rescue ArgumentError => e
  puts e
end

## Seja específico na hora de capturar uma exceção
begin
  raise 'This exception will be rescued!'
rescue StandardError => e
  puts "Rescued: #{e.inspect}"
rescue AnotherError => e
  puts "Rescued, but with a different block: #{e.inspect}"
end

## Exemplo com File.read
begin
  File.read("does/not/exist")
rescue SystemCallError => e
  puts "Rescued: #{e.inspect}"
end

## Exemplo com todas as palavras-chave que podem ser usadas no tratamento de exceções
puts '--------- Exemplo com todas as palavras-chave que podem ser usadas no tratamento de exceções ----------'
begin
  raise ArgumentError, 'error!!!'
rescue ArgumentError => e
  puts "Exceção capturada: #{e.inspect}."
else
  puts 'Executo quando não ocorre a exceção!'
ensure
  puts 'Sempre executo no final, independente de qualquer coisa!'
end

puts '--------- Exemplo com todas as palavras-chave que podem ser usadas no tratamento de exceções ----------'
begin
  puts 'Não lancei exceção!'
rescue ArgumentError => e
  puts "Exceção capturada: #{e.inspect}."
else
  puts 'Executo quando não ocorre a exceção!'
ensure
  puts 'Sempre executo no final, independente de qualquer coisa!'
end


### Full example
puts '--------- Full example ----------'

class Name  
  # Define default getter methods, but not setter methods.  
  attr_reader :first, :last  
  # When someone tries to set a first name, enforce rules about it.  
  def first=(first)  
    if first == nil or first.size == 0  
      raise ArgumentError.new('Everyone must have a first name.')  
    end  
    first = first.dup  
    first[0] = first[0].chr.capitalize  
    @first = first  
  end  
  
  # When someone tries to set a last name, enforce rules about it.  
  def last=(last)  
    if last == nil or last.size == 0  
      raise ArgumentError.new('Everyone must have a last name.')  
    end  
    @last = last  
  end  
  
  def full_name  
    "#{@first} #{@last}"  
  end  
  # Delegate to the setter methods instead of setting the instance  
  # variables directly.  
  def initialize(first, last)  
    self.first = first  
    self.last = last  
  end  
end  
  
jacob = Name.new('Jacob', 'Berendes')  
jacob.first = 'Mary Sue'  
jacob.full_name # => "Mary Sue Berendes"  
john = Name.new('john', 'von Neumann')  
john.full_name # => "John von Neumann"  
john.first = 'john'  
john.first # => "John"  
john.first = nil  