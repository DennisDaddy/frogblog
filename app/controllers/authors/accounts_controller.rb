module Authors
	class AccountsController < AuthorController
		def edit
			
		end

		def update_info
		if current_author.update(author_info_params)
			flash[:success] = 'success'
		else
			flash[:warning] = 'not successful'
		end
			redirect_to authors_account_path
					
		end

		def change_password
			if current_author.valid_password?(author_password_params[:current_password])
				 current_author.update(
				 	password: author_password_params[:new_password],
				 	password_confirmation: author_password_params[:new_password_confirmation]
				 	)	
				 flash[:success] = 'password successful updated'

				 	else

				 	flash[:danger] = 'Current password was incorrect'			
			end

			redirect_to authors_account_path
			
		end

		private

		def author_info_params
			params.require(:author).permit(:name, :email, :bio)
		end

		def author_password_params				
			params.require(:author).permit(:current_password, :new_password, :new_password_confirmation)
		end
	end
end