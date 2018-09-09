# frozen_string_literal: true

#Class that has operation on polynomios
module BI
  class Calculator
    #Polynomio -> Stirng
    #produce the string representation for the polynomio
    def polynomio_to_s(pol)
      r = []
      pol.each_with_index do |n, i|
        next if n.zero?
        exp = pol.size - i - 1
        if exp.zero?
          r << n.to_s
        elsif exp == 1
          r << "#{n}x"
        else
          r << "#{n}x^#{exp}"
        end
      end
      r.join(' + ')
    end
  end
end
