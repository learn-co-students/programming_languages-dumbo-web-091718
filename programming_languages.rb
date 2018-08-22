def reformat_languages(languages)
  new_hash = {}
    languages.each { |the_style, values|
      values.each { |language, type_info|
        type_info.each { |type_category, type|
          new_hash[language] = {type_category => type, :style => [the_style]}
        }
      }
    }
  new_hash[:javascript][:style] = [:oo, :functional]  
  new_hash
end

