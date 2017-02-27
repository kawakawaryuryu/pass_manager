class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to accounts_path
    else
      render :new
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])


    if @account.update(account_params)
      redirect_to accounts_path
    else
      render :edit
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    redirect_to accounts_path
  end


  private
  def account_params
    params.require(:account).permit(:site, :mail, :pass, :pass_confirmation)
  end
end
