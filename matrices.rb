require 'matrix'

def menu
   puts "Menu"
   puts ""
   puts "1) Sumar Matrices"
   puts "2) Multiplicar Matrices"
   puts "0) Salir"
   puts 
   print "Opcion: "
   opc = gets.to_i
   suma if opc == 1
   multiplicacion if opc == 2
end

menu
