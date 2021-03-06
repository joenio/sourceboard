require 'spec_helper'
require 'source_board/parser/base'

describe SourceBoard::Parser::Base do

  before(:all) do
    @parser = SourceBoard::Parser::Base.new
  end

  it 'must indicate that at least loc and nom are supported' do
    @parser.metrics.should include(:loc)
    @parser.metrics.should include(:nom)
  end

  it 'accepts any language by default' do
    @parser.accept?(:whatever).should be_true
  end

end
