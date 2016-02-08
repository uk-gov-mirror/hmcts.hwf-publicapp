require 'rails_helper'

RSpec.describe MaritalStatus, type: :model do
  subject { described_class.new }

  describe 'validations' do
    describe 'married' do
      context 'when true' do
        before { subject.married = true }

        it { expect(subject.valid?).to be true }
      end

      context 'when false' do
        before { subject.married = false }

        it { expect(subject.valid?).to be true }
      end

      context 'when not a boolean value' do
        before { subject.married = 'string' }

        it { expect(subject.valid?).to be false }
      end
    end
  end
end
