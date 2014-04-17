require 'spec_helper'

describe Diligent::Info do
  context '.legalese' do
    it 'should be present' do
      expect(Diligent::Info.legalese).not_to be_nil
    end
  end
end
