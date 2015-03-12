require 'pp'

class ResultsController < ApplicationController

  def index


    if test = trim(params[:code])
      if (3..6).include?(test.size)
        @results = Adress.where(["code like ?", "#{test}%"]).all
      elsif test.size == 7
        pp '@@@@@@@@@@@@@@@@@@@@@@@'
        pp Adress.where(code: test).first
        pp '@@@@@@@@@@@@@@@@@@@@@@@'
        redirect_to result_url(Adress.where(code: test).first)
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

  private
  def trim(str)
    (str||'').tr( '０-９ー','0-9-' ).gsub('-','')
  end


end