module Spree
  module Admin
    class UsersController < ResourceController
      rescue_from Spree::Core::DestroyWithOrdersError, with: :user_destroy_with_orders_error
      after_action :sign_in_if_change_own_password, only: :update
      before_action :initialize_client
      


      def show
        redirect_to edit_admin_user_path(@user)
      end

      def create
        @user = Spree.user_class.new(user_params)
       
        if @user.save  
          flash.now[:success] = flash_message_for(@user, :successfully_created)
          
          render :edit
        else
          render :new
        end
      end

      def update
        if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
          params[:user].delete(:password)
          params[:user].delete(:password_confirmation)
        end

        if @user.update_attributes(user_params)
           flash.now[:success] = Spree.t(:account_updated)

        end

        render :edit
      end

     

      def addresses
        if request.put?
          if @user.update_attributes(user_params)
             @account = @client.create("Account", Name: @user.bill_address.firstname + " " + @user.bill_address.lastname, BillingStreet: @user.bill_address.address1 + " " + @user.bill_address.address2, ShippingStreet:  @user.ship_address.address1 + " " + @user.ship_address.address2, 
              BillingState: @user.bill_address.state, ShippingState: @user.ship_address.state, BillingCity: @user.bill_address.city, ShippingCity: @user.ship_address.city, 
              BillingCountry: @user.bill_address.country, ShippingCountry: @user.ship_address.country, 
              BillingPostalCode: @user.bill_address.zipcode, ShippingPostalCode: @user.ship_address.zipcode,
              Phone: @user.bill_address.phone)

            

              @contact = @client.create("Contact", AccountId: @account, LastName: @user.bill_address.lastname, Phone: @user.bill_address.phone)
              
            
            flash.now[:success] = Spree.t(:account_updated)
          end

          render :addresses
        end
      end

      def orders
        params[:q] ||= {}
        @search = Spree::Order.reverse_chronological.ransack(params[:q].merge(user_id_eq: @user.id))
        @orders = @search.result.page(params[:page])
      end

      def items
        params[:q] ||= {}
        @search = Spree::Order.includes(
          line_items: {
            variant: [:product, { option_values: :option_type }]
          }).ransack(params[:q].merge(user_id_eq: @user.id))
        @orders = @search.result.page(params[:page])
      end

      def generate_api_key
        if @user.generate_spree_api_key!
          flash[:success] = Spree.t('api.key_generated')
        end
        redirect_to edit_admin_user_path(@user)
      end

      def clear_api_key
        if @user.clear_spree_api_key!
          flash[:success] = Spree.t('api.key_cleared')
        end
        redirect_to edit_admin_user_path(@user)
      end

      def model_class
        Spree.user_class
      end

      protected

        def collection
          return @collection if @collection.present?
          @collection = super
          @search = @collection.ransack(params[:q])
          @collection = @search.result.page(params[:page]).per(Spree::Config[:admin_users_per_page])
        end

      private

      def user_params
        params.require(:user).permit(permitted_user_attributes |
                                     [spree_role_ids: [],
                                      ship_address_attributes: permitted_address_attributes,
                                      bill_address_attributes: permitted_address_attributes])
      end

      def initialize_client
      @client = Restforce.new(
      security_token: 'VB9eReYSM0j1Lbom0uWDBCN9',
      oauth_token: session['token'],
      refresh_token: session['refresh_token'],
      instance_url: session['instance_url'],
      client_id: $salesforce_config['client_key'],
      client_secret: $salesforce_config['client_secret'],
      api_version: '41.0'
    )
    end

     

      # handling raise from Spree::Admin::ResourceController#destroy
      def user_destroy_with_orders_error
        invoke_callbacks(:destroy, :fails)
        render status: :forbidden, text: Spree.t(:error_user_destroy_with_orders)
      end

      def sign_in_if_change_own_password
        if try_spree_current_user == @user && @user.password.present?
          sign_in(@user, event: :authentication, bypass: true)
        end
      end
    end
  end
end
