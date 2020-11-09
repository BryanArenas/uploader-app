class DataController < ApplicationController
  

  def index
    @data = Datum.all
  end

  def import
    Datum.my_import(params[:file])
    redirect_to root_url, notice: "Successfully Imported Data."
  end


  def delete(header, minimum_index = 0)
    if header.is_a? Integer
      @row.delete_at(header)
    elsif i = index(header, minimum_index)
      @row.delete_at(i)
    else
      []
    end
  end

  private

  def datum_params
    params.require(:datum).permit(attributes: [:country_code, :region_name, :company_name, :description, :last_funding_on, :total_funding_usd])
  end

end