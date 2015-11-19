require 'spec_helper'


describe Node do
    
    nodo = Node.new(1,nil,nil)
    
    it "EL nodo se ha creado" do
     expect(nodo.value).to eq(1)
     expect(nodo.next).to eq(nil)
        
    end
    
end