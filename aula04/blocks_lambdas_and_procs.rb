5.times do
  puts "Oh, hello from inside a block!"
end

5.times { puts "hello!" }

[1, 2, 3, 4, 5].each do |number|
  puts "#{number} was passed to the block"
end
[1, 2, 3, 4, 5].each { |number| puts "#{number} was passed to the block" }

# Exibe apenas os números primos
puts [1, 2, 3, 4, 5].select { |number| number.odd? }

#
# Implementando um método que recebe um bloco de código
#
class Lista
  attr_accessor :nums
  def initialize(nums)
    @nums = nums
  end
  def each
      if block_given?
        for num in self.nums
          yield(num)
        end
      end
  end

  def for_each(&block)
    block.call()
  end

  def for_each_2(&block)
    block.call(1)
  end
end

list = Lista.new([1, 2, 3])
list.each { |i| puts "valor: #{i}"  }

proc1 = Proc.new { puts "meu bloco de codigo" } # ou pode ser escrito assim: proc1 = proc { puts "meu bloco de codigo" }
list.for_each(&proc1)

func_lambda = lambda { puts "lambda 1" } # ou pode ser escrito assim: func_lambda2 = -> { puts "lambda 2" }
list.for_each(&func_lambda)
list.for_each_2(&func_lambda) # Deve lançar uma exceção, pois for_each_2 chama o lambda com um argumento e o lamda força o número de argumentos passados a serem exatamente iguais aos definidos no próprio lambda.
