class ItemsController < ApplicationController
  def index
  	if(params.has_key?(:id))
  		@gun_id = params['id']
  	end
  end

  def guns
    @guns = Gun.all
  end
  
  def gun_stats
    @gun = Gun.find(params[:id])
  end

  def attachments
    @attachments = Attachment.all
  end

  def attachment_stats
    @attachment = Attachment.find(params[:id])
  end

  def legends
    @legends = Legend.all
  end

  def legend_stats
    @legend = Legend.find(params[:id])
  end

  def consumables
  end
end
