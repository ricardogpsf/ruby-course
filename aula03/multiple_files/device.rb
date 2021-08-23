require_relative 'device_service'

class Device
  include DeviceService
  attr_reader :id, :name, :device_type

  def initialize(device, type)
    @id              = device[:deviceId]
    @name            = device[:name]
    @device_type     = type
  end

  def printers
    'Todas as printers. Metodo definido na classe Device.'
  end
end