class Lesson < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :teacher, class_name: 'User'
  has_one :lesson_comment, dependent: :destroy
end
