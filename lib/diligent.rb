require 'bundler'
require 'diligent/version'
require 'diligent/list'

module Diligent
  class Info
    # Not-so-random legal jargon. Please don't try this at home.
    #
    # @return [String] random legal jargon, for fun
    def self.legalese
      "New versions of the executable. If distribution of the alternative licenses, if any, in source and free culture, all users contributing to Wikimedia projects To grow the commons of free software, and (2) offer you this license is required to exercise the rights granted hereunder will terminate: (a) automatically without notice from Apple which Apple may grant in its Contribution, if any, must include the Program or Derived Programs thereof. Article 4 (Termination of Agreement) 1. The Recipient may not occur to you when allowing others to access the modified work as a relevant directory file) where a user would be entitled to make sure that they, too, receive or can get it if you want it to your programs, too."
    end

    # Provides a URL linking to the **text** of a given `open-source` *license*.
    #
    # @param format [String] the short name of the license
    # @return [String] the URL where the full text of the license can be read
    def self.license_text(license_name)
      "http://opensource.org/licenses/#{license_name}"
    end
  end
end
