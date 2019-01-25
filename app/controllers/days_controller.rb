class DaysController <  ApplicationController
  before_action :set_day, only: [:edit, :update, :show, :destroy]

  def index
    @days = Day.all
  end

  def new
    @day = Day.new
  end

  def edit
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

    if @day.update(day_params)
      flash[:notice] = "Day was edited successfully."
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @day.destroy
    flash[:notice] = "Day was successfully deleted."
    redirect_to days_path
  end


  private
  def day_params
    params.require(:day).permit(:city, :weather)
  end

  def set_day
    @day = Day.find(params[:id])
  end

end
