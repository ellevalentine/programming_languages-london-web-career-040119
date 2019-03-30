languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  reformatted_hash = {}
  languages.each do |type, language_hash|
    language_hash.each do |language_name, data|
      data.each do |data_name, value|
        if reformatted_hash.key?(language_name) == false
          reformatted_hash[language_name] = {data_name => value, :style => [type]}
        else
          reformatted_hash[language_name][:style] << type
        end
      end
    end
  end
  reformatted_hash
end


reformat_languages(languages)