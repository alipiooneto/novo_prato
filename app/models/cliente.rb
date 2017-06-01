class Cliente < ApplicationRecord
	validates_presence_of :nome, message: "Campo Obrigatorio"
end
