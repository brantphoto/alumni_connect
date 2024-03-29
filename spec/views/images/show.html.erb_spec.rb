require 'rails_helper'

RSpec.describe "images/show", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :user => nil,
      :caption => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
