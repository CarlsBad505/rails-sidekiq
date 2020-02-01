class EndangeredController < ApplicationController
  before_action :set_endangered, only: [:index, :data]

  def index
    if @endangered.length > 0
      redirect_to endangered_data_path
    else
      render 'index'
    end
  end

  def data
  end

  def upload
    csv_file = File.join Rails.root, 'db', 'sharks.csv'
    AddEndangeredWorker.perform_in(5.seconds, csv_file)
    redirect_to endangered_data_path, notice: 'Endangered sharks uploading, check back soon!'
  end

  def destroy
    RemoveEndangeredWorker.perform_in(5.seconds)
    redirect_to root_path
  end

  private

  def set_endangered
    @endangered = Endangered.all
  end
end
