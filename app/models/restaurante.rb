class Restaurante < ApplicationRecord
	validates_presence_of :nome, :endereco, :especialidade , message: "nao pode ser branco"
	validates_uniqueness_of :nome, message: "Nome ja existe"
	has_many :qualificacoes
	has_and_belongs_to_many :pratos
    has_many :comentarios, as: :comentavel
    has_attached_file :foto, styles:{ medium: "300x300>", thumb: "100x100>" }

end
