   
    Node= Struct.new(:value, :next, :prev)

    class Lista

        include Enumerable
        attr_accessor :inicio, :final 
        
        def initialize()
            
            @inicio = nil
            @final = nil
            
        end
        
        def extraer()
            
            if (@cabeza == nil)
                
                return nil
            else
                aux = @cabeza
                @cabeza = @cabeza.next
                return aux
            end
        end
        
        def insertar(item)
            
            nodo = Node.new(item,nil,nil)
            if(@cabeza == nil)
                @cabeza = nodo
                @final = nodo
            else
                aux = @cabeza
                @cabeza = nodo
                @cabeza.next = aux
                aux.prev = @cabeza
            end
        end
        
        
        def empty()
           
           if(@cabeza == nil)
               
               return true
               
           else
               
               return false
               
           end
            
        end
        
        def each
            
            if (@cabeza == nil and @final == nil)
                
                yield nil
                
            elsif (@cabeza == @final)
                
                yield @cabeza.value
                
            else
                
                while(@cabeza != nil)
                
                    yield @cabeza.value
                    @cabeza = @cabeza.next
                    
                end                
            end
        end
        def to_s
           
           output = []
           i=0;
            while(@cabeza != nil)
                output1 = @cabeza.value.to_s
                output[i] = output1
                @cabeza = @cabeza.next
                i = i+1 
            end
            output
        end
    
        
end
    
class Clase_Madre
    
    include Comparable
    
    
    

        
    
       
def <=>(other)
        if (@autor[0] != other.autor[0])
                @autor<=> other.autor
        else
        if(@autor.size==1) || (other.autor.size ==1)
                @autor.size <=> other.autor.size
        else
        if(@fecha != other.fecha)
                @fecha <=> other.fecha
        else
                @titulo <=> other.titulo
            end
        end
    end
end
  

    
    
    def initialize(autor,titulo,fecha)
       @autor = autor
       @titulo = titulo
       @fecha= fecha
    end
    
    def autor
        return @autor
    end
    
    def titulo
        return @titulo
    end
    
    def fecha
        return @fecha
    end
    
    

    
    
    
end

class Cambio < Clase_Madre
    
    def apellidos_nombre
        
        @n = (@autor.size)-1
        for i in 0..@n
  
            value = @autor[i].split(" ")
            @autor[i] = "#{value[1]}, #{value[0][0]}"
  
        end

         
    end
    
    def m_capitalize
        
        
       
        value = @titulo.split(" ")
        @n = value.size-1
        
        for i in 0..@n
        
        value[i] = value[i].capitalize
        
        end
        
        for i in 0..@n
        
        if i == 0
           @titulo = value[0] 
        else
            @titulo.gsub!(/$/, " "); # Hace como fi fuese un append y añade al final de la cadena cada nueva palabra
            @titulo.gsub!(/$/, value[i]);
        end
        
        end
        
        
    end
    
end
    
    

    

    
    

    



class Libro < Cambio

    
   
    def initialize(autor,titulo,fecha,serie,editorial,edicion,isbn)
       @autor=autor
       @titulo=titulo
       @fecha=fecha
       @serie = serie
       @editorial = editorial
       @edicion = edicion
       @isbn = isbn
    end
    
    def getautor()
        return @autor
    end
    
    def gettitulo()
        return @titulo
    end
    
    def getserie()
        return @serie
    end
    
    def geteditorial()
        return @editorial
    end
    
    def getnumedicion()
        return @edicion
    end
    
    def getfecha()
        return @fecha
    end
    def getisbn
        return @isbn
    end
    
def to_s
            
    
        puts ""
        for i in 0..@autor.size-1
            
            if i == @autor.size-2
                print ("#{@autor[i]}  &  ")
            else
                print ("#{@autor[i]}, ")
                
            end
        end
        
            puts""
            print "\t"
            puts ("#{@titulo}")
            
            print "\t"
            puts ("#{@serie}")
        
            print "\t"
            puts ("#{@editorial}")
        
            print "\t"
            puts ("#{@edicion}")
        
            print "\t"
            puts ("#{@fecha}")
            
            
            
            @isbn.each { |i, valor|
            print "\t"
            puts ("#{i}  #{valor}") } 
            
 
        end 
    


end




class Revista < Cambio

   def initialize(autor,titulo,fecha,serie,editorial,edicion,issn,numed)
       @autor=autor
       @titulo=titulo
       @fecha=fecha
       @serie = serie 
       @editorial = editorial
       @edicion = edicion 
       @issn = issn 
       @numed = numed 
   end
    

    

    
    def getserie()
        return @serie
    end
    
    def geteditorial()
        return @editorial
    end
    
    def getnumedicion()
        return @edicion
    end
    
    def getissn
        return @issn
    end
    
    

    
end

