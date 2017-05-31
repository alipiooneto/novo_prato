class Restaurante < ApplicationRecord
	validates_presence_of :nome, :endereco, :especialidade , message: "nao pode ser branco"

end
