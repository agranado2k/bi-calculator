# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DifferentiateController, type: :controller do

  context 'PATCH /differentiate/*' do
    let(:answer) { '6x + 1' }
    let(:polynomio) { '/3/1/1' }

    before { patch "differentiate#{polynomio}" }

    it 'returns HTTP statsu 200' do
      expect(response).to have_http_status 200
    end

    it 'return recipe with field updated' do
      body = JSON.parse(response.body)

      expect(body['answer']).to eq(answer)
    end
  end

end
