class PrescriptionsController < ApplicationController
  before_action :get_patient
  before_action :set_prescription, only: %i[ show edit update destroy ]


  # Unused Routes
    # # GET /patients/1/prescriptions
  # def index
  #   @prescriptions = @patient.prescriptions
  # end

  # # GET /prescriptions/1 or /prescriptions/1.json
  # def show
  # end

  # # GET /prescriptions/1/edit
  # def edit
  # end

  # GET /patients/1/prescriptions/new
  def new
    @prescription = @patient.prescriptions.build
  end

  # POST /patients/1/prescriptions
  def create
    @prescription = @patient.prescriptions.build(prescription_params)
    respond_to do |format|
      if @prescription.save
        format.html { redirect_to patient_path(@patient), notice: 'Prescription was successfully created.' }
        format.json { render :show, status: :created, location: @prescription }
      else
        format.html { render :new }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1/prescriptions/3
  def update
    respond_to do |format|
      if @prescription.update(prescription_params)
        format.html { redirect_to patient_path(@patient), notice: "Prescription was successfully updated." }
        format.json { render :show, status: :ok, location: @prescription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1/prescriptions/3
  def destroy
    @prescription.destroy
    respond_to do |format|
      format.html { redirect_to patient_path(@patient), notice: "Prescription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_patient
      @patient = Patient.find(params[:patient_id])
    end

    def set_prescription
      @prescription = @patient.prescriptions.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescription_params
      params.require(:prescription).permit(:name, :note, :patient_id)
    end
end
