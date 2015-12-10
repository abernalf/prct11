Node = Struct.new(:prev, :value,:next)

class Lista 
    
      attr_accessor :head, :tail
      include Enumerable 
    
     
    
      def initialize(head, tail) 
    
        
        @cabeza = head 
        @final = tail
      end
      
      def insertar(item)
            @node = Node.new(nil,item,nil) 
            @node.next = @cabeza 
            @node.prev = nil 

                if @final == nil 
                    @final = @node 
                else 
                    @cabeza.prev = @node 
                end
            @cabeza = @node 
      end
      
      
      
      def extraer 
        aux = @cabeza 
        @cabeza = @cabeza.next 

        aux.next = nil 
        aux.prev = nil 

        if @cabeza == nil 
          @final = nil 
        end

        return aux 
      end
  
      
      def each 
        aux = @cabeza 
        while aux != nil
          yield aux.value  
          aux = aux.next 
        end
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

