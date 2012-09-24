require "curb"

class FetchController < ApplicationController

  def fetch
    res = Curl::Easy.perform("http://www.google.co.jp")
    render :text => res.body_str
  end

end
