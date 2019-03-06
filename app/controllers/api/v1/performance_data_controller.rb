class Api::V1::PerformanceDataController < ApplicationController
	def create
		binding.pry
    @data = PerformanceData.new(performance_data_params)

		if @data.save
			binding.pry
      render json: { message: 'all good' }
		else
			binding.pry

      render json: { error: @data.errors.full_messages }
    end
  end

  private

  def performance_data_params
    params.require(:performance_data).permit!
  end
end