def reformat_languages(languages)
  # your code here
  collected_languages = {}
  counter = 0
  styles = languages.keys
  both_styles = styles

  oo_style = []
  oo_languages = languages.values.first
  oo_keys = oo_languages.keys
  oo_values = oo_languages.values

  functional_style = []
  functional_languages = languages.values.last
  functional_keys = functional_languages.keys
  functional_values = functional_languages.values

  all_keys = oo_keys
  all_values = oo_values
  all_reformat = {}

  if languages.keys.length == 2
    styles = languages.keys
    styles.pop
    oo_style = styles
  end

  if both_styles.length == 2
    styles = languages.keys
    styles.shift
    functional_style = styles
  end

  if functional_keys.length == 4
    functional_keys.pop
    condensed_functional_keys = functional_keys
  end

  while condensed_functional_keys.length > 0
    all_keys << condensed_functional_keys.first
    condensed_functional_keys.shift
  end

  while all_keys.length > 0
    if all_keys.first == :javascript
      all_reformat[all_keys.first] = {:type => "interpreted", :style => both_styles}
    elsif all_keys.first == :ruby || all_keys.first == :python
      all_reformat[all_keys.first] = {:type => "interpreted", :style => oo_style}
    elsif all_keys.first == :java
      all_reformat[all_keys.first] = {:type => "compiled", :style => oo_style}
    else
      all_reformat[all_keys.first] = {:type => "compiled", :style => functional_style}
    end
    all_keys.shift
  end
  return all_reformat
end
