
# David, 9, 2, 5,1, 1
# Gonzalo, 10, 2,A, 8, 1
# Mai, 10, 10, 9,9, A
# JP, 10, 10, 10,10, 10


def show_menu

puts "Ingresar opción"
puts "Opción 1:Generar archivo"
puts "Opción 2: Inasistencias"
puts "Opción 3: Alumnos aprobados"
puts "Opción 4: Salir"
 
return gets.chomp.to_i

end

def makeFileAVG

    puts "aqui debes generar promedio"
 
    lines = []
    
     File.open('archivo.cvs','r'){|file| lines = file.readlines}
     nombre = Array.new
    lines.each do |line|
        array_line = []
        nombre = line.split(', ')[0]
        notas = line.split(', ').map(&:to_i)
     
        suma = 0
        notas.delete(0)
        notas.each do |x|
            suma += x 
    
        end

        File.open(nombre + '.cvs','w') do |write|
        
            write.puts "Promedio:" + (suma/notas.length).to_s
       
        end
        # puts suma
        # puts notas.length

    end
 validateOptionMenu
   
end

def totalAbsences
 puts "aquí hacer las inasistencias totales"
 validateOptionMenu
end

def studentsPassed

    puts "Aqui van los alumnos aprobados"
    validateOptionMenu
end

def GradeVerificationQualification

end

def validateOptionMenu

    option = show_menu

    while option != 0

            case option
            when 1
                puts "soy 1"
                makeFileAVG
            when 2
                
                puts "soy 2" 
                totalAbsences

            when 3
                
                puts "soy 3"
                studentsPassed
                
            when 4 
                puts "soy 4"
                exit

            else
                puts "Opción ingresada no es valida."
                validateOptionMenu
            end

    end

end


validateOptionMenu