require 'rails_helper'

RSpec.describe "individuals/new", type: :view do
  before(:each) do
    assign(:individual, Individual.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new individual form" do
    render

    assert_select "form[action=?][method=?]", individuals_path, "post" do

      assert_select "input[name=?]", "individual[first_name]"

      assert_select "input[name=?]", "individual[last_name]"

      assert_select "input[name=?]", "individual[email]"
    end
  end
end
