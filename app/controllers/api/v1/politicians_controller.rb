module Api::V1
  class PoliticiansController < ApplicationController
      def index
        
        if params[:q] 
          @politicians = Politician.where('name LIKE (?)', "%#{params[:q]}%")
        else
          @politicians = Politician.all
        end
        render json: {count: @politicians.count, politicians: @politicians.collect {|pol| PoliticianSerializer.new(pol)} }
      end

      def show
        @politician = Politician.find(params[:id])
        # @songs = @album.songs
        # to change from default/model serializer could change to
        # render: json: @album, serializer: AlbumShowSerializer
        render json: @politician

      end

      def create
        @new_politician = Politician.create(politician_params)
        render json: @new_politician, status: 201

      end

    private

    def politician_params
      params.require(:politician).permit(:name, :party, :start_date, :end_date)
    end
  
  end

end
