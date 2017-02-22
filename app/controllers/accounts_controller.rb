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
      redirect_to @account
    end
  end
end
