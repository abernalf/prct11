Node = Struct.new(:value, :next,:prev)

class Lista
    attr_reader :cabeza, :final
    
    def initialize(nodo)
       @cabeza = nodo 
        @final = nodo
    end
    
    def i_p(nodo)
        aux = @cabeza
        @cabeza = nodo
        aux.prev =  @cabeza
        
        @cabeza.next = aux 
        
        
    end
    
    def e_p
       aux = @cabeza
       @cabeza = aux.next
    end
    
    def i_f(nodo)
        aux = @final
        @final = nodo
        aux.next = nodo
        @final.prev = aux
    end
    
    def e_f
        
       @final = @final.prev
       
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







