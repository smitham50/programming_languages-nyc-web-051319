require "pry"

def reformat_languages(languages)
  reformed_hash = {}
  languages.each do |style, language|
    language.each do |name, type|
      reformed_hash[name] ||= type
      reformed_hash[name][:style] ||= []
      reformed_hash[name][:style] << style
    end
  end
  reformed_hash
end
