class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time,hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student)
    @student_names << student
  end

  def  end_time
    "#{@start_time.to_i + @hours_in_school_day}:00"
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def starndard_student_names
    capitalized_names = []
    @student_names.each do |name|
      capitalized_names << name.capitalize
    end
    return capitalized_names
  end

  def converts_end_time_to_clock_time
    if end_time.to_i > 12
    "#{end_time.to_i - 12}:00"
    end
  end
end
