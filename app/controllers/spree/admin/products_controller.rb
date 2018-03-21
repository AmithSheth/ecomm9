module Spree
  module Admin
    class ProductsController < ResourceController
      helper 'spree/products'

      before_action :load_data, except: :index
      create.before :create_before
      update.before :update_before
      helper_method :clone_object_url
      before_action :initialize_client

      def show
        session[:return_to] ||= request.referer
        redirect_to action: :edit
      end

      def index
        session[:return_to] = request.url
        respond_with(@collection)
      end

      def update
        if params[:product][:taxon_ids].present?

          params[:product][:taxon_ids] = params[:product][:taxon_ids].split(',')
        end
        if params[:product][:option_type_ids].present?
          params[:product][:option_type_ids] = params[:product][:option_type_ids].split(',')
        end

        invoke_callbacks(:update, :before)
        if @object.update_attributes(permitted_resource_params)
            
           @product2 = @client.create("Product2", Name: @product.name, StockKeepingUnit: @product.sku, Description: @product.description, IsActive: true)
           @price_book2 = @client.create("Pricebook2", Name: "Spree Standard Price", IsActive: true)
           @price_book_entry = @client.create("PricebookEntry", UnitPrice: 33, Pricebook2Id: '01s1N0000084x0B', Product2Id: '01t1N00000F49eK', IsActive: true)
         

          invoke_callbacks(:update, :after)
          flash[:success] = flash_message_for(@object, :successfully_updated)
          respond_with(@object) do |format|
            format.html { redirect_to location_after_save }
            format.js   { render layout: false }
          end
        else
          # Stops people submitting blank slugs, causing errors when they try to
          # update the product again
          @product.slug = @product.slug_was if @product.slug.blank?
          invoke_callbacks(:update, :fails)
          respond_with(@object)
        end
      end

      def destroy
        @product = Product.friendly.find(params[:id])

        begin
          # TODO: why is @product.destroy raising ActiveRecord::RecordNotDestroyed instead of failing with false result
          if @product.destroy
            flash[:success] = Spree.t('notice_messages.product_deleted')
          else
            flash[:error] = Spree.t('notice_messages.product_not_deleted')
          end
        rescue ActiveRecord::RecordNotDestroyed => e
          flash[:error] = Spree.t('notice_messages.product_not_deleted')
        end

        respond_with(@product) do |format|
          format.html { redirect_to collection_url }
          format.js  { render_js_for_destroy }
        end
      end

      def clone
        @new = @product.duplicate

        if @new.save
          flash[:success] = Spree.t('notice_messages.product_cloned')
        else
          flash[:error] = Spree.t('notice_messages.product_not_cloned')
        end

        redirect_to edit_admin_product_url(@new)
      end

      def stock
        @variants = @product.variants.includes(*variant_stock_includes)
        @variants = [@product.master] if @variants.empty?
        @stock_locations = StockLocation.accessible_by(current_ability, :read)
        if @stock_locations.empty?
          flash[:error] = Spree.t(:stock_management_requires_a_stock_location)
          redirect_to admin_stock_locations_path
        end
      end

      protected

      def find_resource
        Product.with_deleted.friendly.find(params[:id])
      end

      def location_after_save
        spree.edit_admin_product_url(@product)

      end

      def load_data
        @taxons = Taxon.order(:name)
        @option_types = OptionType.order(:name)
        @tax_categories = TaxCategory.order(:name)
        @shipping_categories = ShippingCategory.order(:name)
      end

      def collection
        return @collection if @collection.present?
        params[:q] ||= {}
        params[:q][:deleted_at_null] ||= "1"
        params[:q][:not_discontinued] ||= "1"

        params[:q][:s] ||= "name asc"
        @collection = super
        # Don't delete params[:q][:deleted_at_null] here because it is used in view to check the
        # checkbox for 'q[deleted_at_null]'. This also messed with pagination when deleted_at_null is checked.
        if params[:q][:deleted_at_null] == '0'
          @collection = @collection.with_deleted
        end
        # @search needs to be defined as this is passed to search_form_for
        # Temporarily remove params[:q][:deleted_at_null] from params[:q] to ransack products.
        # This is to include all products and not just deleted products.
        @search = @collection.ransack(params[:q].reject { |k, _v| k.to_s == 'deleted_at_null' })
        @collection = @search.result.
              distinct_by_product_ids(params[:q][:s]).
              includes(product_includes).
              page(params[:page]).
              per(params[:per_page] || Spree::Config[:admin_products_per_page])
        @collection
      end

      def create_before
        return if params[:product][:prototype_id].blank?
        @prototype = Spree::Prototype.find(params[:product][:prototype_id])
      end

      def update_before
        # note: we only reset the product properties if we're receiving a post
        #       from the form on that tab
        return unless params[:clear_product_properties]
        params[:product] ||= {}
      end

      def product_includes
        [{ variants: [:images], master: [:images, :default_price] }]
      end

      def clone_object_url(resource)
        clone_admin_product_url resource
      end

      def initialize_client
      @client = Restforce.new(
      username: 'ecomm9@demo.com',
      password: 'e9comm123',
      security_token: 'VB9eReYSM0j1Lbom0uWDBCN9',
      oauth_token: session['token'],
      refresh_token: session['refresh_token'],
      instance_url: session['instance_url'],
      client_id: $salesforce_config['client_key'],
      client_secret: $salesforce_config['client_secret'],
      api_version: '41.0'
    )
    end

      private

      def variant_stock_includes
        [:images, stock_items: :stock_location, option_values: :option_type]
      end
    end
  end
end
