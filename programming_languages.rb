def reformat_languages(languages)

  new_hash = {}

  languages.each do |lang_type, lang_hash|
    lang_hash.each do |lang, type_hash|
      if new_hash.keys.include?(lang)
        new_hash[lang][:style] << lang_type
      else
        new_hash[lang] = type_hash
        new_hash[lang][:style] = [lang_type]
      end
    end
  end
  new_hash
end
