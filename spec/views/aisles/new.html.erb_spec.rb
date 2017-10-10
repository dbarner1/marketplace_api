require 'rails_helper'

RSpec.describe "aisles/new", type: :view do
  before(:each) do
    assign(:aisle, Aisle.new(
      :name => "MyString"
    ))
  end

  it "renders new aisle form" do
    render

    assert_select "form[action=?][method=?]", aisles_path, "post" do

      assert_select "input[name=?]", "aisle[name]"
    end
  end
end
