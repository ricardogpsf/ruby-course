class Integer
  def +(val)
    self * val
  end

  def print_info
    puts "Eu sou o numero: #{self}"
  end

  def print_info_2
    puts "Eu sou o numero (metodo 2): #{self}"
  end

  def print_info_3
    puts "Eu sou o numero (metodo 3): #{self}"
  end
end

num = 10 + 10 # Observer que modificamos o comportamento do método "+" da classe Integer, agora ele multplica o valor por ele mesmo
puts num

method_names = [:print_info, :print_info_2, :print_info_3]
method_names.each { |name| num.send(name) }