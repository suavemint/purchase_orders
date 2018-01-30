require 'rails_helper'
require 'purchase_order_parser'

describe PurchaseOrderParser do
  it 'should load a file' do
    @test_file = '~/Documents/Sample\ Purchase\ Orders/LA\ COUNTY\ PO.pdf'
    @pdf = PurchaseOrderParser::Parser.new @test_file
    expect( @pdf.text ).to not_be_empty
  end
end
