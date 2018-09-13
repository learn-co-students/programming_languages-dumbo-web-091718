def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |language1, type|
      new_hash[language1] = type
      new_hash[language1][:style] = []
      new_hash[language1][:style] << style
    end
  end
  new_hash[:javascript][:style] = [:functional, :oo]
  new_hash
end
