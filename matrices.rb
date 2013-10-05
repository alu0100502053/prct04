require 'matrix'
def suma(m1,m2)
   m3= m1 + m2
   puts "La suma de : "
   puts 
   mostrar_matriz(m1)
   puts "   + "
   mostrar_matriz(m2)
   puts "   = "
   mostrar_matriz(m3)
end

def multiplicacion(m1,m2)
   m3 = m1 * m2
   puts "La multiplicacion de : "
   puts
   mostrar_matriz(m1)
   puts "   * "
   motrar_matriz(m2)
   puts "   = "
   motrar_matriz(m3)

end

def mostrar_matriz(m3)
   m3.to_a.each {|r| puts r.inspect}
end

#En este punto se creo un conflicto al modificar los dos miembros del proyecto el mismo fichero. 
#Como lo unico que aparecio en el conflicto fue una funcion mas, se solucionó facilmente simplemente eliminando las cabeceras comentadas a continuacion:
#<<<<<<< HEAD

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
#=======
#>>>>>>> 1d2078809bcb2013e32eb2185195a96eac00a1ca

def menu
   system("clear")
   m1 = Matrix.rows(rellenar_matriz(j=1))
   puts
   m2 = Matrix.rows(rellenar_matriz(j=2))
   system("clear")
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
      suma(m1,m2) if opc == 1
      multiplicacion(m1,m2) if opc == 2
   end
end

menu
