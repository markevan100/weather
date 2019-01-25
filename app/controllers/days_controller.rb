class DaysController <  ApplicationController

  def index
    @days = Day.all
  end

  def new
    @day = Day.new
  end

  def edit
    @day = Day.find(params[:id])
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

  def update
    @day = Day.find(params[:id])

    if @day.update(day_params)
      flash[:notice] = "Day was edited successfully."
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def show
    @day = Day.find(params[:id])
  end


  private
  def day_params
    params.require(:day).permit(:city, :weather)
  end

end
