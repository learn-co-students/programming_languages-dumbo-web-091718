def reformat_languages(languages)
 formatted = Hash.new()

languages.each do |top_key, language|

    language.each do |langua, type|
    # puts "LANGUAGE:"
    # puts language
    # puts "TYPE"
    # puts type 
     if !formatted.keys.include?(language)
    #_________________
     styles_array = Array.new().push(top_key)
     #  p "FORMATED"
     p formatted[langua] = { :type => type , :style => styles_array}
     else
        formatted[langua][:style].push(top_key)
    end 
   end
  end
  formatted
end   

print reformat_languages(languages)