class SpecialtiesController < AdministrationController

  def index
    @specialties = Specialty.paginate(page: params[:page])
  end

  def show
    @specialty = Specialty.find(params[:id])
  end

  def new
    @specialty = Specialty.new
  end

  def edit
    @specialty = Specialty.find(params[:id])
  end

  def create
    @specialty = Specialty.new(params[:specialty])

    respond_to do |format|
      if @specialty.save
        format.html { redirect_to specialties_url, notice: 'Specialty was successfully created.' }
        format.json { render json: @specialty, status: :created, location: @specialty }
      else
        format.html { render action: "new" }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @specialty = Specialty.find(params[:id])

    respond_to do |format|
      if @specialty.update_attributes(params[:specialty])
        format.html { redirect_to specialties_url, notice: 'Specialty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @specialty = Specialty.find(params[:id])
    @specialty.destroy

    respond_to do |format|
      format.html { redirect_to specialties_url }
      format.json { head :no_content }
    end
  end
end
