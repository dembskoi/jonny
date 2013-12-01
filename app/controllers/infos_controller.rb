class InfosController < AdministrationController
  def index
    @infos = Info.all
  end

  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])

    respond_to do |format|
      if @info.update_attributes(params[:info])
        format.html { redirect_to infos_url, notice: 'Info was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
end
