require 'spec_helper'
require_relative '../lib/make_ten'

describe MakeTen do

  describe '.call' do
    subject { MakeTen.call([1,2,3,4], 10) }

    it { is_expected.to eq true }
  end
end
