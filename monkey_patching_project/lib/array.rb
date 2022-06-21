# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"
class Array
    def span
        max = self.max
        min = self.min
        if self.length > 0
            diff = max - min
        end
        return diff
    end

    def average
        
        
        if self.length > 0
            avg = self.sum / self.length.to_f
        else
            return nil
        end
        avg
    end

    def median
        sorted = self.sort
        if self.length > 0
            if sorted.length % 2 == 1
                return sorted[sorted.length/2]
            elsif sorted.length % 2 == 0
                avg = (sorted[(sorted.length-1)/2] + sorted[sorted.length/2].to_f)/2
                return avg
            end
        else 
            return nil
        end
    end

    def counts
    
        hash = Hash.new(0)
        self.each do |v|
            hash[v] += 1 
        end
        hash
    end

    #PART 2

    def my_count(n)

        count = 0
        self.each do |i|
            if n.include?(i)
                count += 1
            end
        end
        count
    end
    
    def my_index(n)

        self.each_with_index do |x,i|
            if n.include?(x)
                return i 
            # elsif !n.include?(x)
            #     return nil 
            end
        end
        nil
    end
    
    def my_uniq

        hash = Hash.new(0)
        self.each do |i|
            hash[i] += 1
        end
        hash.keys

    end

    def my_transpose

        new = []

        (0...self.length).each do |rows|
            new_row=[]
            (0...self.length).each do |col|
                new_row << self[col][rows]
            end
            new << new_row
        end
        
        
        new
        
        
    
    end
        
    

end
