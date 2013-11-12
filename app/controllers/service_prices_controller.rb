class ServicePricesController < AdministrationController
  def index
    @service_prices = ServicePrice.paginate(page: params[:page])
  end

  def show
    @service_price = ServicePrice.find(params[:id])
  end

  def new
    @service_price = ServicePrice.new
  end

  def edit
    @service_price = ServicePrice.find(params[:id])
  end

  def create
    @service_price = ServicePrice.new(params[:service_price])

    respond_to do |format|
      if @service_price.save
        format.html { redirect_to service_prices_url, notice: 'Service price was successfully created.' }
        format.json { render json: @service_price, status: :created, location: @service_price }
      else
        format.html { render action: "new" }
        format.json { render json: @service_price.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @service_price = ServicePrice.find(params[:id])

    respond_to do |format|
      if @service_price.update_attributes(params[:service_price])
        format.html { redirect_to service_prices_url, notice: 'Service price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @service_price.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @service_price = ServicePrice.find(params[:id])
    @service_price.destroy

    respond_to do |format|
      format.html { redirect_to service_prices_url }
      format.json { head :no_content }
    end
  end
end
