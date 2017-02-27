class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(params.require(:account).permit(:site, :mail, :pass))

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


    if @account.update(params.require(:account).permit(:site, :mail, :pass))
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
end
