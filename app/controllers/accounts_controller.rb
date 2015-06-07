class AccountsController < ApplicationController
  before_filter :authenticate_client!
  before_filter :intercept_html_requests
  layout false
  respond_to :json

  def index
    @accounts = current_client.accounts
    render_with_protection @accounts.to_json
  end

  def show
    render_with_protection @account.to_json
  end

  def new
    @account = Account.new
    render_with_protection @account.json

  end

  def edit
  end

  def create
    @account = Account.new(account_params)
    @account.save
    render_with_protection @account

  end

  def update
    @account.update(account_params)
    respond_with(@account)
  end

  def destroy
    @account.destroy
    respond_with(@account)
  end


  private
    def set_account
      @account = Account.find(params[:id])
    end

    def account_params
      params.require(:account).permit(:beginDate, :expiryDate, :saldo, :rate, :client_id, :status_id, :category_id)
    end

    def intercept_html_requests
      redirect_to('/') if request.format == Mime::HTML
    end
end
