# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BI::Calculator, type: :model do

  describe '#polynomio_to_s' do
    context '[3, 2, 1] => 3x^2 + 2x + 1' do
      let(:polynomio) { [3, 2, 1] }
      let(:str) { '3x^2 + 2x + 1' }

      subject { described_class.new.polynomio_to_s(polynomio) }

      it { expect(subject).to eq(str) }
    end

    context '[3, 0, 1] => 3x^2 + 1' do
      let(:polynomio) { [3, 0, 1] }
      let(:str) { '3x^2 + 1' }

      subject { described_class.new.polynomio_to_s(polynomio) }

      it { expect(subject).to eq(str) }

    end

    context '[3, 2, 0] => 3x^2 + 2x' do
      let(:polynomio) { [3, 2, 0] }
      let(:str) { '3x^2 + 2x' }

      subject { described_class.new.polynomio_to_s(polynomio) }

      it { expect(subject).to eq(str) }
    end
  end

  describe 'derive_polynomio'

end
