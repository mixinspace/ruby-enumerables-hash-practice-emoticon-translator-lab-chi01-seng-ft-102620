require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)

  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  new_hash = {}

  emoticons.each do |key,value|
    new_hash['get_emoticon'][value[0]] = emoticons[key][1]
    new_hash['get_meaning'][value[1]] = key
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
  end

  new_hash
end
