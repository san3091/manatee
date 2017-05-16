require "spec_helper"
require "gimme"
require "pry"

RSpec.describe Manatee::ManParser do
  let(:man_page) { `man rake | col -bx` }

  it "parses a man page" do
    splits_text = gimme_next(SplitsText)
    groups_into_sections = gimme_next(GroupIntoSections)
    give(splits_text).split() {}
    give(groups_into_sections).group() {}
    Manatee::ManParser.parse(man_page)
  end
end
