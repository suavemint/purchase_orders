require 'rails_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      :name => "MyString",
      :email => "MyString",
      :state => "MyString",
      :city => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input[name=?]", "organization[name]"

      assert_select "input[name=?]", "organization[email]"

      assert_select "input[name=?]", "organization[state]"

      assert_select "input[name=?]", "organization[city]"

      assert_select "input[name=?]", "organization[address]"
    end
  end
end
