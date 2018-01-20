=begin
class SalesforceController < ApplicationController


  def callback
  session['token'] = credentials["token"]
  session['refresh_token'] = credentials["refresh_token"]
  session['instance_url'] = credentials["instance_url"]
  redirect_to  accounts_path# alguma URL da sua aplicação
 end


  def failure
    flash[:error] = 'Authorization failure'
    redirect_to connections_path
  end

end
=end
