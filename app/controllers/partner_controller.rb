class PartnerController < ApplicationController

  def index
  end

  def show

    level_user = params[:level]
    player_role_user = params[:player_role]
    train_center_user = params[:train_center]

    if level_user == "Iniciante"
      level_partner = ["Intermediário","Avançado"]
    else
      level_partner = ["Iniciante","Intermediário","Avançado"]
    end
    

    if player_role_user == "Direita"
      player_role_partner = "Esquerda"  
    else
      player_role_partner = "Direita"
    end

    @partners = Player.where(level: level_partner, player_role: player_role_partner, train_center: train_center_user)

  end



end