require 'spec_helper'
require 'csv'

describe Diligent::List do
  before { @list = Diligent::List.load }

  context '.load' do
    it 'should be a list of gems used' do
      expect(@list['awesome_print']['author']).to eq('Michael Dvorkin')
    end
  end

  context '#as_csv' do
    before { @csv = Diligent::List.new.as_csv }
    after { FileUtils.rm('/tmp/diligent.csv') if File.exists?('/tmp/diligent.csv') }

    it 'should put the list in CSV format' do
      @csv = Diligent::List.new.as_csv
      check_csv_content CSV.parse(@csv)
    end

    it 'should output to a file' do
      @csv = Diligent::List.new.as_csv('/tmp/diligent.csv')
      check_csv_content CSV.read('/tmp/diligent.csv')
    end
  end
end

# FIXME: Brittle
def check_csv_content(csv_rows)
  expect(csv_rows.first).to eq(%w{ Gem Version Author Summary Description Homepage })
  expect(csv_rows[1].first).to eq ('awesome_print')
end
