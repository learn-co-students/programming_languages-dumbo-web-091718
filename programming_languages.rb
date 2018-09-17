def reformat_languages(languages)
  new_hash  = {}
  
  languages.each do |oo_fun, lang|
   lang.each do |lang_name, tipo | 
    
    
    # if lang_name == oo_fun[lang]
    new_hash[lang_name] = {style: [oo_fun]}         
    new_hash[lang_name].merge!(tipo)
      
   
   end 

  end
puts new_hash
end

reformat_languages(languages)