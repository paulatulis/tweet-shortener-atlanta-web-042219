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


def word_substituter(tweet_string) 
  #pass in argument of a string that is a tweet
  arr_tweets = tweet_string.split(' ') 
  #make a new variable called arr_tweets that is equal to the array of splitting the tweet_string(original argument) into an array
  result = arr_tweets.map do |word| #make a new variable called result that you will turn into a string at the end. For each item in the array, call it a 'word'. 
    lower_word = word.downcase #make each word lowercase and save it as a new variable 
    dictionary.key?(lower_word) ? dictionary[lower_word] : word #does the key of dictionary contain the lower word? if it does, access the value for that kay. if it doesn't keep the original word.
  end
  result.join(' ') 
  #take the new array and make it back into a string 
end
  