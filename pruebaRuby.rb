
def show_menu

puts 'Ingresar opción'
puts 'Opción 1:Generar archivo'
puts 'Opción 2: Inasistencias'
puts 'Opción 3: Alumnos aprobados'
puts 'Opción 4: Salir'
 
return gets.chomp.to_i
end

def makeFileAVG
  puts '################################################'
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
        
            write.puts 'Promedio:' + (suma/notas.length).to_s
       
        end
        # puts suma
        # puts notas.length

    end
    puts 'Se ha generado el archivo con los promedios'
    puts '################################################'
 validateOptionMenu
   
end

def totalAbsences
 puts '################################################'


    lines = []
    
    File.open('archivo.cvs','r'){|file| lines = file.readlines}
        nombre = Array.new
        lines.each do |line|
            array_line = []
            nombre = line.split(', ')[0]
            absencesArray = line.split(', ').map(&:to_s)
        
            absences = absencesArray.count { |x| x.include? 'A' }


            File.open(nombre + '.cvs','a') do |write|
            
                write.puts 'Inasistencias:' + absences.to_s
        
            end
            puts 'Nombre Alumno:' + nombre + '  ' + 'Inasistencias:' + absences.to_s
        end

        puts '################################################' 
    # puts suma
    # puts notas.length
    validateOptionMenu
end

def studentsPassed

    puts '################################################' 

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
        
        avg = (suma/notas.length)
       
        puts 'Alumno aprobado:' + nombre if GradeVerificationQualification(avg)

        # puts suma
        # puts notas.length

    end


    puts '################################################' 

    validateOptionMenu
end

def GradeVerificationQualification(grade)

    if grade <= 5
        false 

    else
        true 
    end
end

def validateOptionMenu

  option = show_menu

    while option != 0

      case option
            when 1
              puts 'Ha elegido la opción ' + option.to_s
              makeFileAVG
            when 2
              puts 'Ha elegido la opción ' + option.to_s
              totalAbsences

            when 3
              puts 'Ha elegido la opción ' + option.to_s
              studentsPassed
            when 4 
              puts '################################################' 
              puts 'Ha salido del programa'
              puts '################################################' 
              exit
            else
              puts 'Opción ingresada no es valida.'
              validateOptionMenu
        end
    end
end

# BEGINING OF THE PROGRAM
validateOptionMenu