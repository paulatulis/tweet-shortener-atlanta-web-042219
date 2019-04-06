def dictionary 
  {
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

tweet_string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def word_substituter(tweet_string) 
  #pass in argument of a string that is a tweet
  #create a new array that we can put the result into
  arr_tweets = tweet_string.split(' ') 
  #make a new variable called arr_tweets that is equal to the array of splitting the tweet_string(original argument) into an array
  result = arr_tweets.map do |word| 
    lower_word = word.downcase
    dictionary.key?(lower_word) ? dictionary[lower_word] : word
  end
  result.join(' ') 
  #take the new array and make it back into a string 
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
 puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <141
    tweet
  else word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <141
    tweet
  else tweet[0..136] + "..."
end 
end 