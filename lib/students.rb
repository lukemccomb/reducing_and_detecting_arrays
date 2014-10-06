class Students
  def all
    [
      {name: "Bob", age: 10},
      {name: "Sue", age: 10},
      {name: "Greg", age: 15},
      {name: "Amanda", age: 8},
      {name: "Steve", age: 22},
    ]
  end

  def average_age
    count = 0
    @total_age = 0
    all.each do |student|
      @total_age += student[:age]
      count += 1
    end
    avg_age = @total_age / count
  end

  def name_string
    @name_string = ""
    all.each do |student|
      @name_string += student[:name] + " "
    end
    @name_string.strip
  end

  def find_first_older_than(age)
    @old = []
    all.each do |student|
      if student[:age] > age
        @old << student
      end
    end
    @old.first
  end

  def any_older_than?(age)
    @old = []
    all.each do |student|
      if student[:age] > age
        @old << student
      end
    end
    if @old.length > 0
      true
    else
      false
    end
  end

  def find_student(student_search)
    all.each do |student|
      if student[:name] == student_search[:name] && student[:age] == student_search[:age]
        @student = student
      else
        @student = nil
      end
    end
      @student
  end
end