require 'spec_helper'

describe Diligent::List do
  context '.load' do
    before { @list = Diligent::List.load }

    it 'should be a list of gems used' do
      expect(@list['awesome_print']['author']).to eq('Michael Dvorkin')
    end
  end
end
