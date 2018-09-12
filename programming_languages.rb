require 'pry'
def reformat_languages(languages)
  reformatted = {}
  languages.each do |style, langs|
    langs.each do |language, type|
      reformatted[language] = type if !reformatted.has_key?(language)
      if reformatted[language].has_key?(:style)
        reformatted[language][:style] << style
      else
        reformatted[language][:style] = [style]
      end
    end
  end
  return reformatted
end
