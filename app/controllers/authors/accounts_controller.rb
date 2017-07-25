module Authors
	class AccountsController < AuthorController
		def edit
			
		end

		def update_info
			current_author.update(author_info_params)
			redirect_to authors_account_path
					
		end

		def change_password
			
		end

		private

		def author_info_params
			params.require(:author).permit(:current_password, :new_password, :new_password_confirmation)
		end

		def author_password_params
				params.require(:author).permit(:name, :email, :bio)
		end
	end
end