class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.order_by_grades
    self.all.order(grade: :DESC)
  end

  def self.highest_graded
    self.order_by_grades[0]
  end
end
