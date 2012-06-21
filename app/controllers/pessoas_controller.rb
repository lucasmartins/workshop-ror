class PessoasController < ApplicationController
  # GET /pessoas
  # GET /pessoas.json
  def index
    @pessoas = Pessoa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pessoas }
    end
  end

  # GET /pessoas/1
  # GET /pessoas/1.json
  def show
    @pessoa = Pessoa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pessoa }
    end
  end

  # GET /pessoas/new
  # GET /pessoas/new.json
  def new
    @pessoa = Pessoa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pessoa }
    end
  end

  # GET /pessoas/1/edit
  def edit
    @pessoa = Pessoa.find(params[:id])
  end

  # POST /pessoas
  # POST /pessoas.json
  def create
    @pessoa = Pessoa.new(params[:pessoa])

    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to @pessoa, notice: 'Pessoa was successfully created.' }
        format.json { render json: @pessoa, status: :created, location: @pessoa }
      else
        format.html { render action: "new" }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pessoas/1
  # PUT /pessoas/1.json
  def update
    @pessoa = Pessoa.find(params[:id])

    respond_to do |format|
      if @pessoa.update_attributes(params[:pessoa])
        format.html { redirect_to @pessoa, notice: 'Pessoa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1
  # DELETE /pessoas/1.json
  def destroy
    @pessoa = Pessoa.find(params[:id])
    @pessoa.destroy

    respond_to do |format|
      format.html { redirect_to pessoas_url }
      format.json { head :ok }
    end
  end
end
