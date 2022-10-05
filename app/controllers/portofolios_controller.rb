class PortofoliosController < ApplicationController
  before_action :set_portfolio, only: %i[ show edit update destroy ]

  def index
    @portofolio_items = Portofolio.all
  end

  def angular
    @angular_portofolio_items = Portofolio.angular
  end

  def new
    @portofolio_item = Portofolio.new
    3.times { @portofolio_item.technologies.build }
  end
  
  def create
    @portofolio_item = Portofolio.new(portofolio_params)

    respond_to do |format|
      if @portofolio_item.save
        format.html { redirect_to portofolios_path, notice: "Portofolio was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show

  end

  def edit

  end

  def update
    respond_to do |format|
      if @portofolio_item.update(portofolio_params)
        format.html { redirect_to portofolios_path, notice: "Portofolio was successfully updated." }
        format.json { render :show, status: :ok, location: @portofolio_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portofolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portofolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portofolios_path, notice: "Portofolio was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  private
    def set_portfolio
      @portofolio_item = Portofolio.find(params[:id])
    end

    def portofolio_params
      params.require(:portofolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
    end
end
