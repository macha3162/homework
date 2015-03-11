require 'pp'

class ResultsController < ApplicationController
  def index
    pp '@@@@@@@@@@@@@@@@@@@@@@@'
    pp params
    pp '@@@@@@@@@@@@@@@@@@@@@@@'

    if test = params[:code]
    else
      test = " "
    end
    @results = Adress.where("code like '%" + test + "%'").all
  end

  def show
    pp '@@@@@@@@@@@@@@@@@@@@@@@'
    pp params
    pp '@@@@@@@@@@@@@@@@@@@@@@@'

    if test = params[:code]
    else
      test = " "
    end
     test = params[:code] || " "
    @results = Adress.where(["code like ?", "#{test}%"]).all
  end
end