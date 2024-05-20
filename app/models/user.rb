class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  before_save :set_default_role

  has_many :lessons

  enum :role, {
    admin: 'Admin',
    teacher: 'Professor',
    student: 'Aluno'
  }

  def set_default_role
    self.role ||= :student
  end
end
