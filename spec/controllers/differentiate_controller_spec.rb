# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DifferentiateController, type: :controller do

  context 'GET /differentiate/*' do
    let(:answer) { '6x + 1' }
    let(:polynomio) { '/3/1/1' }

    before { get "differentiate", params: { polynomio: polynomio } }

    it 'returns HTTP statsu 200' do
      expect(response).to have_http_status 200
    end

    it 'return the differentiate answer' do
      body = JSON.parse(response.body)

      expect(body['answer']).to eq(answer)
    end

    context 'GET /differentiate/4/3/0/1 => 12x^2+6x' do
      let(:answer) { '12x^2 + 6x' }
      let(:polynomio) { '/4/3/0/1' }

      it 'return the differentiate answer' do
        body = JSON.parse(response.body)

        expect(body['answer']).to eq(answer)
      end
    end

    context 'GET /differentiate/4/-5/0/1 => 12x^2-10x' do
      let(:answer) { '12x^2 - 10x' }
      let(:polynomio) { '/4/-5/0/1' }

      it 'return the differentiate answer' do
        body = JSON.parse(response.body)

        expect(body['answer']).to eq(answer)
      end
    end
  end
end
