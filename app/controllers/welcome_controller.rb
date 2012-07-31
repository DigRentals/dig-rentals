class WelcomeController < ApplicationController
  def index
  end
  
  def signup
  	g = Gibbon.new("f34f20752cdb4ad2df281cefccb1193f-us5")
  	
  	merge_vars = {
  	          'ZIP' => params[:zip],
  	 }
  	        
  	response = g.listSubscribe({:id => "cfdd697d7e", 
  	          :email_address => params[:email], 
  	          :merge_vars => merge_vars,
  	          :double_optin => false,
  	          :send_welcome => true})
  	if(response.is_a?(Hash))
  		puts "error present"
  		flash[:error] = response['error']
  	else
  		flash[:notice] = "You're signed up!"
  	end
  	
  	redirect_to :root
  end
end