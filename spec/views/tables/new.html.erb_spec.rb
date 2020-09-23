require 'rails_helper'

RSpec.describe "tables/new", type: :view do
  before(:each) do
    assign(:table, Table.new(
      table_number: 1,
      company: nil
    ))
  end

  it "renders new table form" do
    render

    assert_select "form[action=?][method=?]", tables_path, "post" do

      assert_select "input[name=?]", "table[table_number]"

      assert_select "input[name=?]", "table[company_id]"
    end
  end
end
