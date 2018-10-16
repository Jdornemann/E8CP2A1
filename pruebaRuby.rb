

# David, 9, 2, 5,
# Gonzalo, 10, 2,
# Mai, 10, 10, 9,
# JP, 10, 10, 10,
# 1, 1
# A, 8, 1
# 9, A
# 10, 10


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
    validateOptionMenu
end

def inasistenciasTotal
 puts "aquí hacer las inasistencias totales"
 validateOptionMenu
end

def alumnosAprobados

    puts "Aqui van los alumnos aprobados"
    validateOptionMenu
end

def validateOptionMenu

    opcion = show_menu

    while opcion != 0

            case opcion
            when 1
                puts "soy 1"
                makeFileAVG
            when 2
                
                puts "soy 2" 
                inasistenciasTotal

            when 3
                
                puts "soy 3"
                alumnosAprobados
                
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