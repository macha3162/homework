require 'pp'

class ResultsController < ApplicationController

  def index


    if test = params[:code]
      if (3..6).include?(params[:code].size)
        @results = Adress.where(["code like ?", "#{test}%"]).all
      elsif params[:code].size == 7
        pp '@@@@@@@@@@@@@@@@@@@@@@@'
        pp Adress.where(code: params[:code]).first
        pp '@@@@@@@@@@@@@@@@@@@@@@@'
        redirect_to result_url(Adress.where(code: params[:code]).first)
      elsif
       redirect_to(:back)
      end
    elsif test = params[:prefecture]
      @results = Adress.where(["prefecture like ?", "#{test}%"]).all
    elsif test.present?
else
    end

  end


  def show
    @result = Adress.find(params[:id])
  end


end