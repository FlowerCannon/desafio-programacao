require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "test movie mandatory params" do
    @movie = Movie.new
    assert_not @movie.valid?

    @movie.attributes = {
      title: "Filme exemplo",
      overview: "asdasd",
      original_language: "pt-BR"
    }

    assert @movie.valid?

    @movie.attributes = {
      title: "Filme exemplo",
      overview: "",
      original_language: "pt-BR"
    }

    assert @movie.valid?
  end
end
