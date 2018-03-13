require 'rails_helper'

RSpec.describe "organizations/edit", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :name => "MyString",
      :email => "MyString",
      :state => "MyString",
      :city => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input[name=?]", "organization[name]"

      assert_select "input[name=?]", "organization[email]"

      assert_select "input[name=?]", "organization[state]"

      assert_select "input[name=?]", "organization[city]"

      assert_select "input[name=?]", "organization[address]"
    end
  end
end
