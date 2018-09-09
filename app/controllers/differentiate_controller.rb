class DifferentiateController < ApplicationController
  def derive
    polynomio = params[:polynomio].split('/')
    puts "polynomio #{polynomio}"
  end
end
