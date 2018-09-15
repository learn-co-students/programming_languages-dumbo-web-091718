def reformat_languages(languages)
  # your code here
  reformatted_languages = {}

  languages.each do |key, value|
    value.each do |k, v|
      v.each do |item, attribute|
        reformatted_languages[k] = {
          item => attribute,
          :style => [key]
        }
      end
    end
    reformatted_languages[:javascript][:style] = [:oo, :functional]
  end
  reformatted_languages
end
