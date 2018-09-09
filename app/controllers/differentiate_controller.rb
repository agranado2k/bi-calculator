class DifferentiateController < ApplicationController
  def differentiate
    polynomio = params[:polynomio].split('/').reject(&:empty?).map(&:to_i)

    cal = BI::Calculator.new
    derivated = cal.derive_polynomio(polynomio)

    render json: { answer: cal.polynomio_to_s(derivated) }, status: :ok
  end
end
