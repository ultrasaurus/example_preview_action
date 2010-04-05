require 'spec_helper'

describe "/notes/index.html.erb" do
  include NotesHelper

  before(:each) do
    assigns[:notes] = [
      stub_model(Note,
        :title => "value for title",
        :description => "value for description"
      ),
      stub_model(Note,
        :title => "value for title",
        :description => "value for description"
      )
    ]
  end

  it "renders a list of notes" do
    render
    response.should have_tag("tr>td", "value for title".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end
