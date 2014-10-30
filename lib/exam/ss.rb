#Clase para representar a las Preguntas de seleccion simple

class Pregunta
    attr_reader :pregunta, :respuesta 
	def initialize(pregunta)
		@pregunta = pregunta
		@respuesta = Array.new(0)
	end

	def respuesta 
		resp = ""
		for i in (0..(@respuesta.length -1))
			resp += "#{i+1}) #{@respuesta[i]}\n"
		end
		resp
	end
	
	def to_s
		"#{pregunta}\n#{respuesta}"
	end
end
