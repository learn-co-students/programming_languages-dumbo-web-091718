require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_h|
      type_h.each do |type, value| 
       new_hash[lang] = {
        :type => value,  
        :style => [style]
      }
    if languages[:oo].has_key?(lang) && languages[:functional].has_key?(lang) 
        new_hash[lang][:style] << :oo
        new_hash[lang][:style] << :functional
      elsif languages[:oo].has_key?(lang) != true || languages[:functional].has_key?(lang) != true
          new_hash[lang][:style] = [style]
        end
 # binding.pry
    end
  #  binding.pry
  end 
end
  return new_hash
end 
