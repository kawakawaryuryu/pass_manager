class PassesController < ApplicationController
  def index
  end

  def new
    @pass = Pass.new
  end
end
