require "test_helper"

class WrapperTest < ActiveSupport::TestCase
  setup do
    @text = "The BEST of two worlds. The Nintendo 2DS system brings the power of two systems together into a single, affordable package. Play games-both Nintendo DS and Nintendo 3ds-in 2D. Connect with friends, other players, and wireless hotspots using the wireless streetpass and spotpass communication modes to unlock exclusive content for games and download other entertainment. Nintendo 2DS is a 2D system that plays Nintendo DS and Nintendo 3DS games in 2D only."
  end

  test "Should insert new line after given column number" do
    # Insert after every column number character.
    # expected = "The BEST of two\nworlds. The\nNintendo 2DS\nsystem brings\nthe power of\ntwo systems\ntogether into a\nsingle,\naffordable\npackage. Play\ngames-both\nNintendo DS and\nNintendo 3ds-in\n2D. Connect\nwith friends,\nother players,\nand wireless\nhotspots using\nthe wireless\nstreetpass and\nspotpass\ncommunication\nmodes to unlock\nexclusive\ncontent for\ngames and\ndownload other\nentertainment.\nNintendo 2DS is\na 2D system\nthat plays\nNintendo DS and\nNintendo 3DS\ngames in 2D\nonly."
    
    # Insert after every column number word.
    expected = "The BEST of two worlds. The Nintendo 2DS system brings the power of two systems\ntogether into a single, affordable package. Play games-both Nintendo DS and Nintendo 3ds-in 2D. Connect\nwith friends, other players, and wireless hotspots using the wireless streetpass and spotpass communication modes\nto unlock exclusive content for games and download other entertainment. Nintendo 2DS is a 2D\nsystem that plays Nintendo DS and Nintendo 3DS games in 2D only."

    assert_equal(Wrapper.wrap(@text, 15), expected)
  end

  test "Should return nil if text or column number missing" do
    # If column number is missing.
    assert_equal(Wrapper.wrap(@text, nil), nil)

    # If text is missing.
    assert_equal(Wrapper.wrap(nil, 10), nil)

    # If both params are missing.
    assert_equal(Wrapper.wrap(nil, nil), nil)
  end
end
