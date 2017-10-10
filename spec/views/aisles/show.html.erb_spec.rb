require 'rails_helper'

RSpec.describe "aisles/show", type: :view do
  before(:each) do
    @aisle = assign(:aisle, Aisle.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
