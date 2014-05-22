require 'spec_helper'
require 'csv'
require 'nokogiri'

describe Diligent::List do
  before { @list = Diligent::List.load }

  context '.load' do
    it 'should be a list of gems used' do
      expect(@list['awesome_print']['author']).to eq('Michael Dvorkin')
    end
  end

  context '#as_csv' do
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

  context '#as_html' do
    after { FileUtils.rm('/tmp/diligent.html') if File.exists?('/tmp/diligent.html') }

    it 'should put the list in HTML format' do
      @html = Diligent::List.new.as_html
      check_html_content @html
    end
  end
end

# FIXME: Brittle
def check_csv_content(csv_rows)
  expect(csv_rows.first).to eq(%w{ Gem Version Author Summary Description License Homepage })
  expect(csv_rows[1].first).to eq ('awesome_print')
end

def check_html_content(html)
  Nokogiri::HTML(html).tap do |doc|
    expect(doc.errors).to be_empty
  end
end
