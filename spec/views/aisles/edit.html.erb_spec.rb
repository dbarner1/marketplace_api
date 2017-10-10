require 'rails_helper'

RSpec.describe "aisles/edit", type: :view do
  before(:each) do
    @aisle = assign(:aisle, Aisle.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit aisle form" do
    render

    assert_select "form[action=?][method=?]", aisle_path(@aisle), "post" do

      assert_select "input[name=?]", "aisle[name]"
    end
  end
end
