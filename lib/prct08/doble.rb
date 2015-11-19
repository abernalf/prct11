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
    

end
