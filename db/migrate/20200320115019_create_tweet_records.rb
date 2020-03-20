class CreateTweetRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :tweet_records do |t|
      t.bigint :tweet_id
      t.string :search_word, default: ''
      t.string :user_name, default: ''
      t.string :text, default: ''
      t.datetime :tweet_date
    end
  end
end
