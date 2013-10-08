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
   gets
end

def multiplicacion(m1,m2,dim) // objeto multiplicacion 
   m3 = Array.new(dim) {Array.new(dim)} // declaracion de matriz bidimensional
   dim.times do |i| // bucle para recorrer primera dimension  
      dim.times do |j| // bucle para recorrer segunda dimension
         m3[i][j]=0
         dim.times do |k| //bucle para rellener la matriz resultado
            m3[i][j] += m1[i][k] * m2[k][j]
         end
      end
   end
   puts "La multiplicacion de : "
   puts
   mostrar_matriz(m1)
   puts "   * "
   mostrar_matriz(m2)
   puts "   = "
   mostrar_matriz(m3)
   gets
end

def mostrar_matriz(m3)
   m3.to_a.each {|r| puts r.inspect}
end

#En este punto se creo un conflicto al modificar los dos miembros del proyecto el mismo fichero. 
#Como lo unico que aparecio en el conflicto fue una funcion mas, se solucionó facilmente simplemente eliminando las cabeceras comentadas a continuacion:
#<<<<<<< HEAD

def rellenar_matriz(j,dim)
   puts "Rellenando MATRIZ #{j}: "
   puts "Rellene la matriz por filas y separando los elementos con espacios. Por ejemplo: 1 2 3: " 
   a = Array.new
   contador = 0
   while contador != dim do
      print "fila [#{contador}]:"
      tmp = gets.chomp.split(/ /).map(&:to_i)
      if tmp.count == dim then
         a.push(tmp)
         contador += 1
      else
         puts "La matriz debe ser #{dim} x #{dim}"
      end
   end
   a
end
#=======
#>>>>>>> 1d2078809bcb2013e32eb2185195a96eac00a1ca

def menu
   system("clear")
   print "Introduzca la dimension de las matrices cuadradas: "
   dim = gets.to_i
   m1 = Matrix.rows(rellenar_matriz(j=1,dim))
   puts
   mostrar_matriz(m1)
   gets
   m2 = Matrix.rows(rellenar_matriz(j=2,dim))
   puts
   mostrar_matriz(m2)
   gets
   opc = ''
   while opc != 0 do
      system("clear")
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
      multiplicacion(m1,m2,di,dim) if opc == 2
   end
end

menu
