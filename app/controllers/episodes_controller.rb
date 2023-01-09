class EpisodesController < ApplicationController

  def index
    render json: Episode.all
  end

  def show
    episode = Episode.find_by(id: params[:id])
    if (episode)
      render json: EpisodeWithGuestsSerializer.new(episode).to_json
    else
      render json: {error: "Episode not found"}, status: 422
    end
  end

  def destroy
    episode = Episode.find_by(id: params[:id])
    if (episode)
      episode.destroy
      render json: {}, status: 200
    else
      render json: {error: "Episode not found"}, status: 422
    end
  end
end
