class Api::ApiController < ApplicationController
  def list(model, filtering_params = filtering_params())
    records = model.filter_by(filtering_params)
    records = records.page(params[:page]).per(params[:per_page] || 12) unless params[:page].to_i == -1
    records
  end

  private

  def filtering_params
    []
  end  
end