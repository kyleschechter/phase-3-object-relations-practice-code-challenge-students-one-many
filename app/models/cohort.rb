class Cohort < ActiveRecord::Base
  has_many :students

  def add_student name:, age:
    Student.create(name: name, age: age, email: "#{name}@gmail.com", cohort_id: self.id)
  end

  def average_age
    students.average(:age).to_f
  end

  def total_students
    students.count
  end

  def self.biggest
    all.max_by {|co| co.total_students}
  end

  def self.sort_by_mod
    all.order(current_mod: :desc)
  end
end