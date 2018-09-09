# frozen_string_literal: true

# Class that has operation on polynomios
module BI
  class Calculator

    # Polynomio -> Polynomio
    # produce the differiatial (f'(x)) from f(x)
    def derive_polynomio(pol)
      r = []
      pol.each_with_index do |n, i|
        exp = pol.size - i - 1
        r << n*exp
      end
      r.pop
      r
    end

    # Polynomio -> Stirng
    # produce the string representation for the polynomio
    def polynomio_to_s(pol)
      r = ''
      pol.each_with_index do |n, i|
        next if n.zero?
        r += (n > 0 ? ' + ' : ' - ') if !i.zero?
        n *= -1 if n < 0
        exp = pol.size - i - 1
        if exp.zero?
          r += n.to_s
        elsif exp == 1
          r += "#{n}x"
        else
          r += "#{n}x^#{exp}"
        end

      end
      r
    end
  end
end
