class CustomSessionsController < ApplicationController
end
class CustomSessionsController < ApplicationController
    # Make sure to include any before_action or authentication logic you need
  
    def destroy
      sign_out(current_user) # This will sign out the user using Devise
  
      # Redirect to the desired page after sign out
      redirect_to root_path # Change 'root_path' to the path of your desired page
    end
  end