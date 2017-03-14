class Student < ApplicationRecord
  has_many :awards, dependent: :destroy

  def name
    given_name + " " + family_name
  end
end
