require 'date'
require 'yaml'

module Zodiac
  TRANSLATIONS = YAML.load_file(File.expand_path('../locales/en.yml', __FILE__)).
    fetch('en').fetch('zodiac').freeze

  def self.translate(sign)
    TRANSLATIONS.fetch(sign.to_s)
  end
end

require 'zodiac/finder'

module Zodiac
  def self.each_sign(&block)
    Finder::SIGN_IDS.each(&block)
  end
end

require 'zodiac/date'
require 'zodiac/activerecord'
