require 'rails_helper'

RSpec.describe "tables/show", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      table_number: 2,
      company: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
