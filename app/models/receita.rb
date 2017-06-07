class Receita < ApplicationRecord
	validates_presence_of :conteudo, message: "Campo obrigatorio"
	validates_presence_of :prato_id
    validates_associated :prato
	belongs_to :prato

end
