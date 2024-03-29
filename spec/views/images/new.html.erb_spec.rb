require 'rails_helper'

RSpec.describe "images/new", :type => :view do
  before(:each) do
    assign(:image, Image.new(
      :user => nil,
      :caption => "MyText"
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input#image_user_id[name=?]", "image[user_id]"

      assert_select "textarea#image_caption[name=?]", "image[caption]"
    end
  end
end
