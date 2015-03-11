require 'pp'

class ResultsController < ApplicationController
  def index
    pp '@@@@@@@@@@@@@@@@@@@@@@@'
    pp params
    pp '@@@@@@@@@@@@@@@@@@@@@@@'

    test = params[:code] || " "
    @results = Adress.where(["code like ?", "#{test}%"]).all
  end

  def show
    pp '@@@@@@@@@@@@@@@@@@@@@@@'
    pp params
    pp '@@@@@@@@@@@@@@@@@@@@@@@'

    test = params[:code] || " "
    @results = Adress.where(["code like ?", "#{test}%"]).all
  end
end