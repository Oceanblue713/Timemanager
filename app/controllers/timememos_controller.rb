class TimememosController < ApplicationController
  def index
      @timememos = Timememo.all
  end
  
  def show
      @timememo = Timememo.find(params[:id])
  end
  
  def new
      @timememo = Timememo.new
  end
  
  def create
      @timememo = Timememo.new(timememo_params)
      
    if @timememo.save
    redirect_to @timememo
    else
    render :new
    end
  end
  
  def edit
    @timememo = Timememo.find(params[:id])
  end
  
  def update
    @timememo = Timememo.find(params[:id])
    
    if @timememo.update(timememo_params)
      redirect_to @timememo
    else
      render :edit
    end
  end
  
  def destroy
    @timememo = Timememo.find(params[:id])
    @timememo.destroy
    
    redirect_to timememos_url
  end
  
  
  private
  
  def timememo_params
    params.require(:timememo).permit(:time, :place, :content)
  end
end
