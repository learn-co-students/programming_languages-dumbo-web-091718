# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
 
#   }
# }
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style_def, language|
    language.each do |name , definition|
      new_hash[name] ||= definition
      new_hash[name][:style] ||= Array.new 
      new_hash[name][:style] << style_def
    end
  end
  new_hash
end
print reformat_languages(languages)
end 
