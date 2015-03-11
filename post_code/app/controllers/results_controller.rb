require 'pp'

class ResultsController < ApplicationController



  def index
    pp '@@@@@@@@@@@@@@@@@@@@@@@'
    pp params
    pp '@@@@@@@@@@@@@@@@@@@@@@@'

    if test = params[:code]
    @results = Adress.where(["code like ?", "#{test}%"]).all
    elsif test = params[:prefecture]
    @results = Adress.where(["prefecture like ?", "#{test}%"]).all
    elsif test.present?
      end
  end



  def show
    pp '@@@@@@@@@@@@@@@@@@@@@@@'
    pp params
    pp '@@@@@@@@@@@@@@@@@@@@@@@'



    @result = Adress.find(params[:id])
  end


end