class BytesController < ApplicationController
    def new
        @byte = Byte.new
    end
    
    def create
        byte = Byte.new(byte_params)
        if byte.save
            redirect_to user_path(byte.user)
        else
            render 'new'
        end
    end
    
    private
    
    def byte_params
        params.require(:byte).permit(:user_id, :content)
    end
end