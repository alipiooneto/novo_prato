class Cliente < ApplicationRecord
	validates_presence_of :nome, message: "Campo Obrigatorio"
	validates_uniqueness_of :nome, message: "Nome ja existe"
	has_many :qualificacoes
end
