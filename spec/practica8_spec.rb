require 'spec_helper'



describe Lista do
    before :each do 
        @lista = Lista.new(nil,nil)
    end
    
    describe "Haciendo enumerable la lista doblemente enlazada" do
        
        it "Comprobando el método all?" do
            @lista.insertar(1)
            @lista.insertar(2)
            @lista.insertar(3)
            expect(@lista.all?).to eq(true)
            
        end
        
        it "Comprobando el método any?" do
            @lista.insertar(1)
            @lista.insertar(2)
            @lista.insertar(nil)
            expect(@lista.any?).to eq(true)
    
        end 
        
        it "Comprobando el método count" do
            @lista.insertar(1)
            @lista.insertar(2)
            @lista.insertar(3)
            @lista.insertar(4)
            expect(@lista.count).to eq(4)
        end
        it "Comprobando el método detect" do
            @lista.insertar(4)
            @lista.insertar(3)
            @lista.insertar(2)
            @lista.insertar(1)
            expect(@lista.detect {|x| x == 2}).to eq(2)
            expect(@lista.find {|x| x == 4}).to eq(4)

        end
        
        it "Comprobando el método drop" do
            @lista.insertar(5)
            @lista.insertar(4)
            @lista.insertar(3)
            @lista.insertar(2)
            @lista.insertar(1)
            expect(@lista.drop(2)).to eq([3, 4 ,5])
        end
        
        it "Comprobando el método max" do
            @lista.insertar(5)
            @lista.insertar(4)
            @lista.insertar(3)
            @lista.insertar(2)
            @lista.insertar(1)
            expect(@lista.max).to eq(5)
        end

    end
end 

describe Clase_Madre do


    context "Libros" do
                libro1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
                libro2 = Libro.new(["Tupu", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
                it "El libro pertenece a la Clase_Madre" do
                   expect(libro1.instance_of?Libro).to eq(true)
                   
                end
                
                
                
                it "El libro no  pertenece a la clase Revista" do
                   expect(libro1.instance_of?Revista).to eq(false)
                   
                end
                
                it "comprobando la pertenencia" do
                 expect(libro1.is_a?Clase_Madre).to eq(true)
                end
                
                nodoL = Node.new(libro1,nil,nil)
                nodoL1= Node.new(libro2,nil,nil)
                
                
                
            end
            
            
    context "Revistas" do
                revista1 = Revista.new("Richard E. Silverman","Redes neuronales",2015,25,"Agapea","2ª","ISSN-10: 122449325866", "Nature")
                
                it "La revista pertenece a la clase Revista" do
                   expect(revista1.instance_of?Revista).to eq(true)
                   
                end
                
                
                 it "La revista no pertenece a la clase Libro " do
                   expect(revista1.instance_of?Libro).to eq(false)
                   
                   
                end
                
    end
    
    
    libro1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    revista1 = Revista.new("Richard E. Silverman","Redes neuronales",2015,25,"Agapea","2ª","ISSN-10: 122449325866", "Nature")
    
    
    nodoLC1=Node.new(libro1,nil,nil)
    nodoLC2=Node.new(revista1,nil,nil)
    
    
    
    libro1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    libro3 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    libro2 = Libro.new(["Tupu", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    
    it "No son iguales" do
       expect(libro1 == libro3).to eq(true)
    end
    
    it "No son iguales" do
       expect(libro1 == libro2).to eq(false)
    end

 
            
    
    
end