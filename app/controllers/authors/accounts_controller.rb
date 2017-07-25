module Authors
	class AccountsController < AuthorController
		def edit
			
		end

		def update_info
					
		end

		private

		def author_params
			params.require(:author).permit(:name, :email, :bio)
		end
	end
end