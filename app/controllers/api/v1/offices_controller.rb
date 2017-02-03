module Api::V1
  class OfficesController < ApplicationController
      def index
        
        if params[:q] 
          @offices = Office.where('name LIKE (?)', "%#{params[:q]}%")
        else
          @offices = Office.all
        end
        render json: {count: @offices.count, offices: @offices.collect {|off| OfficeSerializer.new(off)} }
      end

      def show
        @office = Office.find(params[:id])
        # @songs = @album.songs
        # to change from default/model serializer could change to
        # render: json: @album, serializer: AlbumShowSerializer
        render json: @office

      end

      def create
        @new_office = Office.create(office_params)
        render json: @new_office, status: 201

      end

    private

    def office_params
      params.require(:office).permit(:name, :district_num, :level)
    end
  
  end

end
