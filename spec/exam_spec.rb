#espectativas de la practica 5
require 'spec_helper.rb'
require 'exam'

describe Exam do

    before :each do
		@sS = Pregunta.new("Question?", 0)

	end

	describe "# Asignado la pregunta a la variable" do
		
  	    it "Debe existir una pregunta." do
		            expect(@sS.pregunta).to eq("Question?")
	    end
	  
	 
	  
	    it "Guardando preguntas" do

	            
    	 
    	    @p1 = RespuestaSS.new("¿Cual es la salida del siguiente codigo Ruby?", 3)

    		@p1.addrespuesta("<#Xyz:0xa000208>")
    		@p1.addrespuesta("nil")
    		@p1.addrespuesta("0")
    		@p1.addrespuesta("Ninguna de las anteriores")
    		
    		@p2 = RespuestaV.new("La siguiente definicion de un hash en ruby es valida:", 3)
    		
    
    		@p3 = RespuestaSS.new("¿Cual es la salida del siguiente codigo Ruby?", 4)
    		@p3.addrespuesta("1")
    		@p3.addrespuesta("bob")
    		@p3.addrespuesta("HEY!")
    		@p3.addrespuesta("Ninguna de las anteriores")
    
    		@p4 = RespuestaSS.new("¿Cual es el tipo de objeto en el siguiente codigo Ruby?\nclass Objeto\nend", 3)
    		@p4.addrespuesta("Una instancia de la clase Class")
    		@p4.addrespuesta("Una constante")
    		@p4.addrespuesta("Un objeto")
    		@p4.addrespuesta("Ninguna de las anteriores")
    
    		@p5 = RespuestaV.new("Es apropiado que una clase Tablero herede de una clase Juego", 2)
    
    
    		
    		expect(@p2 >= @p4). to eq(true)
    		
    		expect(@p2 >= @p5). to eq(true)
    		
    		expect(@p5 < @p3).to eq(true)
    		
    		expect(@p5 > @p3).to eq(false)
    		
    		expect(@p5 == @p5).to eq(true)
    		
    		expect(@p2 == @p4).to eq(false)
    		
    		expect(@p4.between?(@p1, @p3)).to eq(true)
    		
    		
    		
    		
    
    	
    
    		@n1 = Nodo.new(@p1)
    		@n2 = Nodo.new(@p2)
    		@n3 = Nodo.new(@p3)
    		@n4 = Nodo.new(@p4)
    		@n5 = Nodo.new(@p5)
    
    		@lista = Lista.new()
    	
    		@lista.add_0(@n3)
    		@lista.add_d(@n2)
    	    @lista.add_d(@n1)
    		@lista.add(@n4)
    		@lista.add(@n5)
    	
    		
    		
    	
    	
    	   
			expect(@lista.count).to eq(5)   
			expect(@lista.max).to eq(@p3)
			expect(@lista.min).to eq(@p5)
			
			
			
    		expect(@p5.to_s).to eq("La pregunta es: Es apropiado que una clase Tablero herede de una clase Juego\n 1) Cierto\n2) Falso\n")
    		expect(@n5.value).to eq(@p5)
    	   	expect(@lista.head).should eq(@n5)
    	   	@lista.walk
    	   	
    	   	expect(@p1.to_s).to eq("La pregunta es: ¿Cual es la salida del siguiente codigo Ruby?\n 1) <#Xyz:0xa000208>\n2) nil\n3) 0\n4) Ninguna de las anteriores\n" )
    		expect(@n1.value).to eq(@p1)
    	   	expect(@lista.tail).should eq(@n1)
    	   	@lista.moonwalk
    	   	
    	   	expect(@p4.to_s).to eq("La pregunta es: ¿Cual es el tipo de objeto en el siguiente codigo Ruby?\nclass Objeto\nend\n 1) Una instancia de la clase Class\n2) Una constante\n3) Un objeto\n4) Ninguna de las anteriores\n" )
    		expect(@n4.value).to eq(@p4)
    	   	expect(@lista.head).should eq(@n4)
    	   	@lista.walk
    	   	
    	   	expect(@p2.to_s).to eq("La pregunta es: La siguiente definicion de un hash en ruby es valida:\n 1) Cierto\n2) Falso\n" )
    		expect(@n2.value).to eq(@p2)
    	   	expect(@lista.tail).should eq(@n2)
    	   	@lista.moonwalk
    	   	
    	   	expect(@p3.to_s).to eq("La pregunta es: ¿Cual es la salida del siguiente codigo Ruby?\n 1) 1\n2) bob\n3) HEY!\n4) Ninguna de las anteriores\n" )
    		expect(@n3.value).to eq(@p3)
    	   	expect(@lista.tail).should eq(@n3)
    	    
    	   	
	   end
	end
end

