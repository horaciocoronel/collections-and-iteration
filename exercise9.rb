students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

staff = {
  :staff_morning => 12,
  :staff_afternoon => 4,
  :staff_night => 2
}

def name_students(students)
  students.each do | cohort, value |
    puts "#{cohort}: #{value} students"
  end
end

name_students(students)

students[:cohort4] = 43
puts "______"
name_students(students)
puts "______"

puts students.keys

def expand_classroom(students)
  students.each do | cohort, value |
    value *= 1.05
    puts value.to_i
  end
end

expand_classroom(students)

students.delete(:cohort2)

puts students

def total_students(students)
  total_students = 0
  students.each do | cohort, value |
    value += total_students
    #puts value.to_i
    return students.sum  {|k,v| v}
  end
end

puts total_students(students)


def total_staff(staff)
  total_staff = 0
  staff.each do | shift, value |
    value += total_staff
    #puts value.to_i
    return staff.sum  {|k,v| v}
  end
end

puts total_staff(staff)
