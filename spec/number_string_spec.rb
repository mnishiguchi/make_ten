require 'spec_helper'
require_relative '../lib/number_string'

describe NumberString do

  let(:two) { NumberString.new(2) }
  let(:five) { NumberString.new(5) }

  describe '#add' do
    subject { two.add five }

    it { expect(subject.number).to eq 7 }
    it { expect(subject.string).to eq '(2 + 5)' }
  end

  describe '#sub' do
    subject { two.sub five }

    it { expect(subject.number).to eq -3 }
    it { expect(subject.string).to eq '(2 - 5)' }
  end

  describe '#mul' do
    subject { two.mul five }

    it { expect(subject.number).to eq 10 }
    it { expect(subject.string).to eq '(2 * 5)' }
  end

  # TODO: validation for division.
  describe '#div' do
    subject { two.div five }

    it { expect(subject.number).to eq 0 }
    it { expect(subject.string).to eq '(2 / 5)' }
  end
end
