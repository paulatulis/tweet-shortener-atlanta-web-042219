def dictionary 
 dictionary = {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
end 


def word_substituter(tweet) 
  shorter_tweet = []
  tweet_array = tweet.split(' ') 
  tweet_array.each do |word| 
    lower_word = word.downcase 
    if dictionary.key?(lower_word) 
    shorter_tweet << dictionary[lower_word] 
    else 
    shorter_tweet << word 
  end
  end
  shorter_tweet.join(' ') 
end

def bulk_tweet_shortener(array)
end
  
def bulk_tweet_shortener(array)
array.each do |x|
puts word_substituter
end
end 