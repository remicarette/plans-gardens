class PlantsController < ApplicationController
  def create

    # 0. je récupère mon garden
    @garden = Garden.find(params[:garden_id])
    # 1. je dois créer une nouvelle plante
    @plant = Plant.new(plant_params)
    # 2. associer à cette plante un jardin
    @plant.garden = @garden

    # 3. je sauvegarde

    if @plant.save
      # 4. si j'ai réussi, je redirige dans le jardin
      redirect_to garden_path(@garden)
    else
      # 5. si ça n'a pas sauvegardé
      raise
    end
  end

  def destroy

    # 1. récupéeer la plante dans la base de données avec les params
    @plant = Plant.find(params[:id])

    # 2. reucperer le garden de la plante
    @garden = @plant.garden

    # 3. supprimer la plante
    @plant.destroy

    # 4. redirige l'utilisateur => redirect_to garden_path(@garden)
    redirect_to garden_path(@garden)
  end


  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end

end
