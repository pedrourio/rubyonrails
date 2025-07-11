require "application_system_test_case"

class ArtigosTest < ApplicationSystemTestCase
  setup do
    @artigo = artigos(:one)
  end

  test "visiting the index" do
    visit artigos_url
    assert_selector "h1", text: "Artigos"
  end

  test "should create artigo" do
    visit artigos_url
    click_on "New artigo"

    fill_in "Content", with: @artigo.content
    fill_in "Title", with: @artigo.title
    click_on "Create Artigo"

    assert_text "Artigo was successfully created"
    click_on "Back"
  end

  test "should update Artigo" do
    visit artigo_url(@artigo)
    click_on "Edit this artigo", match: :first

    fill_in "Content", with: @artigo.content
    fill_in "Title", with: @artigo.title
    click_on "Update Artigo"

    assert_text "Artigo was successfully updated"
    click_on "Back"
  end

  test "should destroy Artigo" do
    visit artigo_url(@artigo)
    click_on "Destroy this artigo", match: :first

    assert_text "Artigo was successfully destroyed"
  end
end
