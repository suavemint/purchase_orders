require 'rails_helper'

describe PurchaseOrderParser do
  before(:all) do
    @file_path = '/Users/eorcutt/Documents/Purchase Order Examples/LA COUNTY PO.pdf'
    @parser = PurchaseOrderParser::Parser.new @file_path

    @la_po_number = 'PO-CC-18321923-1'
  end

  it 'should retrieve text' do
    expect( @parser.text ).to_not be_empty
  end

  it 'should remove empty lines or words' do
    expect( @parser.text.count {|e| e.empty? } ).to be_zero
  end

  it "should retrieve the purchase order number" do
    expect( @parser.number ).to eq @la_po_number
  end

  it "should retrieve words/phrases from each line of mostly whitespace" do
    expect( @parser.lines.flatten.count ).to be > @parser.text.count
  end
end
