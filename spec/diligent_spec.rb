require 'spec_helper'

describe Diligent::Info do
  context '.legalese' do
    it 'should be present' do
      expect(Diligent::Info.legalese).not_to be_nil
    end
  end

  context '.list' do
    it 'should be a list of gems used' do
      expect(Diligent::Info.list.first.first).to eq('awesome_print')
    end
  end
end
