require 'thor'
require 'pp'

module Cli 
  class Manatee < Thor
    desc "show PAGE [SECTION]", "Don't worry, you got this, I'll show you"
    long_desc <<-LONGDESC
    You got this. You look like you need a hug. It's gonna be fine.
    Man pages are cute. Here, let me help you with that.

    You can see the NAME, SYNOPSIS, DESCRIPTION, or OPTIONS section.

    Don't worry, you're doing a great job.
    LONGDESC
    option :section, aliases: "-s"
    def show(page)
      man_page = `man #{page} | col -bx`
      puts man_page
    end
  end
end

