module DeviceService
  def printer_info
    puts 'Metodo dentro do module DeviceService'
    puts "Consigo acessar os metodos do Device, pois foi feito o include do module na classe Device."
    self.printers
  end

  def description
    puts 'Outro método dentro de DeviceService. Todos os métodos de DeviceService foram incorpados à classe Device via "include"'
  end
end