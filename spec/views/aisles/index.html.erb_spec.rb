require 'rails_helper'

RSpec.describe "aisles/index", type: :view do
  before(:each) do
    assign(:aisles, [
      Aisle.create!(
        :name => "Name"
      ),
      Aisle.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of aisles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
