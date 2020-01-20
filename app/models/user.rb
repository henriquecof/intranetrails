# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
<<<<<<< HEAD
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum status: { Ativo: 0 , Inativo: 1 }

  mount_uploader :photo, PhotoUploader
=======

  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable
  enum status: { Ativo: 0, Inativo: 1 }
  belongs_to :setor
>>>>>>> 5fc05ebe8cb729f1abf2a474c52391c9771d173b
end
