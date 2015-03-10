require 'pp'

class ResultsController < ApplicationController
  def show
    pp '@@@@@@@@@@@@@@@@@@@@@@@'
    pp params
    pp '@@@@@@@@@@@@@@@@@@@@@@@'
    @results = Adress.where(code: params[:code]).all
  end
end
