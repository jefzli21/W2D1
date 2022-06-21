class Bootcamp
    
    def initialize(name,slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new{|h,k| h[k] = []}
    end


    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
        
        @teachers.push(teacher)
        
    end

    def enroll(student)

        if @students.length <= 5
            @students.push(student)
            return true
        elsif @students.length > 5
            return false
        end
    end
    def enrolled?(student)
        if @students.include?(student)
            return true
        else
            false
        end
    end

    #PART 2
    def student_to_teacher_ratio
    
        ratio = @students.length / @teachers.length
        ratio
    
    end

    def add_grade(student,grade=0)
        
        if enrolled?(student)
            @grades[student] << grade
            return true
        elsif !enrolled?(student)
            return false
        end
    
    end

    def num_grades(student)

       return @grades[student].length

    end

    def average_grade(student)

                
        if enrolled?(student) && num_grades(student) > 0
            return @grades[student].sum / num_grades(student)
        elsif !enrolled?(student) || @grades[student] == nil
            return nil
        end

    
    end

end
