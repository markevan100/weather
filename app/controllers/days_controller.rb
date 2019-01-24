class DaysController <  ApplicationController

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(day_params)
    @day.save
    redirect_to days_show(@day)
  end

  private
  def day_params
    params.require(:day).permit(:city, :weather)
  end

end
