require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        quantity: 2.5,
        name: "Name",
        description: "MyText",
        company: nil
      ),
      Product.create!(
        quantity: 2.5,
        name: "Name",
        description: "MyText",
        company: nil
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
