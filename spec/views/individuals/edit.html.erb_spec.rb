require 'rails_helper'

RSpec.describe "individuals/edit", type: :view do
  before(:each) do
    @individual = assign(:individual, Individual.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit individual form" do
    render

    assert_select "form[action=?][method=?]", individual_path(@individual), "post" do

      assert_select "input[name=?]", "individual[first_name]"

      assert_select "input[name=?]", "individual[last_name]"

      assert_select "input[name=?]", "individual[email]"
    end
  end
end
