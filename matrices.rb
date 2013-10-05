require 'matrix'

def suma
   puts "Suma"
end

def multiplicacion
   puts "Multiplicacion"
end

def rellenar_matriz(j)
   puts "Rellenando MATRIZ #{j}: "
   print "Introduzca numero de filas: "
   fil = gets.to_i
   puts "Rellene la matriz por filas y separando los elementos con espacios. Por ejemplo: 1 2 3: " 
   a = Array.new
   fil.times do |i|
      print "fila [#{i}]:"
      tmp = gets.chomp.split(/ /).map(&:to_i)
      a.push(tmp)
   end
   a
end

def menu
   system("clear")
   m1 = Matrix.rows(rellenar_matriz(j=1))
   puts
   system("clear")
   m2 = Matrix.rows(rellenar_matriz(j=2))
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
