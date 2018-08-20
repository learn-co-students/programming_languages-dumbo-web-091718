def reformat_languages(languages)
  # your code here
  new_hash = {}
  
  languages.each do |style, langs|
    langs.each do |language, type|
      if new_hash.keys.include?(language)
        new_hash[language][:style] << style
      else 
        new_hash[language] = type
        new_hash[language][:style] = [style]
      end
    end
end
new_hash
end
