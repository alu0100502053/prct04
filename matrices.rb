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
