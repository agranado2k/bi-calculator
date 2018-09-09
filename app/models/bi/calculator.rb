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
        # if n is zero the sub polynomio should not be showed
        next if n.zero?

        # include the operator in front the new sub polynomio
        # if it's not the first one
        r += (n > 0 ? ' + ' : ' - ') if !i.zero?

        # if the sub polynomio is negaive invert the sign
        n *= -1 if n < 0

        # calculate the expoente
        exp = pol.size - i - 1

        # print only n if expoente is zero
        if exp.zero?
          r += n.to_s

        # print the only 'x' if the expoent is one
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
