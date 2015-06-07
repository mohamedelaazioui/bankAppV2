class BankersController < ApplicationController
  before_action :set_banker, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bankers = Banker.all
    respond_with(@bankers)
  end

  def show
    respond_with(@banker)
  end

  def new
    @banker = Banker.new
    respond_with(@banker)
  end

  def edit
  end

  def create
    @banker = Banker.new(banker_params)
    @banker.save
    respond_with(@banker)
  end

  def update
    @banker.update(banker_params)
    respond_with(@banker)
  end

  def destroy
    @banker.destroy
    respond_with(@banker)
  end

  private
    def set_banker
      @banker = Banker.find(params[:id])
    end

    def banker_params
      params.require(:banker).permit(:firstName, :lastName, :phoneNumber, :emailAddress, :branch_id)
    end
end
