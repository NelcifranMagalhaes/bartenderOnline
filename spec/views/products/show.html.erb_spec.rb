require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      quantity: 2.5,
      name: "Name",
      description: "MyText",
      company: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
