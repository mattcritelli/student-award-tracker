class Student < ApplicationRecord
  has_many :awards, dependent: :destoy

  def name
    given_name + " " + family_name
  end
end
