require 'rails_helper'

describe PurchaseOrderParser do
  before(:all) do
    #@file_path = "#{Dir.pwd}/spec/test_files/LA\ COUNTY\ PO.pdf"
    @file_path = "#{Dir.pwd}/spec/test_files/STATE\ OF\ CA\ PO.pdf"
    @parser = PurchaseOrderParser::Parser.new @file_path
    @la_po_number = 'PO-CC-18321923-1'
  end

  it 'should retrieve text' do
    $stderr.puts "TEXT: #{@parser.text}"
    expect( @parser.text ).to_not be_empty
  end

  it 'should remove empty lines or words' do
    expect( @parser.text.count {|e| e.empty? } ).to be_zero
  end

  it "should retrieve the purchase order number" do
    $stderr.puts "NUMBER? #{@parser.number}"
    expect( @parser.number ).to eq @la_po_number
  end

  it "should retrieve dates" do
    $stderr.puts "DATEs? #{@parser.dates}"
    expect( @parser.dates.length ).to be > 0
  end

  it "should retrieve words/phrases from each line of mostly whitespace" do
    $stderr.puts "GROUP INFO? #{@parser.lines_groups}"
    expect( @parser.lines.flatten.count ).to be > @parser.text.count
  end
end
