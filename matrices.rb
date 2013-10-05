require 'matrix'

def suma
   puts "Suma"
end

def multiplicacion
   puts "Multiplicacion"
end

def menu
   opc = ''
   while opc != 0 do
      puts "            Menu"
      puts "-----------------------------"
      puts "-- 1) Sumar Matrices       --"
      puts "-- 2) Multiplicar Matrices --"  
      puts "-- 0) Salir                --"
      puts "-----------------------------"     
      puts 
      print "Opcion: "
      opc = gets.to_i
      suma if opc == 1
      multiplicacion if opc == 2
   end
end

menu
