# coding: utf-8

class DocumentsController < ApplicationController

  def index
#    raise "ID = #{params[:id]}"
    @documents = !params[:type_id].blank?  ?  Document.where(:type_id => params[:type_id].to_i)  :  Document.all
    @type = Type.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @documents }
    end
  end

  def show       
    doc = Document.full_load.find(params[:id]) 
    @doc_type = doc.type.name
    @doc_number = doc.number
#    @document = Document.where("number = '" + doc.number + "' and cdate = #{doc.cdate} and type_id = #{doc.type_id}")                
    @document = Document.where("number = '" + doc.number + "' and type_id = #{doc.type_id}")
    
    respond_to do |format|
      format.html
      format.pdf
    end
  end
  
  def new
    @document = Document.new
  end

  def edit
    @document = Document.full_load.find(params[:id])
  end

  def create
    @document = Document.new(params[:document])
    res = Reason.new(:name => @document.reas)
    usr = User.new(:name => @document.user_name,:surname => @document.user_surname,:middlename => @document.user_middlename)

    if @document.save | res.save | usr.save
      redirect_to @document, :notice => 'Приказ добавлен.'
    else
      render :action => "new"
    end
  end

  def update
    @document = Document.find(params[:id])
    res = Reason.new(:name => @document.reas)
    usr = User.new(:name => @document.user_name,:surname => @document.user_surname,:middlename => @document.user_middlename)

    if @document.update_attributes(params[:document]) | res.update_attributes(params[:document]) | usr.update_attributes(params[:document])
      redirect_to @document, :notice => 'Приказ сохранен.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to documents_url }
      format.json { head :ok }
    end
  end
end
