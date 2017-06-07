class Qualificacao < ApplicationRecord
	validates_presence_of :nota, message:"Campo Obrigatorio"
	validates_presence_of :cliente_id, :restaurante_id
    validates_associated :cliente, :restaurante
	belongs_to :cliente
    belongs_to :restaurante
end
