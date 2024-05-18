class Student < ApplicationRecord
  has_many :payments, dependent: :destroy
  has_many :day_hour_classes, inverse_of: :student
  accepts_nested_attributes_for :day_hour_classes, reject_if: :all_blank, allow_destroy: true

  validates :full_name, presence: true
  validates :language, presence: true
  validates :cpf, presence: true, uniqueness: true
  validates :birthdate, presence: true
  validates :payday, presence: true

  enum :level, {
    basic_one: 'Básico 1',
    basic_two: 'Básico 2',
    basic_three: 'Básico 3',
    intermediary_one: 'Intermediário 1',
    intermediary_two: 'Intermediário 2',
    intermediary_three: 'Intermediário 3',
    advanced_one: 'Avançado 1',
    advanced_two: 'Avançado 2',
    advanced_three: 'Avançado 3'
  }

  enum :payday, {
    day_1: 'Dia 01',
    day_5: 'Dia 05',
    day_10: 'Dia 10',
    day_20: 'Dia 20'
  }
end
