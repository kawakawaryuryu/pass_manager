class PassesController < ApplicationController
  def index
    @passes = Pass.all
  end

  def new
    @pass = Pass.new
  end

  def create
    @pass = Pass.new(params.require(:pass).permit(:site, :mail, :pass))

    if @pass.save
      redirect_to passes_path
    else
      redirect_to @pass
    end
  end
end
