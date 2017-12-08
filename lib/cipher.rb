require 'sinatra'
#require 'sinatra/reloader' if development?
require 'erb'


get '/' do 
  message = params["message"]
  cipher = params["cipher"].to_i
  coded_message = encrypt(message, cipher) if (message and cipher)
  erb :index, :locals => { :coded_message => coded_message }
end

def encrypt(message, cipher)
  coded_message = []
  arr = message.split("")
  arr.each { |letter| coded_message << convert(letter, cipher) }
  coded_message.join()
end

def convert(letter, cipher)
  ltr = letter.ord
  if ltr.between?(65, 90)
    convert_uppercase(ltr, cipher)
  elsif ltr.between?(97, 122)
    convert_lowercase(ltr, cipher)
  else
    ltr.chr
  end
end

def convert_uppercase(ltr, cipher)
    code = ltr + cipher
    x = (90-(64-code)) if code < 65
    x = (code-90) + 64 if code > 90
    x ? x.chr : code.chr
end

def convert_lowercase(ltr, cipher)
  code = ltr + cipher
  x = (122-(96-code)) if code < 97
  x = (code-122) + 96 if code > 122
  x ? x.chr : code.chr
end