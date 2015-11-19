require 'spec_helper'


describe Node do
    
    nodo = Node.new(1,nil,nil)
    
    it "EL nodo se ha creado" do
     expect(nodo.value).to eq(1)
     expect(nodo.next).to eq(nil)
        
    end
    
    
end

describe Lista do
    
    nodo = Node.new(1,nil,nil)
    nodo1 = Node.new(2,nil,nil)
    nodo2 = Node.new(3,nil,nil)
    nodo3 = Node.new(4,nil,nil)
    lista = Lista.new(nodo)
    
     it "El nodo ha sido añadido por el principio" do
     lista.i_p(nodo1)
     lista.i_p(nodo2)
     
     
     expect(lista.cabeza).to eq(nodo2)
    end
    
    
    it "El nodo ha sido insertado por el final" do
       lista.e_p
       expect(lista.cabeza).to eq(nodo1)
    end
    
    it "El nodo ha sido insertado por el final" do
       lista.i_f(nodo2)
       lista.i_f(nodo3)
       expect(lista.final).to eq(nodo3)
    end
    
    it "extraer por el final" do
       lista.e_f
       lista.e_f
       expect(lista.final).to eq(nodo)

       
        
    end
    
    

    
end

describe Clase_Madre do

    context "Libros" do
                libro1 = Clase_Madre::Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
                libro2 = Clase_Madre::Libro.new(["Tupu", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
                it "El libro pertenece a la Clase_Madre" do
                   expect(libro1.instance_of?Clase_Madre::Libro).to eq(true)
                   
                end
                
                
                
                it "El libro no  pertenece a la clase Revista" do
                   expect(libro1.instance_of?Clase_Madre::Revista).to eq(false)
                   
                end
                
                nodoL = Node.new(libro1,nil,nil)
                nodoL1= Node.new(libro2,nil,nil)
                listaL = Lista.new(nodoL)
                
                it "Se añaden los dos libros" do
                    listaL.i_p(nodoL1)
                 expect(listaL.cabeza).to eq(nodoL1)
                end
                
            end
            
            
    context "Revistas" do
                revista1 = Clase_Madre::Revista.new("Richard E. Silverman","Redes neuronales",2015,25,"Agapea","2ª","ISSN-10: 122449325866", "Nature")
                
                it "La revista pertenece a la clase Revista" do
                   expect(revista1.instance_of?Clase_Madre::Revista).to eq(true)
                   
                end
                
                
                 it "# La revista no pertenece a la clase Libro " do
                   expect(revista1.instance_of?Clase_Madre::Libro).to eq(false)
                   
                   
                end
                
    end
    
    
    libro1 = Clase_Madre::Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    revista1 = Clase_Madre::Revista.new("Richard E. Silverman","Redes neuronales",2015,25,"Agapea","2ª","ISSN-10: 122449325866", "Nature")
    
    
    nodoLC1=Node.new(libro1,nil,nil)
    nodoLC2=Node.new(revista1,nil,nil)
    listaLC=Lista.new(nodoLC1)
    
    it "Libro y Revista en misma lista" do
        listaLC.i_f(nodoLC2)
        expect(listaLC.final).to eq(nodoLC2)
        
    end
            
            
    
    
end

    
            
            
    
    
end
