class InvestorsController < ApplicationController
  before_action :require_login

  def new
    @investor = Investor.new
  end

  def create
    @investor = current_user.investors.build(investor_params)
   
    if @investor.save
      redirect_to(
        new_investor_path,
        notice: "Successfully added #{@investor.full_name}",
      )
    else
      flash.alert = "Unable to save investor"
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @investor = Investor.new
    render :new
  end

  private

  def investor_params
    params.require(:investor).permit(*Investor::REQUIRED_ATTRIBUTES)
  end

end
