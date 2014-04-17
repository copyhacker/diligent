require 'spec_helper'

describe Diligent::Info do
  context '.legalese' do
    it 'should be present' do
      Diligent::Info.legalese.should_not be_nil
    end
  end
end
