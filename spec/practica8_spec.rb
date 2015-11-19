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
    lista = Lista.new(nodo)
    
     it "El nodo ha sido añadido" do
     lista.i_p(nodo1)
     expect(lista.cabeza).to eq(nodo1)
    end
    

    
end