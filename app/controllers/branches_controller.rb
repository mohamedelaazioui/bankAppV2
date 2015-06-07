class BranchesController < ApplicationController
  before_filter :intercept_html_requests
  layout false
  respond_to :json

  def index
    @branches = Branch.all
    render_with_protection @branches.to_json
  end

  def show
    respond_with(@branch)
  end

  def new
    @branch = Branch.new
    respond_with(@branch)
  end

  def edit
  end

  def create
    @branch = Branch.new(branch_params)
    @branch.save
    respond_with(@branch)
  end

  def update
    @branch.update(branch_params)
    respond_with(@branch)
  end

  def destroy
    @branch.destroy
    respond_with(@branch)
  end


  private
    def set_branch
      @branch = Branch.find(params[:id])
    end

    def branch_params
      params.require(:branch).permit(:name, :street, :streetNr, :zipCode, :city)
    end

    def intercept_html_requests
      redirect_to('/') if request.format == Mime::HTML
    end

end
