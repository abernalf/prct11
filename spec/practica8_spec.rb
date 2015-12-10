require 'spec_helper'





describe Clase_Madre do
    
    before :each do
        
        @lista_ = Lista.new(nil,nil)
        @lista_1=Lista.new(nil,nil)
        @lista_2=Lista.new(nil,nil)
        @lista_3=Lista.new(nil,nil)
        @libro1 = Libro.new(["Milhouse VanHouten"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @libro2 = Libro.new(["Milhouse VanHouten"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2012", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @libro3 = Libro.new(["Tupu Daswani"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @libro4 = Libro.new(["Milhouse VanHouten"], "Programming Ruby 1.9 & 2.0: the Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @libro5 = Libro.new(["Pablo Iglesias","Milhouse VanHouten","Pedro Martin"], "Programming ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        
        @lista_.insertar(@libro3)
        @lista_.insertar(@libro2)
        @lista_1.insertar(@libro2)
        @lista_1.insertar(@libro1)
        @lista_2.insertar(@libro1)
        @lista_2.insertar(@libro4)
        
    end
        
       
        

        
        it "Cambiamos nombre" do
            @libro1.apellidos_nombre
           expect(@libro1.autor).to eq(["VanHouten, M"])
       end
       
       it "Ordena por autor" do 
          
          expect(@lista_.sort).to eq([@libro2,@libro3])
       end
           

                
        it "Ordenamos por fecha" do 
            
            expect(@lista_1.sort).to eq([@libro2,@libro1])
        end
    # 4 
    
        it "ordenar por titulo" do
           expect(@lista_2.sort).to eq([@libro4,@libro1]) 
        end
        
        it "Subtitulo en mayuscula" do
            
            @libro1.m_capitalize
            expect(@libro1.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
        
        
        end
        

        
end
    
    
