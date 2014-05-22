require 'spec_helper'

describe Diligent::Info do
  describe '.license_text' do
    it 'should return a link to the full license text' do
      expect(Diligent::Info.license_text('MIT')).to eq("http://opensource.org/licenses/MIT")
    end
  end
end
