class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  before_save :set_default_role

  has_many :lessons_as_student, class_name: 'Lesson', foreign_key: 'student_id'
  has_many :lessons_as_teacher, class_name: 'Lesson', foreign_key: 'teacher_id'

  enum :role, {
    admin: 'Admin',
    teacher: 'Professor',
    student: 'Aluno'
  }

  def set_default_role
    self.role ||= :student
  end
end
