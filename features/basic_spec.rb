require 'feature_helper'

describe 'basics', :type => 'feature', :js => true do
  it 'should display a title' do
    visit '/'
    find('title').should_not be_nil
    page.body.should match('<title>source_board</title>')
  end
end
