require 'date'

class TweetCrawler
  def search_tweets(search_word, client)
    client.search(search_word).each do |tweet|
      TweetRecord.create(tweet_id: tweet.id, search_word: search_word, user_name: tweet.user.screen_name, text: tweet.text, tweet_date: tweet.created_at)
    end
  end
end

