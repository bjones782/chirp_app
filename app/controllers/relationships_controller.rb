class RelationshipsController < ApplicationController
#     before_action :find_user

    def index
    end 

    def new
        # @relationship = Relationship.new
        @users = User.all
    end 

#     # def create
#     #     @users = User.all
#     #     @relationship = current_user.relationships.build(:follower_id => params[:follower_id])
#     #     @relationship.user_id = session[:user_id]
#     #     if @relationship.save
#     #       flash[:notice] = "Added follower."
#     #       redirect_to chirps_path
#     #     else
#     #       flash[:notice] = "Unable to add follower."
#     #       redirect_to chirps_path
#     #     end
#     #   end

#     def create 
         
#         @user.relationships.create(id: current_user.id)
       
#         redirect_to chirps_path
#     end

# # #   def create 
# # #     @user.followers.create(user_id: current_user.id)
# # #     redirect_to user_path(@user)
# # #   end

# #   private

#     def find_user
#       @user = User.find(params[:format])
#     end

      
#     def relationship_params
#         params.require(:relationship).permit(:user_id, :follower_id)
#         #need to add authenticate above?
#     end
end
