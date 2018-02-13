class Spree::ContactUs::ContactsController < Spree::StoreController
 before_action :initialize_client
  helper "spree/products"
  def create
    @contact = Spree::ContactUs::Contact.new(params[:contact_us_contact])
   @lead = @client.create("Lead", LastName: @contact.name, Company: "E9 Consulting", Email: @contact.email, Description: @contact.subject+ " : " + @contact.message)

    if @contact.save
     
      redirect_to(spree.root_path, :notice => Spree.t('contact_us.notices.success'))
    else
      render :new
    end
  end

  def new
    @contact = Spree::ContactUs::Contact.new
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

  private

  def accurate_title
    Spree.t(:contact_us_title)
  end

 def initialize_client
      @client = Restforce.new(
      username: 'ecomm9@demo.com',
      password: 'e9comm123',
      security_token: 'VLtlja7BCgm8VteTUnAdIpeQ',
      oauth_token: session['token'],
      refresh_token: session['refresh_token'],
      instance_url: session['instance_url'],
      client_id: $salesforce_config['client_key'],
      client_secret: $salesforce_config['client_secret'],
      api_version: '41.0'
    )
end

end
