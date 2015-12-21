   
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
     attr_accessor :titulo, :autor, :fecha 
     
     def initialize(titulo, &block)
     
          self.titulo = titulo
          self.autor = []
          self.fecha = []
     
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
     end
     
     def date(name, options = {})
          date = name
          
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          author << " (#{options[:amount]})" if options[:amount]
          autor << author
     end
     
     def <=>(other)
          
          if(@autor != other.autor)
               @autor <=> other.autor
          elsif(@autor == other.autor)
               @fecha <=> other.fecha
          elsif(@fecha == other.fecha && @autor == other.autor)
               @titulo <=> other.titulo
          end
     end
     
     
     def to_s()
        @salida = " AUTOR/ES: " + "#{@autor}" + " TITULO: " + "#{@titulo}" + " FECHA: " + "#{@fecha}" 
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
     
     attr_accessor :edicion, :volumen, :lugar
     
     def initialize(titulo,&block)
         
          self.titulo = titulo
          self.autor = []
          self.fecha = []
          self.edicion = []
          self.volumen = []
          self.lugar = []
          
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
     end
     
     def date(name, options = {})
          date = name
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          author << " (#{options[:amount]})" if options[:amount]
          autor << author
     end
     
     def edition(name, options = {})
          edition = name
          edicion << edition
     end
     def volume(name, options = {})
          volume = name
          volumen << volume
     end
     def site(name, options = {})
          site = name
          lugar << site
     end
     
     def to_s()
          
          output = titulo
          output << " #{autor.join(', ')} "
          output << "(#{fecha.join(', ')}) "
          output << "(#{edicion.join(', ')}) "
          output << "(#{volumen.join(', ')}) "
          output << "#{lugar.join(', ')} "

          output
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

