class TimememosController < ApplicationController
  def index
      @timememos = Timememo.all
  end
  
  def show
      @timememo = Timememo.find(params[:id])
  end
  
  def new
      @timememo = Timememo.new(content: '入力')
  end
end
