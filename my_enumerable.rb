module Enumerable
    def all?
      list.all? { |num| num < 5 }
    end
  
    def any?
      list.any? { |num| num == 2 }
    end
  
    def filter?
      list.filter(&:even?)
    end
  end
  