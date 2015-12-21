require 'spec_helper'




  describe Clase_Madre do
     
       
         libro1 = Libro.new("Libro 1") do
            
            author "autor 1" 
            date "fecha 1"
            edition "edicion 1"
            volume "1"
            site "sitio 1"
      
         end
        
         libro2 = Libro.new("Libro 2") do
            
            author "autor 2" 
            date "fecha 2"
            edition "edicion 2"
            volume "2"
            site "sitio 2"
      
         end
            

            

        
   
      
      lista = Lista.new()
      lista.insertar(libro1)
      lista.insertar(libro2)

      apa = ["Libro 1, autor 1 (fecha 1) (edicion 1) (1) sitio 1 ", "Libro 2, autor 2 (fecha 2) (edicion 2) (2) sitio 2 "] 
      

      it "La lista se imprime correctamente" do
         expect(lista.to_s).to eq(apa)
      end
      
   end
    
