require 'spec_helper'
require_relative '../lib/number_string'
require_relative '../lib/make_ten'

describe NumberString do

  let(:two) { NumberString.new(2) }
  let(:five) { NumberString.new(5) }

  describe '+' do
    subject { two + five }

    it { expect(subject.value).to eq 7 }
    it { expect(subject.string).to eq '(2 + 5)' }
  end

  describe '-' do
    subject { two - five }

    it { expect(subject.value).to eq -3 }
    it { expect(subject.string).to eq '(2 - 5)' }
  end

  describe '*' do
    subject { two * five }

    it { expect(subject.value).to eq 10 }
    it { expect(subject.string).to eq '(2 * 5)' }
  end

  describe '/' do
    subject { two / five }

    it { expect(subject.value).to eq 0 }
    it { expect(subject.string).to eq '(2 / 5)' }
  end
end
