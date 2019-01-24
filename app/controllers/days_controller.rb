class DaysController <  ApplicationController

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(day_params)

    if @day.save
      flash[:notice] = "Day was saved successfully."
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def show

    @day = Day.find(params[:id])
  end

  def index
  end

  private
  def day_params
    params.require(:day).permit(:city, :weather)
  end

end
