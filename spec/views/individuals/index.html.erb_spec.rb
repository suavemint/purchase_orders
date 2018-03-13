require 'rails_helper'

RSpec.describe "individuals/index", type: :view do
  before(:each) do
    assign(:individuals, [
      Individual.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email"
      ),
      Individual.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of individuals" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
