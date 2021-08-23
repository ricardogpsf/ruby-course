require_relative 'multiple_files/device'

device = Device.new({}, :type)
puts device.printers
puts device.printer_info
puts device.description