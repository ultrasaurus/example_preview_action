require 'spec_helper'

describe "/notes/edit.html.erb" do
  include NotesHelper

  before(:each) do
    assigns[:note] = @note = stub_model(Note,
      :new_record? => false,
      :title => "value for title",
      :description => "value for description"
    )
  end

  it "renders the edit note form" do
    render

    response.should have_tag("form[action=#{note_path(@note)}][method=post]") do
      with_tag('input#note_title[name=?]', "note[title]")
      with_tag('textarea#note_description[name=?]', "note[description]")
    end
  end
end
