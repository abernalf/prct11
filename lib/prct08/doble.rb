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
 
      
    end
class Clase_Madre
    
    include Comparable
    
        
    
  def <=>(anOther)
    @autor <=> anOther.autor
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


class Libro < Clase_Madre

    
    
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

end


class Revista < Clase_Madre

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







