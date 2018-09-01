# def reformat_languages(languages)
# formatted = Hash.new()

# languages.each do |top_key, language|

#     language.each do |langua, type|
#     # puts "LANGUAGE:"
#     # puts language
#     # puts "TYPE"
#     # puts type 
#     if !formatted.keys.include?(language)
#     #_________________
#     styles_array = Array.new().push(top_key)
#     #  p "FORMATED"
#     p formatted[langua] = { :type => type , :style => styles_array}
#     else
#         formatted[langua][:style].push(top_key)
#     end 
#   end
#   end
#   formatted
# end   

# print reformat_languages(languages)

#REFACTORING 1 ________________________

def reformat_languages(languages)
  formatted = {}
  languages.each do |top_key, hash|
     #top_key => :functional || :oo
     # hash without top key :oo or fuctional
    hash.each do |name, attr_hash|
    #name => :erlang or :javascript
    #attributes => {:type=>"interpreted"}
    formatted[name] ||= attr_hash
      #IF language[name] is undifined then assign it the value of attributes, otherwise leave it alone. =
      arr = Array.new 
      formatted[name][:style] ||= arr 
      formatted[name][:style] << top_key
    end
  end
 p new_languages
end
reformat_languages(languages)

#SOLUTION TO REVIEW 
# def reformat_languages(languages)
#   new_languages = {}
#   languages.each do |type, hash|
#     hash.each do |name, attributes|
#       new_languages[name] ||= attributes
#       new_languages[name][:style] ||= []
#       new_languages[name][:style] << type
#     end
#   end
#   new_languages
# end

def reformat_languages(languages)
  language_attributes = {}

  languages.each do |oo_or_functional, language_hash|
    #:oo, {:ruby => {...}}
    language_hash.each do |language, attribute_hash|
      #:ruby, {:type => "interpreted"}
      attribute_hash.each do |attribute, str_value|
        #:type, "interpreted"
        if language_attributes[language].nil?
          #if language :ruby doesn't exist in new hash
          language_attributes[language] = {}  #initiate a new hash for the value of :ruby
        end
        # this would cause us problems if we had more than one attribute we're iterating over
        language_attributes[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
        language_attributes[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key                                
        if language_attributes[language][attribute].nil?
          #if :ruby language key doesn't have a :type key nested within it
          language_attributes[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
        end
      end
    end
  end
  language_attributes
end