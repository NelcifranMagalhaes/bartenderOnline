require 'rails_helper'

RSpec.describe "tables/edit", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      table_number: 1,
      company: nil
    ))
  end

  it "renders the edit table form" do
    render

    assert_select "form[action=?][method=?]", table_path(@table), "post" do

      assert_select "input[name=?]", "table[table_number]"

      assert_select "input[name=?]", "table[company_id]"
    end
  end
end
