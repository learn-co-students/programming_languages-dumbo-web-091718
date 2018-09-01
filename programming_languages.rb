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

#REFACTORING 1 ________________________

def reformat_languages(languages)
  new_languages = {}
  languages.each do |type, hash|
     #type => :functional || :oo
     # hash without topKey
    hash.each do |name, attributes|
    #name => :erlang or :javascript
    #attributes => {:type=>"interpreted"}

       new_languages[name] ||= attributes
      #IF language[name] is undifined then assign it the value of attributes, otherwise leave it alone. 

      arr = Array.new
      new_languages[name][:style] ||= (arr &&  (arr << type))
    end
  end
 p new_languages
end
 p reformat_languages(languages)