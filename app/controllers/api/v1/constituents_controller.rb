module Api::V1
  class ConstituentsController < ApplicationController
      def index
        
        if params[:q] 
          @constituents = Constituent.where('name LIKE (?)', "%#{params[:q]}%")
        else
          @constituents = Constituent.all
        end
        render json: {count: @constituents.count, constituents: @constituents.collect {|const| ConstituentSerializer.new(const)} }
        end

      def show
        binding.pry
        @constituent = Constituent.find(params[:id])
        
        # @songs = @album.songs
        # to change from default/model serializer could change to
        # render: json: @album, serializer: AlbumShowSerializer
        render json: @constituent


      end

      def create
        @new_constituent = Constituent.create(constituent_params)
        render json: @new_constituent, status: 201

      end

    private

    def constituent_params
      params.require(:constituent).permit(:name, :zip_code, :gender, :dob)
    end
  
  end

end
