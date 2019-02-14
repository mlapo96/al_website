class ItemsController < ApplicationController
  def index
  	if(params.has_key?(:id))
  		@gun_id = params['id']
  	end
  end

  def guns
  	@pstl_list = ['RE-45 Auto', 'P2020', 'Wingman']
  	@smg_list = ['Alternator', 'Prowler Burst PDW', 'R-99']
  	@aslt_list = ['Hemlok Burst', 'R-301 Carbine', 'VK-47 Flatline']
  	@lmg_list = ['Devotion', 'M600 Spitfire']
  	@snpr_list = ['G7-Scout', 'Kraber', 'Longbow DMR', 'Triple Take']
  	@stgn_list = ['EVA-8 Auto', 'Mozambique', 'Peacekeeper']
  end
  
  def gun_stats
  	if(params.has_key?(:id))
  		@gun_name = params['id']
  	end
  end

  def attachments
  end

  def consumables
  end
end
