# require 'spec_helper'
# require_relative '../lib/make_ten'
#
# describe NumberPuzzle do
#
#   describe '.solvable?' do
#     subject { NumberPuzzle.solvable?([1,2,3,4], 10) }
#
#     it { is_expected.to eq true }
#   end
#
#   describe '.find_solution' do
#
#     context 'when solvable' do
#       subject { NumberPuzzle.solvable?([1,2,3,4], 10) }
#
#       it 'contains all the source numbers and the number to solve for' do
#         [1,2,3,4,10].each do |number|
#           is_expected.to include number.to_s
#         end
#       end
#     end
#   end
# end
