#
# Módulos são uma forma de agrupar métodos, classes e constantes. Os módulos oferecem dois benefícios principais.
# Os módulos fornecem um namespace e evitam conflitos de nomes.
# Módulos podem ser usados para adicionar comportamente a uma classe Ruby
#

# Definindo um module
module Semana
   FIRST_DAY = "Domingo"
   def Semana.weeks_in_month
      "4 semanas"
   end

   def Semana.weeks_in_year
      "52 semanas"
   end
end
puts Semana::FIRST_DAY
puts Semana.weeks_in_month

puts Math::PI
