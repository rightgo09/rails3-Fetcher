require "curb"

class FetchController < ApplicationController

  def fetch
    url = params[:url].presence || "http://www.google.co.jp"
    res = Curl::Easy.perform(url)
    render :text => res.body_str
  end

end
