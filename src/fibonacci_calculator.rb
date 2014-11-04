#!/usr/bin/ruby

class FibonacciCalculator
	def calc(i, j, n)
    if (i == "") then
      i = 1
      j = 0
    end

    if (n <= 0) then
      return 0
    end

    if (n == 1) then
      return i
    end

		calc(i + j, i, n - 1)
	end

  def get(n)
    if (n.nil? || !n.match(/^[0-9]{1,3}$/)) then
      @value = "ERROR: n must be an integer between 0 and 999.\n"
      return
    end

    @value = calc("", "", n.to_i)
  end

	def value?
    @value
	end
end
