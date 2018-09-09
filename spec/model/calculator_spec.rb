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

  describe 'derive_polynomio' do
    context '[4, 3, 2, 1] => [12, 6, 2]' do
      let(:polynomio) { [4, 3, 2, 1] }
      let(:result) { [12, 6, 2] }

      subject { described_class.new.derive_polynomio(polynomio) }

      it { expect(subject).to eq(result) }
    end

    context '[3, 2, 1] => [6, 2]' do
      let(:polynomio) { [3, 2, 1] }
      let(:result) { [6, 2] }

      subject { described_class.new.derive_polynomio(polynomio) }

      it { expect(subject).to eq(result) }
    end

    context '[4, 3, 0, 1] => [12, 6]' do
      let(:polynomio) { [4, 3, 0, 1] }
      let(:result) { [12, 6] }

      subject { described_class.new.derive_polynomio(polynomio) }

      it { expect(subject).to eq(result) }
    end

    context '[4, -5, 0, 1] => [12, -10]' do
      let(:polynomio) { [4, -5, 0, 1] }
      let(:result) { [12, -10] }

      subject { described_class.new.derive_polynomio(polynomio) }

      it { expect(subject).to eq(result) }
    end

    context '[] => []' do
      let(:polynomio) { [] }
      let(:result) { [] }

      subject { described_class.new.derive_polynomio(polynomio) }

      it { expect(subject).to eq(result) }
    end
  end
end
