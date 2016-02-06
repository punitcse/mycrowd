class TestsController < ApplicationController
  def new
    @test = Test.new
  end

  def search
    @tests = Test.where('url like (?)',"%#{params[:url]}%") unless params[:url].nil?
    respond_to { |f| f.js }
  end
end
