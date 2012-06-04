class QasController < ApplicationController
  # GET /qas
  # GET /qas.json
  def index
    @qas = Qa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qas }
    end
  end

  # GET /qas/1
  # GET /qas/1.json
  def show
    @qa = Qa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qa }
    end
  end

  # GET /qas/new
  # GET /qas/new.json
  def new
    @qa = Qa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qa }
    end
  end

  # GET /qas/1/edit
  def edit
    @qa = Qa.find(params[:id])
  end

  # POST /qas
  # POST /qas.json
  def create
    @qa = Qa.new(params[:qa])

    respond_to do |format|
      if @qa.save
        format.html { redirect_to @qa, notice: 'Qa was successfully created.' }
        format.json { render json: @qa, status: :created, location: @qa }
      else
        format.html { render action: "new" }
        format.json { render json: @qa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qas/1
  # PUT /qas/1.json
  def update
    @qa = Qa.find(params[:id])

    respond_to do |format|
      if @qa.update_attributes(params[:qa])
        format.html { redirect_to @qa, notice: 'Qa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qas/1
  # DELETE /qas/1.json
  def destroy
    @qa = Qa.find(params[:id])
    @qa.destroy

    respond_to do |format|
      format.html { redirect_to qas_url }
      format.json { head :no_content }
    end
  end
end
