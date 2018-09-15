def reformat_languages(languages)
  hash_arr = []
  style_arr = []
  
  languages.each do |k, v|
    style_arr << k 
    v.keys.each do |el| 
      ooh = languages[:oo].has_key?(el)
      fun = languages[:functional].has_key?(el)

      ooh && fun ? style = style_arr : style = [k]
 
      hash_arr << {el => {:type => v[el][:type], :style => style}}

    end
  end
  
  return hash_arr.reduce Hash.new, :merge
end