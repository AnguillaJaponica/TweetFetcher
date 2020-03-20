class TweetRecordsController < ApplicationController
  before_action :set_tweet_record_search_params

  def index
    def index
      @tweet_records = @q.result.page params[:page]
    end
  end

  def set_tweet_record_search_params
    @q = TweetRecord.ransack(tweet_record_search_params)
  end

  def tweet_record_search_params
    params.fetch(:q, {}).permit(:tweet_id_eq, :search_word_cont, :user_name_cont, :text_cont, :tweet_date_lteq)
  end
end