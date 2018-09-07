def reformat_languages(languages)
  # your code here
  new_hash={}
  languages.each do |style, languages|
    languages.each do |langu,type|
      if new_hash.has_key?(langu)
         new_hash[langu][:style] << style
       else
         new_hash[langu] = type
         new_hash[langu][:style] = [style]
       end
     end
   end
  new_hash
end
