# -*- coding: utf-8 -*-
class ReasonsController < ApplicationController

  def index
    @reasons = Reason.all
    respond_to do |format|
      format.html # index.html.erb
	@reasons = Reason.where("name like ?", "%#{params[:q]}%")
        format.json { render :json => @reasons.map(&:attributes) }      
    end
  end

  # GET /reasons/1
  # GET /reasons/1.json
  def show
    @reason = Reason.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @reason }
    end
  end

  # GET /reasons/new
  # GET /reasons/new.json
  def new
    @reason = Reason.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @reason }
    end
  end

  # GET /reasons/1/edit
  def edit
    @reason = Reason.find(params[:id])
  end

  # POST /reasons
  # POST /reasons.json
  def create
    @reason = Reason.new(params[:reason])

    respond_to do |format|
      if @reason.save
        format.html { redirect_to @reason, :notice => 'Основание создано.' }
        format.json { render :json => @reason, :status => :created, :location => @reason }
      else
        format.html { render :action => "new" }
        format.json { render :json => @reason.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reasons/1
  # PUT /reasons/1.json
  def update
    @reason = Reason.find(params[:id])

    respond_to do |format|
      if @reason.update_attributes(params[:reason])
        format.html { redirect_to @reason, :notice => 'Основание изменено.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @reason.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reasons/1
  # DELETE /reasons/1.json
  def destroy
    @reason = Reason.find(params[:id])
    @reason.destroy

    respond_to do |format|
      format.html { redirect_to reasons_url }
      format.json { head :ok }
    end
  end
end
