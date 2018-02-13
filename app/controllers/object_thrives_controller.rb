class ObjectThrivesController < ApplicationController
  before_action :set_object_thrife, only: [:show, :edit, :update, :destroy]

  # GET /object_thrives
  # GET /object_thrives.json
  def index
    @object_thrives = ObjectThrive.all
  end

  # GET /object_thrives/1
  # GET /object_thrives/1.json
  def show
  end

  # GET /object_thrives/new
  def new
    @object_thrife = ObjectThrive.new
  end

  # GET /object_thrives/1/edit
  def edit
  end

  # POST /object_thrives
  # POST /object_thrives.json
  def create
    @object_thrife = ObjectThrive.new(object_thrife_params)

    respond_to do |format|
      if @object_thrife.save
        format.html { redirect_to @object_thrife, notice: 'Object thrive was successfully created.' }
        format.json { render :show, status: :created, location: @object_thrife }
      else
        format.html { render :new }
        format.json { render json: @object_thrife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /object_thrives/1
  # PATCH/PUT /object_thrives/1.json
  def update
    respond_to do |format|
      if @object_thrife.update(object_thrife_params)
        format.html { redirect_to @object_thrife, notice: 'Object thrive was successfully updated.' }
        format.json { render :show, status: :ok, location: @object_thrife }
      else
        format.html { render :edit }
        format.json { render json: @object_thrife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /object_thrives/1
  # DELETE /object_thrives/1.json
  def destroy
    @object_thrife.destroy
    respond_to do |format|
      format.html { redirect_to object_thrives_url, notice: 'Object thrive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_object_thrife
      @object_thrife = ObjectThrive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def object_thrife_params
      params.fetch(:object_thrife, {})
    end
end
