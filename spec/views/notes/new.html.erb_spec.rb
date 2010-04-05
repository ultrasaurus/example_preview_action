require 'spec_helper'

describe "/notes/new.html.erb" do
  include NotesHelper

  before(:each) do
    assigns[:note] = stub_model(Note,
      :new_record? => true,
      :title => "value for title",
      :description => "value for description"
    )
  end

  it "renders new note form" do
    render

    response.should have_tag("form[action=?][method=post]", notes_path) do
      with_tag("input#note_title[name=?]", "note[title]")
      with_tag("textarea#note_description[name=?]", "note[description]")
    end
  end
end
