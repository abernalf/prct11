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
        aux.prev = @cabeza
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







