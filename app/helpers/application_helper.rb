module ApplicationHelper

	def valor_formatado(number)
	    number_to_currency number,
	    unit: "R$",
	    separator: ",",
	    delimiter: "."
	end

	def menu_principal(controllers)
	  	render partial: "menu_principal", locals: {opcoes: controllers}
	end

end
