require 'Test'
include Test
plan 1

class NumberHolder
    def initialize(n)
        @num = n
    end

    def inc
        @num = @num + 1
    end

    def num
      	@num
    end
end

obj = NumberHolder.new(0)
obj.inc
obj.freeze
todo "Fix .freeze method"
isnt obj.inc, 2, '.freeze method'
