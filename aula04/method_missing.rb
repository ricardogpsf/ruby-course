class Device
  attr_reader :id, :name, :device_type

  def method_missing(method_name, *args, &block)  
    puts "Capturando a chamada de método inexistente: #{method_name}"

    # cria o método que não existe ainda
    self.class.define_method method_name do
      puts "Agora o método #{method_name} existe!"
    end

    send method_name # chama o método dinamicamente para que termine a criação do método também executando ele.
  end
end

device = Device.new
device.printers
device.printers
device.printers

device_2 = Device.new
device.printers