class Student < ApplicationRecord
  has_many :awards

  def name
    given_name + " " + family_name
  end
end
