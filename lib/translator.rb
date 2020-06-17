        require "pry"
        require "yaml"


def load_library(file_path)

emoticon = YAML.load_file(file_path)

emoticon_return = {}
emoticon.each{|key,value|
emoticon_return[key] = {}
emoticon_return[key][:english] = emoticon[key][0]
emoticon_return[key][:japanese] = emoticon[key][1]
}

emoticon_return

end


#def get_japanese_emoticon(file_path,emoticon)
 #  emoticons = load_library(file_path)
 #emoji =  emoticons.values.find{|key| emoticon == key[:english]}
 #binding.pry 
 #puts "hello"
 #:japanese]
#end





#def get_english_meaning(file_path,emoticon)
  # emoticons = load_library(file_path)
#emoji =  emoticons.keys.find{|key| emoticon == emoticons[key][#:japanese]}
 #binding.pry 
#emoji == nil ? "Sorry, that emoticon was not found" : emoji
#end



def get_english_meaning(file_path,emoticon)
  library = load_library(file_path)
  library.each do | key, inner_hash|
   # binding.pry
    if inner_hash[:japanese] == emoticon
     return key
    end
   end
  "Sorry, that emoticon was not found"
end
def get_japanese_emoticon(file_path,emoticon)
  library = load_library(file_path)
  library.each do |key, inner_hash|
    if inner_hash[:english] == emoticon
     # binding.pry
       return library[key][:japanese]
       end
      end
  "Sorry, that emoticon was not found"
  # binding.pry 
end














