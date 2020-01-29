# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: { Ativo: 0 , Inativo: 1 }

  mount_uploader :photo, PhotoUploader

#belongs_to :setor
end
