PGDMP         6    
        
    u            df3vb042kuskbe    9.6.5    9.6.0 '   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16496    df3vb042kuskbe    DATABASE     �   CREATE DATABASE "df3vb042kuskbe" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
     DROP DATABASE "df3vb042kuskbe";
             nqokmikthnyfkp    false                        2615    4818570    public    SCHEMA        CREATE SCHEMA "public";
    DROP SCHEMA "public";
             nqokmikthnyfkp    false                        3079    13277    plpgsql 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";
    DROP EXTENSION "plpgsql";
                  false            �           0    0    EXTENSION "plpgsql"    COMMENT     B   COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';
                       false    1            �            1259    4818579    ar_internal_metadata    TABLE     �   CREATE TABLE "ar_internal_metadata" (
    "key" character varying NOT NULL,
    "value" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 ,   DROP TABLE "public"."ar_internal_metadata";
       public         nqokmikthnyfkp    false    7            �            1259    4820484    connections    TABLE     e  CREATE TABLE "connections" (
    "id" integer NOT NULL,
    "Sequence_Number" integer,
    "Client_Key" character varying,
    "Client_Secret" character varying,
    "Portal_Id" character varying,
    "Portal_Password" character varying,
    "Active_Field" character varying,
    "User_Field_String" character varying,
    "User_Field_Integer" integer,
    "User_Field_Datetime" timestamp without time zone,
    "Transaction_Originator" character varying,
    "Transaction_Datetime" timestamp without time zone,
    "Transaction_IP" character varying,
    "User_Updated" character varying,
    "Date_Updated" timestamp without time zone,
    "IP_Updated" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "Ecomm_instance_name" character varying,
    "Access_Token" character varying
);
 #   DROP TABLE "public"."connections";
       public         nqokmikthnyfkp    false    7            �            1259    4820482    connections_id_seq    SEQUENCE     v   CREATE SEQUENCE "connections_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "public"."connections_id_seq";
       public       nqokmikthnyfkp    false    7    188            �           0    0    connections_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "connections_id_seq" OWNED BY "connections"."id";
            public       nqokmikthnyfkp    false    187            �            1259    4820495    friendly_id_slugs    TABLE     3  CREATE TABLE "friendly_id_slugs" (
    "id" integer NOT NULL,
    "slug" character varying NOT NULL,
    "sluggable_id" integer NOT NULL,
    "sluggable_type" character varying(50),
    "scope" character varying,
    "created_at" timestamp without time zone,
    "deleted_at" timestamp without time zone
);
 )   DROP TABLE "public"."friendly_id_slugs";
       public         nqokmikthnyfkp    false    7            �            1259    4820493    friendly_id_slugs_id_seq    SEQUENCE     |   CREATE SEQUENCE "friendly_id_slugs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."friendly_id_slugs_id_seq";
       public       nqokmikthnyfkp    false    190    7            �           0    0    friendly_id_slugs_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "friendly_id_slugs_id_seq" OWNED BY "friendly_id_slugs"."id";
            public       nqokmikthnyfkp    false    189            �            1259    4818571    schema_migrations    TABLE     O   CREATE TABLE "schema_migrations" (
    "version" character varying NOT NULL
);
 )   DROP TABLE "public"."schema_migrations";
       public         nqokmikthnyfkp    false    7            �            1259    4820511    spree_addresses    TABLE     [  CREATE TABLE "spree_addresses" (
    "id" integer NOT NULL,
    "firstname" character varying,
    "lastname" character varying,
    "address1" character varying,
    "address2" character varying,
    "city" character varying,
    "zipcode" character varying,
    "phone" character varying,
    "state_name" character varying,
    "alternative_phone" character varying,
    "company" character varying,
    "state_id" integer,
    "country_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "braintree_id" character varying
);
 '   DROP TABLE "public"."spree_addresses";
       public         nqokmikthnyfkp    false    7            �            1259    4820509    spree_addresses_id_seq    SEQUENCE     z   CREATE SEQUENCE "spree_addresses_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "public"."spree_addresses_id_seq";
       public       nqokmikthnyfkp    false    192    7            �           0    0    spree_addresses_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "spree_addresses_id_seq" OWNED BY "spree_addresses"."id";
            public       nqokmikthnyfkp    false    191            �            1259    4820526    spree_adjustments    TABLE       CREATE TABLE "spree_adjustments" (
    "id" integer NOT NULL,
    "source_type" character varying,
    "source_id" integer,
    "adjustable_type" character varying,
    "adjustable_id" integer,
    "amount" numeric(10,2),
    "label" character varying,
    "mandatory" boolean,
    "eligible" boolean DEFAULT true,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "state" character varying,
    "order_id" integer NOT NULL,
    "included" boolean DEFAULT false
);
 )   DROP TABLE "public"."spree_adjustments";
       public         nqokmikthnyfkp    false    7            �            1259    4820524    spree_adjustments_id_seq    SEQUENCE     |   CREATE SEQUENCE "spree_adjustments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."spree_adjustments_id_seq";
       public       nqokmikthnyfkp    false    194    7            �           0    0    spree_adjustments_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "spree_adjustments_id_seq" OWNED BY "spree_adjustments"."id";
            public       nqokmikthnyfkp    false    193            �            1259    4820543    spree_assets    TABLE     "  CREATE TABLE "spree_assets" (
    "id" integer NOT NULL,
    "viewable_type" character varying,
    "viewable_id" integer,
    "attachment_width" integer,
    "attachment_height" integer,
    "attachment_file_size" integer,
    "position" integer,
    "attachment_content_type" character varying,
    "attachment_file_name" character varying,
    "type" character varying(75),
    "attachment_updated_at" timestamp without time zone,
    "alt" "text",
    "created_at" timestamp without time zone,
    "updated_at" timestamp without time zone
);
 $   DROP TABLE "public"."spree_assets";
       public         nqokmikthnyfkp    false    7            �            1259    4820541    spree_assets_id_seq    SEQUENCE     w   CREATE SEQUENCE "spree_assets_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "public"."spree_assets_id_seq";
       public       nqokmikthnyfkp    false    196    7            �           0    0    spree_assets_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "spree_assets_id_seq" OWNED BY "spree_assets"."id";
            public       nqokmikthnyfkp    false    195            �            1259    4820557    spree_braintree_checkouts    TABLE       CREATE TABLE "spree_braintree_checkouts" (
    "id" integer NOT NULL,
    "transaction_id" character varying,
    "state" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "paypal_email" character varying,
    "advanced_fraud_data" character varying,
    "risk_id" character varying,
    "risk_decision" character varying,
    "braintree_last_digits" character varying(4),
    "braintree_card_type" character varying,
    "admin_payment" character varying
);
 1   DROP TABLE "public"."spree_braintree_checkouts";
       public         nqokmikthnyfkp    false    7            �            1259    4820555     spree_braintree_checkouts_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_braintree_checkouts_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."spree_braintree_checkouts_id_seq";
       public       nqokmikthnyfkp    false    198    7            �           0    0     spree_braintree_checkouts_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "spree_braintree_checkouts_id_seq" OWNED BY "spree_braintree_checkouts"."id";
            public       nqokmikthnyfkp    false    197            �            1259    4820570    spree_calculators    TABLE     Z  CREATE TABLE "spree_calculators" (
    "id" integer NOT NULL,
    "type" character varying,
    "calculable_type" character varying,
    "calculable_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "preferences" "text",
    "deleted_at" timestamp without time zone
);
 )   DROP TABLE "public"."spree_calculators";
       public         nqokmikthnyfkp    false    7            �            1259    4820568    spree_calculators_id_seq    SEQUENCE     |   CREATE SEQUENCE "spree_calculators_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."spree_calculators_id_seq";
       public       nqokmikthnyfkp    false    200    7            �           0    0    spree_calculators_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "spree_calculators_id_seq" OWNED BY "spree_calculators"."id";
            public       nqokmikthnyfkp    false    199            �            1259    4820584    spree_countries    TABLE     X  CREATE TABLE "spree_countries" (
    "id" integer NOT NULL,
    "iso_name" character varying,
    "iso" character varying,
    "iso3" character varying,
    "name" character varying,
    "numcode" integer,
    "states_required" boolean DEFAULT false,
    "updated_at" timestamp without time zone,
    "zipcode_required" boolean DEFAULT true
);
 '   DROP TABLE "public"."spree_countries";
       public         nqokmikthnyfkp    false    7            �            1259    4820582    spree_countries_id_seq    SEQUENCE     z   CREATE SEQUENCE "spree_countries_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "public"."spree_countries_id_seq";
       public       nqokmikthnyfkp    false    202    7            �           0    0    spree_countries_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "spree_countries_id_seq" OWNED BY "spree_countries"."id";
            public       nqokmikthnyfkp    false    201            �            1259    4820597    spree_credit_cards    TABLE     9  CREATE TABLE "spree_credit_cards" (
    "id" integer NOT NULL,
    "month" character varying,
    "year" character varying,
    "cc_type" character varying,
    "last_digits" character varying,
    "address_id" integer,
    "gateway_customer_profile_id" character varying,
    "gateway_payment_profile_id" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "name" character varying,
    "user_id" integer,
    "payment_method_id" integer,
    "default" boolean DEFAULT false NOT NULL
);
 *   DROP TABLE "public"."spree_credit_cards";
       public         nqokmikthnyfkp    false    7            �            1259    4820595    spree_credit_cards_id_seq    SEQUENCE     }   CREATE SEQUENCE "spree_credit_cards_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "public"."spree_credit_cards_id_seq";
       public       nqokmikthnyfkp    false    204    7            �           0    0    spree_credit_cards_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "spree_credit_cards_id_seq" OWNED BY "spree_credit_cards"."id";
            public       nqokmikthnyfkp    false    203            �            1259    4820612    spree_customer_returns    TABLE     �   CREATE TABLE "spree_customer_returns" (
    "id" integer NOT NULL,
    "number" character varying,
    "stock_location_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 .   DROP TABLE "public"."spree_customer_returns";
       public         nqokmikthnyfkp    false    7            �            1259    4820610    spree_customer_returns_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_customer_returns_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "public"."spree_customer_returns_id_seq";
       public       nqokmikthnyfkp    false    7    206            �           0    0    spree_customer_returns_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "spree_customer_returns_id_seq" OWNED BY "spree_customer_returns"."id";
            public       nqokmikthnyfkp    false    205            �            1259    4820623    spree_delivery_slots    TABLE     5  CREATE TABLE "spree_delivery_slots" (
    "id" integer NOT NULL,
    "shipping_method_id" integer,
    "start_time" character varying,
    "end_time" character varying,
    "deleted_at" timestamp without time zone,
    "created_at" timestamp without time zone,
    "updated_at" timestamp without time zone
);
 ,   DROP TABLE "public"."spree_delivery_slots";
       public         nqokmikthnyfkp    false    7            �            1259    4820621    spree_delivery_slots_id_seq    SEQUENCE        CREATE SEQUENCE "spree_delivery_slots_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "public"."spree_delivery_slots_id_seq";
       public       nqokmikthnyfkp    false    7    208            �           0    0    spree_delivery_slots_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "spree_delivery_slots_id_seq" OWNED BY "spree_delivery_slots"."id";
            public       nqokmikthnyfkp    false    207            �            1259    4820636    spree_gateways    TABLE     �  CREATE TABLE "spree_gateways" (
    "id" integer NOT NULL,
    "type" character varying,
    "name" character varying,
    "description" "text",
    "active" boolean DEFAULT true,
    "environment" character varying DEFAULT 'development'::character varying,
    "server" character varying DEFAULT 'test'::character varying,
    "test_mode" boolean DEFAULT true,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "preferences" "text"
);
 &   DROP TABLE "public"."spree_gateways";
       public         nqokmikthnyfkp    false    7            �            1259    4820634    spree_gateways_id_seq    SEQUENCE     y   CREATE SEQUENCE "spree_gateways_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "public"."spree_gateways_id_seq";
       public       nqokmikthnyfkp    false    210    7            �           0    0    spree_gateways_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "spree_gateways_id_seq" OWNED BY "spree_gateways"."id";
            public       nqokmikthnyfkp    false    209            �            1259    4820653    spree_inventory_units    TABLE     ^  CREATE TABLE "spree_inventory_units" (
    "id" integer NOT NULL,
    "state" character varying,
    "variant_id" integer,
    "order_id" integer,
    "shipment_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "pending" boolean DEFAULT true,
    "line_item_id" integer
);
 -   DROP TABLE "public"."spree_inventory_units";
       public         nqokmikthnyfkp    false    7            �            1259    4820651    spree_inventory_units_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_inventory_units_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."spree_inventory_units_id_seq";
       public       nqokmikthnyfkp    false    7    212            �           0    0    spree_inventory_units_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "spree_inventory_units_id_seq" OWNED BY "spree_inventory_units"."id";
            public       nqokmikthnyfkp    false    211            �            1259    4820669    spree_line_items    TABLE       CREATE TABLE "spree_line_items" (
    "id" integer NOT NULL,
    "variant_id" integer,
    "order_id" integer,
    "quantity" integer NOT NULL,
    "price" numeric(10,2) NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "currency" character varying,
    "cost_price" numeric(10,2),
    "tax_category_id" integer,
    "adjustment_total" numeric(10,2) DEFAULT 0.0,
    "additional_tax_total" numeric(10,2) DEFAULT 0.0,
    "promo_total" numeric(10,2) DEFAULT 0.0,
    "included_tax_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "pre_tax_amount" numeric(12,4) DEFAULT 0.0 NOT NULL,
    "taxable_adjustment_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "non_taxable_adjustment_total" numeric(10,2) DEFAULT 0.0 NOT NULL
);
 (   DROP TABLE "public"."spree_line_items";
       public         nqokmikthnyfkp    false    7            �            1259    4820667    spree_line_items_id_seq    SEQUENCE     {   CREATE SEQUENCE "spree_line_items_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "public"."spree_line_items_id_seq";
       public       nqokmikthnyfkp    false    214    7            �           0    0    spree_line_items_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "spree_line_items_id_seq" OWNED BY "spree_line_items"."id";
            public       nqokmikthnyfkp    false    213            �            1259    4820690    spree_log_entries    TABLE       CREATE TABLE "spree_log_entries" (
    "id" integer NOT NULL,
    "source_type" character varying,
    "source_id" integer,
    "details" "text",
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 )   DROP TABLE "public"."spree_log_entries";
       public         nqokmikthnyfkp    false    7            �            1259    4820688    spree_log_entries_id_seq    SEQUENCE     |   CREATE SEQUENCE "spree_log_entries_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."spree_log_entries_id_seq";
       public       nqokmikthnyfkp    false    7    216            �           0    0    spree_log_entries_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "spree_log_entries_id_seq" OWNED BY "spree_log_entries"."id";
            public       nqokmikthnyfkp    false    215            �            1259    4820702    spree_option_type_prototypes    TABLE     �   CREATE TABLE "spree_option_type_prototypes" (
    "id" integer NOT NULL,
    "prototype_id" integer,
    "option_type_id" integer
);
 4   DROP TABLE "public"."spree_option_type_prototypes";
       public         nqokmikthnyfkp    false    7            �            1259    4820700 #   spree_option_type_prototypes_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_option_type_prototypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "public"."spree_option_type_prototypes_id_seq";
       public       nqokmikthnyfkp    false    7    218            �           0    0 #   spree_option_type_prototypes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "spree_option_type_prototypes_id_seq" OWNED BY "spree_option_type_prototypes"."id";
            public       nqokmikthnyfkp    false    217            �            1259    4820712    spree_option_types    TABLE     (  CREATE TABLE "spree_option_types" (
    "id" integer NOT NULL,
    "name" character varying(100),
    "presentation" character varying(100),
    "position" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 *   DROP TABLE "public"."spree_option_types";
       public         nqokmikthnyfkp    false    7            �            1259    4820710    spree_option_types_id_seq    SEQUENCE     }   CREATE SEQUENCE "spree_option_types_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "public"."spree_option_types_id_seq";
       public       nqokmikthnyfkp    false    220    7            �           0    0    spree_option_types_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "spree_option_types_id_seq" OWNED BY "spree_option_types"."id";
            public       nqokmikthnyfkp    false    219            �            1259    4820723    spree_option_value_variants    TABLE     �   CREATE TABLE "spree_option_value_variants" (
    "id" integer NOT NULL,
    "variant_id" integer,
    "option_value_id" integer
);
 3   DROP TABLE "public"."spree_option_value_variants";
       public         nqokmikthnyfkp    false    7            �            1259    4820721 "   spree_option_value_variants_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_option_value_variants_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "public"."spree_option_value_variants_id_seq";
       public       nqokmikthnyfkp    false    222    7            �           0    0 "   spree_option_value_variants_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "spree_option_value_variants_id_seq" OWNED BY "spree_option_value_variants"."id";
            public       nqokmikthnyfkp    false    221            �            1259    4820733    spree_option_values    TABLE     *  CREATE TABLE "spree_option_values" (
    "id" integer NOT NULL,
    "position" integer,
    "name" character varying,
    "presentation" character varying,
    "option_type_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 +   DROP TABLE "public"."spree_option_values";
       public         nqokmikthnyfkp    false    7            �            1259    4820731    spree_option_values_id_seq    SEQUENCE     ~   CREATE SEQUENCE "spree_option_values_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "public"."spree_option_values_id_seq";
       public       nqokmikthnyfkp    false    7    224            �           0    0    spree_option_values_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "spree_option_values_id_seq" OWNED BY "spree_option_values"."id";
            public       nqokmikthnyfkp    false    223            �            1259    4820747    spree_order_promotions    TABLE     y   CREATE TABLE "spree_order_promotions" (
    "id" integer NOT NULL,
    "order_id" integer,
    "promotion_id" integer
);
 .   DROP TABLE "public"."spree_order_promotions";
       public         nqokmikthnyfkp    false    7            �            1259    4820745    spree_order_promotions_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_order_promotions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "public"."spree_order_promotions_id_seq";
       public       nqokmikthnyfkp    false    7    226            �           0    0    spree_order_promotions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "spree_order_promotions_id_seq" OWNED BY "spree_order_promotions"."id";
            public       nqokmikthnyfkp    false    225            �            1259    4820757    spree_orders    TABLE     l  CREATE TABLE "spree_orders" (
    "id" integer NOT NULL,
    "number" character varying(32),
    "item_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "state" character varying,
    "adjustment_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "user_id" integer,
    "completed_at" timestamp without time zone,
    "bill_address_id" integer,
    "ship_address_id" integer,
    "payment_total" numeric(10,2) DEFAULT 0.0,
    "shipment_state" character varying,
    "payment_state" character varying,
    "email" character varying,
    "special_instructions" "text",
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "currency" character varying,
    "last_ip_address" character varying,
    "created_by_id" integer,
    "shipment_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "additional_tax_total" numeric(10,2) DEFAULT 0.0,
    "promo_total" numeric(10,2) DEFAULT 0.0,
    "channel" character varying DEFAULT 'spree'::character varying,
    "included_tax_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "item_count" integer DEFAULT 0,
    "approver_id" integer,
    "approved_at" timestamp without time zone,
    "confirmation_delivered" boolean DEFAULT false,
    "considered_risky" boolean DEFAULT false,
    "guest_token" character varying,
    "canceled_at" timestamp without time zone,
    "canceler_id" integer,
    "store_id" integer,
    "state_lock_version" integer DEFAULT 0 NOT NULL,
    "taxable_adjustment_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "non_taxable_adjustment_total" numeric(10,2) DEFAULT 0.0 NOT NULL
);
 $   DROP TABLE "public"."spree_orders";
       public         nqokmikthnyfkp    false    7            �            1259    4820755    spree_orders_id_seq    SEQUENCE     w   CREATE SEQUENCE "spree_orders_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "public"."spree_orders_id_seq";
       public       nqokmikthnyfkp    false    228    7            �           0    0    spree_orders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "spree_orders_id_seq" OWNED BY "spree_orders"."id";
            public       nqokmikthnyfkp    false    227            �            1259    4820795    spree_payment_capture_events    TABLE     �   CREATE TABLE "spree_payment_capture_events" (
    "id" integer NOT NULL,
    "amount" numeric(10,2) DEFAULT 0.0,
    "payment_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 4   DROP TABLE "public"."spree_payment_capture_events";
       public         nqokmikthnyfkp    false    7            �            1259    4820793 #   spree_payment_capture_events_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_payment_capture_events_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "public"."spree_payment_capture_events_id_seq";
       public       nqokmikthnyfkp    false    7    230            �           0    0 #   spree_payment_capture_events_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "spree_payment_capture_events_id_seq" OWNED BY "spree_payment_capture_events"."id";
            public       nqokmikthnyfkp    false    229            �            1259    4820805    spree_payment_methods    TABLE     �  CREATE TABLE "spree_payment_methods" (
    "id" integer NOT NULL,
    "type" character varying,
    "name" character varying,
    "description" "text",
    "active" boolean DEFAULT true,
    "deleted_at" timestamp without time zone,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "display_on" character varying DEFAULT 'both'::character varying,
    "auto_capture" boolean,
    "preferences" "text",
    "position" integer DEFAULT 0
);
 -   DROP TABLE "public"."spree_payment_methods";
       public         nqokmikthnyfkp    false    7            �            1259    4820803    spree_payment_methods_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_payment_methods_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."spree_payment_methods_id_seq";
       public       nqokmikthnyfkp    false    7    232            �           0    0    spree_payment_methods_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "spree_payment_methods_id_seq" OWNED BY "spree_payment_methods"."id";
            public       nqokmikthnyfkp    false    231            �            1259    4820820    spree_payments    TABLE     �  CREATE TABLE "spree_payments" (
    "id" integer NOT NULL,
    "amount" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "order_id" integer,
    "source_type" character varying,
    "source_id" integer,
    "payment_method_id" integer,
    "state" character varying,
    "response_code" character varying,
    "avs_response" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "number" character varying,
    "cvv_response_code" character varying,
    "cvv_response_message" character varying,
    "braintree_token" character varying,
    "braintree_nonce" character varying
);
 &   DROP TABLE "public"."spree_payments";
       public         nqokmikthnyfkp    false    7            �            1259    4820818    spree_payments_id_seq    SEQUENCE     y   CREATE SEQUENCE "spree_payments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "public"."spree_payments_id_seq";
       public       nqokmikthnyfkp    false    7    234            �           0    0    spree_payments_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "spree_payments_id_seq" OWNED BY "spree_payments"."id";
            public       nqokmikthnyfkp    false    233            �            1259    4820836    spree_permissions    TABLE     .  CREATE TABLE "spree_permissions" (
    "id" integer NOT NULL,
    "title" character varying NOT NULL,
    "priority" integer DEFAULT 0,
    "visible" boolean DEFAULT true,
    "boolean" boolean DEFAULT true,
    "created_at" timestamp without time zone,
    "updated_at" timestamp without time zone
);
 )   DROP TABLE "public"."spree_permissions";
       public         nqokmikthnyfkp    false    7            �            1259    4820834    spree_permissions_id_seq    SEQUENCE     |   CREATE SEQUENCE "spree_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."spree_permissions_id_seq";
       public       nqokmikthnyfkp    false    7    236            �           0    0    spree_permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "spree_permissions_id_seq" OWNED BY "spree_permissions"."id";
            public       nqokmikthnyfkp    false    235            �            1259    4820851    spree_preferences    TABLE     �   CREATE TABLE "spree_preferences" (
    "id" integer NOT NULL,
    "value" "text",
    "key" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 )   DROP TABLE "public"."spree_preferences";
       public         nqokmikthnyfkp    false    7            �            1259    4820849    spree_preferences_id_seq    SEQUENCE     |   CREATE SEQUENCE "spree_preferences_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."spree_preferences_id_seq";
       public       nqokmikthnyfkp    false    7    238            �           0    0    spree_preferences_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "spree_preferences_id_seq" OWNED BY "spree_preferences"."id";
            public       nqokmikthnyfkp    false    237            �            1259    4820863    spree_prices    TABLE     �   CREATE TABLE "spree_prices" (
    "id" integer NOT NULL,
    "variant_id" integer NOT NULL,
    "amount" numeric(10,2),
    "currency" character varying,
    "deleted_at" timestamp without time zone
);
 $   DROP TABLE "public"."spree_prices";
       public         nqokmikthnyfkp    false    7            �            1259    4820861    spree_prices_id_seq    SEQUENCE     w   CREATE SEQUENCE "spree_prices_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "public"."spree_prices_id_seq";
       public       nqokmikthnyfkp    false    7    240            �           0    0    spree_prices_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "spree_prices_id_seq" OWNED BY "spree_prices"."id";
            public       nqokmikthnyfkp    false    239            �            1259    4820877    spree_product_option_types    TABLE       CREATE TABLE "spree_product_option_types" (
    "id" integer NOT NULL,
    "position" integer,
    "product_id" integer,
    "option_type_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 2   DROP TABLE "public"."spree_product_option_types";
       public         nqokmikthnyfkp    false    7            �            1259    4820875 !   spree_product_option_types_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_product_option_types_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "public"."spree_product_option_types_id_seq";
       public       nqokmikthnyfkp    false    7    242                        0    0 !   spree_product_option_types_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "spree_product_option_types_id_seq" OWNED BY "spree_product_option_types"."id";
            public       nqokmikthnyfkp    false    241            �            1259    4820888    spree_product_packages    TABLE     g  CREATE TABLE "spree_product_packages" (
    "id" integer NOT NULL,
    "product_id" integer NOT NULL,
    "length" integer DEFAULT 0 NOT NULL,
    "width" integer DEFAULT 0 NOT NULL,
    "height" integer DEFAULT 0 NOT NULL,
    "weight" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp without time zone,
    "updated_at" timestamp without time zone
);
 .   DROP TABLE "public"."spree_product_packages";
       public         nqokmikthnyfkp    false    7            �            1259    4820886    spree_product_packages_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_product_packages_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "public"."spree_product_packages_id_seq";
       public       nqokmikthnyfkp    false    7    244                       0    0    spree_product_packages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "spree_product_packages_id_seq" OWNED BY "spree_product_packages"."id";
            public       nqokmikthnyfkp    false    243            �            1259    4820900    spree_product_promotion_rules    TABLE     �   CREATE TABLE "spree_product_promotion_rules" (
    "id" integer NOT NULL,
    "product_id" integer,
    "promotion_rule_id" integer
);
 5   DROP TABLE "public"."spree_product_promotion_rules";
       public         nqokmikthnyfkp    false    7            �            1259    4820898 $   spree_product_promotion_rules_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_product_promotion_rules_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "public"."spree_product_promotion_rules_id_seq";
       public       nqokmikthnyfkp    false    246    7                       0    0 $   spree_product_promotion_rules_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "spree_product_promotion_rules_id_seq" OWNED BY "spree_product_promotion_rules"."id";
            public       nqokmikthnyfkp    false    245            �            1259    4820910    spree_product_properties    TABLE     +  CREATE TABLE "spree_product_properties" (
    "id" integer NOT NULL,
    "value" character varying,
    "product_id" integer,
    "property_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "position" integer DEFAULT 0
);
 0   DROP TABLE "public"."spree_product_properties";
       public         nqokmikthnyfkp    false    7            �            1259    4820908    spree_product_properties_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_product_properties_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "public"."spree_product_properties_id_seq";
       public       nqokmikthnyfkp    false    7    248                       0    0    spree_product_properties_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "spree_product_properties_id_seq" OWNED BY "spree_product_properties"."id";
            public       nqokmikthnyfkp    false    247            �            1259    4820925    spree_products    TABLE     �  CREATE TABLE "spree_products" (
    "id" integer NOT NULL,
    "name" character varying DEFAULT ''::character varying NOT NULL,
    "description" "text",
    "available_on" timestamp without time zone,
    "deleted_at" timestamp without time zone,
    "slug" character varying,
    "meta_description" "text",
    "meta_keywords" character varying,
    "tax_category_id" integer,
    "shipping_category_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "promotionable" boolean DEFAULT true,
    "meta_title" character varying,
    "discontinue_on" timestamp without time zone
);
 &   DROP TABLE "public"."spree_products";
       public         nqokmikthnyfkp    false    7            �            1259    4820923    spree_products_id_seq    SEQUENCE     y   CREATE SEQUENCE "spree_products_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "public"."spree_products_id_seq";
       public       nqokmikthnyfkp    false    250    7                       0    0    spree_products_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "spree_products_id_seq" OWNED BY "spree_products"."id";
            public       nqokmikthnyfkp    false    249            �            1259    4820945    spree_products_taxons    TABLE     �   CREATE TABLE "spree_products_taxons" (
    "id" integer NOT NULL,
    "product_id" integer,
    "taxon_id" integer,
    "position" integer
);
 -   DROP TABLE "public"."spree_products_taxons";
       public         nqokmikthnyfkp    false    7            �            1259    4820943    spree_products_taxons_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_products_taxons_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."spree_products_taxons_id_seq";
       public       nqokmikthnyfkp    false    252    7                       0    0    spree_products_taxons_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "spree_products_taxons_id_seq" OWNED BY "spree_products_taxons"."id";
            public       nqokmikthnyfkp    false    251            �            1259    4820956 !   spree_promotion_action_line_items    TABLE     �   CREATE TABLE "spree_promotion_action_line_items" (
    "id" integer NOT NULL,
    "promotion_action_id" integer,
    "variant_id" integer,
    "quantity" integer DEFAULT 1
);
 9   DROP TABLE "public"."spree_promotion_action_line_items";
       public         nqokmikthnyfkp    false    7            �            1259    4820954 (   spree_promotion_action_line_items_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_promotion_action_line_items_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE "public"."spree_promotion_action_line_items_id_seq";
       public       nqokmikthnyfkp    false    254    7                       0    0 (   spree_promotion_action_line_items_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "spree_promotion_action_line_items_id_seq" OWNED BY "spree_promotion_action_line_items"."id";
            public       nqokmikthnyfkp    false    253                        1259    4820967    spree_promotion_actions    TABLE     �   CREATE TABLE "spree_promotion_actions" (
    "id" integer NOT NULL,
    "promotion_id" integer,
    "position" integer,
    "type" character varying,
    "deleted_at" timestamp without time zone
);
 /   DROP TABLE "public"."spree_promotion_actions";
       public         nqokmikthnyfkp    false    7            �            1259    4820965    spree_promotion_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_promotion_actions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "public"."spree_promotion_actions_id_seq";
       public       nqokmikthnyfkp    false    256    7                       0    0    spree_promotion_actions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "spree_promotion_actions_id_seq" OWNED BY "spree_promotion_actions"."id";
            public       nqokmikthnyfkp    false    255                       1259    4820981    spree_promotion_categories    TABLE     �   CREATE TABLE "spree_promotion_categories" (
    "id" integer NOT NULL,
    "name" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "code" character varying
);
 2   DROP TABLE "public"."spree_promotion_categories";
       public         nqokmikthnyfkp    false    7                       1259    4820979 !   spree_promotion_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_promotion_categories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "public"."spree_promotion_categories_id_seq";
       public       nqokmikthnyfkp    false    7    258                       0    0 !   spree_promotion_categories_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "spree_promotion_categories_id_seq" OWNED BY "spree_promotion_categories"."id";
            public       nqokmikthnyfkp    false    257                       1259    4820992    spree_promotion_rule_taxons    TABLE     �   CREATE TABLE "spree_promotion_rule_taxons" (
    "id" integer NOT NULL,
    "taxon_id" integer,
    "promotion_rule_id" integer
);
 3   DROP TABLE "public"."spree_promotion_rule_taxons";
       public         nqokmikthnyfkp    false    7                       1259    4820990 "   spree_promotion_rule_taxons_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_promotion_rule_taxons_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "public"."spree_promotion_rule_taxons_id_seq";
       public       nqokmikthnyfkp    false    7    260            	           0    0 "   spree_promotion_rule_taxons_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "spree_promotion_rule_taxons_id_seq" OWNED BY "spree_promotion_rule_taxons"."id";
            public       nqokmikthnyfkp    false    259                       1259    4821002    spree_promotion_rule_users    TABLE     �   CREATE TABLE "spree_promotion_rule_users" (
    "id" integer NOT NULL,
    "user_id" integer,
    "promotion_rule_id" integer
);
 2   DROP TABLE "public"."spree_promotion_rule_users";
       public         nqokmikthnyfkp    false    7                       1259    4821000 !   spree_promotion_rule_users_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_promotion_rule_users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "public"."spree_promotion_rule_users_id_seq";
       public       nqokmikthnyfkp    false    7    262            
           0    0 !   spree_promotion_rule_users_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "spree_promotion_rule_users_id_seq" OWNED BY "spree_promotion_rule_users"."id";
            public       nqokmikthnyfkp    false    261                       1259    4821012    spree_promotion_rules    TABLE     [  CREATE TABLE "spree_promotion_rules" (
    "id" integer NOT NULL,
    "promotion_id" integer,
    "user_id" integer,
    "product_group_id" integer,
    "type" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "code" character varying,
    "preferences" "text"
);
 -   DROP TABLE "public"."spree_promotion_rules";
       public         nqokmikthnyfkp    false    7                       1259    4821010    spree_promotion_rules_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_promotion_rules_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."spree_promotion_rules_id_seq";
       public       nqokmikthnyfkp    false    7    264                       0    0    spree_promotion_rules_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "spree_promotion_rules_id_seq" OWNED BY "spree_promotion_rules"."id";
            public       nqokmikthnyfkp    false    263            
           1259    4821026    spree_promotions    TABLE     S  CREATE TABLE "spree_promotions" (
    "id" integer NOT NULL,
    "description" character varying,
    "expires_at" timestamp without time zone,
    "starts_at" timestamp without time zone,
    "name" character varying,
    "type" character varying,
    "usage_limit" integer,
    "match_policy" character varying DEFAULT 'all'::character varying,
    "code" character varying,
    "advertise" boolean DEFAULT false,
    "path" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "promotion_category_id" integer
);
 (   DROP TABLE "public"."spree_promotions";
       public         nqokmikthnyfkp    false    7            	           1259    4821024    spree_promotions_id_seq    SEQUENCE     {   CREATE SEQUENCE "spree_promotions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "public"."spree_promotions_id_seq";
       public       nqokmikthnyfkp    false    7    266                       0    0    spree_promotions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "spree_promotions_id_seq" OWNED BY "spree_promotions"."id";
            public       nqokmikthnyfkp    false    265                       1259    4821045    spree_properties    TABLE     �   CREATE TABLE "spree_properties" (
    "id" integer NOT NULL,
    "name" character varying,
    "presentation" character varying NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 (   DROP TABLE "public"."spree_properties";
       public         nqokmikthnyfkp    false    7                       1259    4821043    spree_properties_id_seq    SEQUENCE     {   CREATE SEQUENCE "spree_properties_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "public"."spree_properties_id_seq";
       public       nqokmikthnyfkp    false    7    268                       0    0    spree_properties_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "spree_properties_id_seq" OWNED BY "spree_properties"."id";
            public       nqokmikthnyfkp    false    267                       1259    4821057    spree_property_prototypes    TABLE        CREATE TABLE "spree_property_prototypes" (
    "id" integer NOT NULL,
    "prototype_id" integer,
    "property_id" integer
);
 1   DROP TABLE "public"."spree_property_prototypes";
       public         nqokmikthnyfkp    false    7                       1259    4821055     spree_property_prototypes_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_property_prototypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."spree_property_prototypes_id_seq";
       public       nqokmikthnyfkp    false    7    270                       0    0     spree_property_prototypes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "spree_property_prototypes_id_seq" OWNED BY "spree_property_prototypes"."id";
            public       nqokmikthnyfkp    false    269                       1259    4821066    spree_prototype_taxons    TABLE     y   CREATE TABLE "spree_prototype_taxons" (
    "id" integer NOT NULL,
    "taxon_id" integer,
    "prototype_id" integer
);
 .   DROP TABLE "public"."spree_prototype_taxons";
       public         nqokmikthnyfkp    false    7                       1259    4821064    spree_prototype_taxons_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_prototype_taxons_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "public"."spree_prototype_taxons_id_seq";
       public       nqokmikthnyfkp    false    7    272                       0    0    spree_prototype_taxons_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "spree_prototype_taxons_id_seq" OWNED BY "spree_prototype_taxons"."id";
            public       nqokmikthnyfkp    false    271                       1259    4821076    spree_prototypes    TABLE     �   CREATE TABLE "spree_prototypes" (
    "id" integer NOT NULL,
    "name" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 (   DROP TABLE "public"."spree_prototypes";
       public         nqokmikthnyfkp    false    7                       1259    4821074    spree_prototypes_id_seq    SEQUENCE     {   CREATE SEQUENCE "spree_prototypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "public"."spree_prototypes_id_seq";
       public       nqokmikthnyfkp    false    7    274                       0    0    spree_prototypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "spree_prototypes_id_seq" OWNED BY "spree_prototypes"."id";
            public       nqokmikthnyfkp    false    273                       1259    4821087    spree_refund_reasons    TABLE       CREATE TABLE "spree_refund_reasons" (
    "id" integer NOT NULL,
    "name" character varying,
    "active" boolean DEFAULT true,
    "mutable" boolean DEFAULT true,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 ,   DROP TABLE "public"."spree_refund_reasons";
       public         nqokmikthnyfkp    false    7                       1259    4821085    spree_refund_reasons_id_seq    SEQUENCE        CREATE SEQUENCE "spree_refund_reasons_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "public"."spree_refund_reasons_id_seq";
       public       nqokmikthnyfkp    false    276    7                       0    0    spree_refund_reasons_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "spree_refund_reasons_id_seq" OWNED BY "spree_refund_reasons"."id";
            public       nqokmikthnyfkp    false    275                       1259    4821100    spree_refunds    TABLE     ]  CREATE TABLE "spree_refunds" (
    "id" integer NOT NULL,
    "payment_id" integer,
    "amount" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "transaction_id" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "refund_reason_id" integer,
    "reimbursement_id" integer
);
 %   DROP TABLE "public"."spree_refunds";
       public         nqokmikthnyfkp    false    7                       1259    4821098    spree_refunds_id_seq    SEQUENCE     x   CREATE SEQUENCE "spree_refunds_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "public"."spree_refunds_id_seq";
       public       nqokmikthnyfkp    false    278    7                       0    0    spree_refunds_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "spree_refunds_id_seq" OWNED BY "spree_refunds"."id";
            public       nqokmikthnyfkp    false    277                       1259    4821113    spree_reimbursement_credits    TABLE     �   CREATE TABLE "spree_reimbursement_credits" (
    "id" integer NOT NULL,
    "amount" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "reimbursement_id" integer,
    "creditable_id" integer,
    "creditable_type" character varying
);
 3   DROP TABLE "public"."spree_reimbursement_credits";
       public         nqokmikthnyfkp    false    7                       1259    4821111 "   spree_reimbursement_credits_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_reimbursement_credits_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "public"."spree_reimbursement_credits_id_seq";
       public       nqokmikthnyfkp    false    280    7                       0    0 "   spree_reimbursement_credits_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "spree_reimbursement_credits_id_seq" OWNED BY "spree_reimbursement_credits"."id";
            public       nqokmikthnyfkp    false    279                       1259    4821125    spree_reimbursement_types    TABLE     9  CREATE TABLE "spree_reimbursement_types" (
    "id" integer NOT NULL,
    "name" character varying,
    "active" boolean DEFAULT true,
    "mutable" boolean DEFAULT true,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "type" character varying
);
 1   DROP TABLE "public"."spree_reimbursement_types";
       public         nqokmikthnyfkp    false    7                       1259    4821123     spree_reimbursement_types_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_reimbursement_types_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."spree_reimbursement_types_id_seq";
       public       nqokmikthnyfkp    false    7    282                       0    0     spree_reimbursement_types_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "spree_reimbursement_types_id_seq" OWNED BY "spree_reimbursement_types"."id";
            public       nqokmikthnyfkp    false    281                       1259    4821139    spree_reimbursements    TABLE     T  CREATE TABLE "spree_reimbursements" (
    "id" integer NOT NULL,
    "number" character varying,
    "reimbursement_status" character varying,
    "customer_return_id" integer,
    "order_id" integer,
    "total" numeric(10,2),
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 ,   DROP TABLE "public"."spree_reimbursements";
       public         nqokmikthnyfkp    false    7                       1259    4821137    spree_reimbursements_id_seq    SEQUENCE        CREATE SEQUENCE "spree_reimbursements_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "public"."spree_reimbursements_id_seq";
       public       nqokmikthnyfkp    false    7    284                       0    0    spree_reimbursements_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "spree_reimbursements_id_seq" OWNED BY "spree_reimbursements"."id";
            public       nqokmikthnyfkp    false    283                       1259    4821152 "   spree_return_authorization_reasons    TABLE     $  CREATE TABLE "spree_return_authorization_reasons" (
    "id" integer NOT NULL,
    "name" character varying,
    "active" boolean DEFAULT true,
    "mutable" boolean DEFAULT true,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 :   DROP TABLE "public"."spree_return_authorization_reasons";
       public         nqokmikthnyfkp    false    7                       1259    4821150 )   spree_return_authorization_reasons_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_return_authorization_reasons_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE "public"."spree_return_authorization_reasons_id_seq";
       public       nqokmikthnyfkp    false    7    286                       0    0 )   spree_return_authorization_reasons_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "spree_return_authorization_reasons_id_seq" OWNED BY "spree_return_authorization_reasons"."id";
            public       nqokmikthnyfkp    false    285                        1259    4821165    spree_return_authorizations    TABLE     _  CREATE TABLE "spree_return_authorizations" (
    "id" integer NOT NULL,
    "number" character varying,
    "state" character varying,
    "order_id" integer,
    "memo" "text",
    "created_at" timestamp without time zone,
    "updated_at" timestamp without time zone,
    "stock_location_id" integer,
    "return_authorization_reason_id" integer
);
 3   DROP TABLE "public"."spree_return_authorizations";
       public         nqokmikthnyfkp    false    7                       1259    4821163 "   spree_return_authorizations_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_return_authorizations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "public"."spree_return_authorizations_id_seq";
       public       nqokmikthnyfkp    false    288    7                       0    0 "   spree_return_authorizations_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "spree_return_authorizations_id_seq" OWNED BY "spree_return_authorizations"."id";
            public       nqokmikthnyfkp    false    287            "           1259    4821177    spree_return_items    TABLE     D  CREATE TABLE "spree_return_items" (
    "id" integer NOT NULL,
    "return_authorization_id" integer,
    "inventory_unit_id" integer,
    "exchange_variant_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "pre_tax_amount" numeric(12,4) DEFAULT 0.0 NOT NULL,
    "included_tax_total" numeric(12,4) DEFAULT 0.0 NOT NULL,
    "additional_tax_total" numeric(12,4) DEFAULT 0.0 NOT NULL,
    "reception_status" character varying,
    "acceptance_status" character varying,
    "customer_return_id" integer,
    "reimbursement_id" integer,
    "exchange_inventory_unit_id" integer,
    "acceptance_status_errors" "text",
    "preferred_reimbursement_type_id" integer,
    "override_reimbursement_type_id" integer,
    "resellable" boolean DEFAULT true NOT NULL
);
 *   DROP TABLE "public"."spree_return_items";
       public         nqokmikthnyfkp    false    7            !           1259    4821175    spree_return_items_id_seq    SEQUENCE     }   CREATE SEQUENCE "spree_return_items_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "public"."spree_return_items_id_seq";
       public       nqokmikthnyfkp    false    290    7                       0    0    spree_return_items_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "spree_return_items_id_seq" OWNED BY "spree_return_items"."id";
            public       nqokmikthnyfkp    false    289            $           1259    4821194    spree_roles    TABLE     �   CREATE TABLE "spree_roles" (
    "id" integer NOT NULL,
    "name" character varying,
    "editable" boolean DEFAULT true,
    "is_default" boolean DEFAULT false
);
 #   DROP TABLE "public"."spree_roles";
       public         nqokmikthnyfkp    false    7            #           1259    4821192    spree_roles_id_seq    SEQUENCE     v   CREATE SEQUENCE "spree_roles_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "public"."spree_roles_id_seq";
       public       nqokmikthnyfkp    false    292    7                       0    0    spree_roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "spree_roles_id_seq" OWNED BY "spree_roles"."id";
            public       nqokmikthnyfkp    false    291            %           1259    4821208    spree_roles_permissions    TABLE     q   CREATE TABLE "spree_roles_permissions" (
    "role_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);
 /   DROP TABLE "public"."spree_roles_permissions";
       public         nqokmikthnyfkp    false    7            '           1259    4821215    spree_roles_users    TABLE     n   CREATE TABLE "spree_roles_users" (
    "id" integer NOT NULL,
    "role_id" integer,
    "user_id" integer
);
 )   DROP TABLE "public"."spree_roles_users";
       public         nqokmikthnyfkp    false    7            &           1259    4821213    spree_roles_users_id_seq    SEQUENCE     |   CREATE SEQUENCE "spree_roles_users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."spree_roles_users_id_seq";
       public       nqokmikthnyfkp    false    7    295                       0    0    spree_roles_users_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "spree_roles_users_id_seq" OWNED BY "spree_roles_users"."id";
            public       nqokmikthnyfkp    false    294            )           1259    4821225    spree_shipments    TABLE     i  CREATE TABLE "spree_shipments" (
    "id" integer NOT NULL,
    "tracking" character varying,
    "number" character varying,
    "cost" numeric(10,2) DEFAULT 0.0,
    "shipped_at" timestamp without time zone,
    "order_id" integer,
    "address_id" integer,
    "state" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "stock_location_id" integer,
    "adjustment_total" numeric(10,2) DEFAULT 0.0,
    "additional_tax_total" numeric(10,2) DEFAULT 0.0,
    "promo_total" numeric(10,2) DEFAULT 0.0,
    "included_tax_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "pre_tax_amount" numeric(12,4) DEFAULT 0.0 NOT NULL,
    "taxable_adjustment_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "non_taxable_adjustment_total" numeric(10,2) DEFAULT 0.0 NOT NULL,
    "delivery_slot_id" integer
);
 '   DROP TABLE "public"."spree_shipments";
       public         nqokmikthnyfkp    false    7            (           1259    4821223    spree_shipments_id_seq    SEQUENCE     z   CREATE SEQUENCE "spree_shipments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "public"."spree_shipments_id_seq";
       public       nqokmikthnyfkp    false    7    297                       0    0    spree_shipments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "spree_shipments_id_seq" OWNED BY "spree_shipments"."id";
            public       nqokmikthnyfkp    false    296            +           1259    4821249    spree_shipping_categories    TABLE     �   CREATE TABLE "spree_shipping_categories" (
    "id" integer NOT NULL,
    "name" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 1   DROP TABLE "public"."spree_shipping_categories";
       public         nqokmikthnyfkp    false    7            *           1259    4821247     spree_shipping_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_shipping_categories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."spree_shipping_categories_id_seq";
       public       nqokmikthnyfkp    false    299    7                       0    0     spree_shipping_categories_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "spree_shipping_categories_id_seq" OWNED BY "spree_shipping_categories"."id";
            public       nqokmikthnyfkp    false    298            -           1259    4821261     spree_shipping_method_categories    TABLE       CREATE TABLE "spree_shipping_method_categories" (
    "id" integer NOT NULL,
    "shipping_method_id" integer NOT NULL,
    "shipping_category_id" integer NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 8   DROP TABLE "public"."spree_shipping_method_categories";
       public         nqokmikthnyfkp    false    7            ,           1259    4821259 '   spree_shipping_method_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_shipping_method_categories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE "public"."spree_shipping_method_categories_id_seq";
       public       nqokmikthnyfkp    false    7    301                       0    0 '   spree_shipping_method_categories_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "spree_shipping_method_categories_id_seq" OWNED BY "spree_shipping_method_categories"."id";
            public       nqokmikthnyfkp    false    300            /           1259    4821271    spree_shipping_method_zones    TABLE     �   CREATE TABLE "spree_shipping_method_zones" (
    "id" integer NOT NULL,
    "shipping_method_id" integer,
    "zone_id" integer
);
 3   DROP TABLE "public"."spree_shipping_method_zones";
       public         nqokmikthnyfkp    false    7            .           1259    4821269 "   spree_shipping_method_zones_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_shipping_method_zones_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "public"."spree_shipping_method_zones_id_seq";
       public       nqokmikthnyfkp    false    7    303                       0    0 "   spree_shipping_method_zones_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "spree_shipping_method_zones_id_seq" OWNED BY "spree_shipping_method_zones"."id";
            public       nqokmikthnyfkp    false    302            1           1259    4821279    spree_shipping_methods    TABLE     �  CREATE TABLE "spree_shipping_methods" (
    "id" integer NOT NULL,
    "name" character varying,
    "display_on" character varying,
    "deleted_at" timestamp without time zone,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "tracking_url" character varying,
    "admin_name" character varying,
    "tax_category_id" integer,
    "code" character varying,
    "is_delivery_slots_enabled" boolean DEFAULT false NOT NULL
);
 .   DROP TABLE "public"."spree_shipping_methods";
       public         nqokmikthnyfkp    false    7            0           1259    4821277    spree_shipping_methods_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_shipping_methods_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "public"."spree_shipping_methods_id_seq";
       public       nqokmikthnyfkp    false    7    305                       0    0    spree_shipping_methods_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "spree_shipping_methods_id_seq" OWNED BY "spree_shipping_methods"."id";
            public       nqokmikthnyfkp    false    304            3           1259    4821293    spree_shipping_rates    TABLE     T  CREATE TABLE "spree_shipping_rates" (
    "id" integer NOT NULL,
    "shipment_id" integer,
    "shipping_method_id" integer,
    "selected" boolean DEFAULT false,
    "cost" numeric(8,2) DEFAULT 0.0,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "tax_rate_id" integer
);
 ,   DROP TABLE "public"."spree_shipping_rates";
       public         nqokmikthnyfkp    false    7            2           1259    4821291    spree_shipping_rates_id_seq    SEQUENCE        CREATE SEQUENCE "spree_shipping_rates_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "public"."spree_shipping_rates_id_seq";
       public       nqokmikthnyfkp    false    307    7                        0    0    spree_shipping_rates_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "spree_shipping_rates_id_seq" OWNED BY "spree_shipping_rates"."id";
            public       nqokmikthnyfkp    false    306            5           1259    4821306    spree_state_changes    TABLE     s  CREATE TABLE "spree_state_changes" (
    "id" integer NOT NULL,
    "name" character varying,
    "previous_state" character varying,
    "stateful_id" integer,
    "user_id" integer,
    "stateful_type" character varying,
    "next_state" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 +   DROP TABLE "public"."spree_state_changes";
       public         nqokmikthnyfkp    false    7            4           1259    4821304    spree_state_changes_id_seq    SEQUENCE     ~   CREATE SEQUENCE "spree_state_changes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "public"."spree_state_changes_id_seq";
       public       nqokmikthnyfkp    false    7    309            !           0    0    spree_state_changes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "spree_state_changes_id_seq" OWNED BY "spree_state_changes"."id";
            public       nqokmikthnyfkp    false    308            7           1259    4821318    spree_states    TABLE     �   CREATE TABLE "spree_states" (
    "id" integer NOT NULL,
    "name" character varying,
    "abbr" character varying,
    "country_id" integer,
    "updated_at" timestamp without time zone
);
 $   DROP TABLE "public"."spree_states";
       public         nqokmikthnyfkp    false    7            6           1259    4821316    spree_states_id_seq    SEQUENCE     w   CREATE SEQUENCE "spree_states_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "public"."spree_states_id_seq";
       public       nqokmikthnyfkp    false    7    311            "           0    0    spree_states_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "spree_states_id_seq" OWNED BY "spree_states"."id";
            public       nqokmikthnyfkp    false    310            9           1259    4821330    spree_stock_items    TABLE     r  CREATE TABLE "spree_stock_items" (
    "id" integer NOT NULL,
    "stock_location_id" integer,
    "variant_id" integer,
    "count_on_hand" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "backorderable" boolean DEFAULT false,
    "deleted_at" timestamp without time zone
);
 )   DROP TABLE "public"."spree_stock_items";
       public         nqokmikthnyfkp    false    7            8           1259    4821328    spree_stock_items_id_seq    SEQUENCE     |   CREATE SEQUENCE "spree_stock_items_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."spree_stock_items_id_seq";
       public       nqokmikthnyfkp    false    7    313            #           0    0    spree_stock_items_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "spree_stock_items_id_seq" OWNED BY "spree_stock_items"."id";
            public       nqokmikthnyfkp    false    312            ;           1259    4821344    spree_stock_locations    TABLE     �  CREATE TABLE "spree_stock_locations" (
    "id" integer NOT NULL,
    "name" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    "address1" character varying,
    "address2" character varying,
    "city" character varying,
    "state_id" integer,
    "state_name" character varying,
    "country_id" integer,
    "zipcode" character varying,
    "phone" character varying,
    "active" boolean DEFAULT true,
    "backorderable_default" boolean DEFAULT false,
    "propagate_all_variants" boolean DEFAULT true,
    "admin_name" character varying
);
 -   DROP TABLE "public"."spree_stock_locations";
       public         nqokmikthnyfkp    false    7            :           1259    4821342    spree_stock_locations_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_stock_locations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."spree_stock_locations_id_seq";
       public       nqokmikthnyfkp    false    315    7            $           0    0    spree_stock_locations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "spree_stock_locations_id_seq" OWNED BY "spree_stock_locations"."id";
            public       nqokmikthnyfkp    false    314            =           1259    4821364    spree_stock_movements    TABLE     W  CREATE TABLE "spree_stock_movements" (
    "id" integer NOT NULL,
    "stock_item_id" integer,
    "quantity" integer DEFAULT 0,
    "action" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "originator_type" character varying,
    "originator_id" integer
);
 -   DROP TABLE "public"."spree_stock_movements";
       public         nqokmikthnyfkp    false    7            <           1259    4821362    spree_stock_movements_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_stock_movements_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."spree_stock_movements_id_seq";
       public       nqokmikthnyfkp    false    7    317            %           0    0    spree_stock_movements_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "spree_stock_movements_id_seq" OWNED BY "spree_stock_movements"."id";
            public       nqokmikthnyfkp    false    316            ?           1259    4821377    spree_stock_transfers    TABLE     \  CREATE TABLE "spree_stock_transfers" (
    "id" integer NOT NULL,
    "type" character varying,
    "reference" character varying,
    "source_location_id" integer,
    "destination_location_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "number" character varying
);
 -   DROP TABLE "public"."spree_stock_transfers";
       public         nqokmikthnyfkp    false    7            >           1259    4821375    spree_stock_transfers_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_stock_transfers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."spree_stock_transfers_id_seq";
       public       nqokmikthnyfkp    false    7    319            &           0    0    spree_stock_transfers_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "spree_stock_transfers_id_seq" OWNED BY "spree_stock_transfers"."id";
            public       nqokmikthnyfkp    false    318            A           1259    4821391    spree_store_credit_categories    TABLE     �   CREATE TABLE "spree_store_credit_categories" (
    "id" integer NOT NULL,
    "name" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 5   DROP TABLE "public"."spree_store_credit_categories";
       public         nqokmikthnyfkp    false    7            @           1259    4821389 $   spree_store_credit_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_store_credit_categories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "public"."spree_store_credit_categories_id_seq";
       public       nqokmikthnyfkp    false    7    321            '           0    0 $   spree_store_credit_categories_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "spree_store_credit_categories_id_seq" OWNED BY "spree_store_credit_categories"."id";
            public       nqokmikthnyfkp    false    320            C           1259    4821402    spree_store_credit_events    TABLE       CREATE TABLE "spree_store_credit_events" (
    "id" integer NOT NULL,
    "store_credit_id" integer NOT NULL,
    "action" character varying NOT NULL,
    "amount" numeric(8,2),
    "authorization_code" character varying NOT NULL,
    "user_total_amount" numeric(8,2) DEFAULT 0.0 NOT NULL,
    "originator_id" integer,
    "originator_type" character varying,
    "deleted_at" timestamp without time zone,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 1   DROP TABLE "public"."spree_store_credit_events";
       public         nqokmikthnyfkp    false    7            B           1259    4821400     spree_store_credit_events_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_store_credit_events_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."spree_store_credit_events_id_seq";
       public       nqokmikthnyfkp    false    7    323            (           0    0     spree_store_credit_events_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "spree_store_credit_events_id_seq" OWNED BY "spree_store_credit_events"."id";
            public       nqokmikthnyfkp    false    322            E           1259    4821416    spree_store_credit_types    TABLE     �   CREATE TABLE "spree_store_credit_types" (
    "id" integer NOT NULL,
    "name" character varying,
    "priority" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 0   DROP TABLE "public"."spree_store_credit_types";
       public         nqokmikthnyfkp    false    7            D           1259    4821414    spree_store_credit_types_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_store_credit_types_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "public"."spree_store_credit_types_id_seq";
       public       nqokmikthnyfkp    false    325    7            )           0    0    spree_store_credit_types_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "spree_store_credit_types_id_seq" OWNED BY "spree_store_credit_types"."id";
            public       nqokmikthnyfkp    false    324            G           1259    4821428    spree_store_credits    TABLE     _  CREATE TABLE "spree_store_credits" (
    "id" integer NOT NULL,
    "user_id" integer,
    "category_id" integer,
    "created_by_id" integer,
    "amount" numeric(8,2) DEFAULT 0.0 NOT NULL,
    "amount_used" numeric(8,2) DEFAULT 0.0 NOT NULL,
    "memo" "text",
    "deleted_at" timestamp without time zone,
    "currency" character varying,
    "amount_authorized" numeric(8,2) DEFAULT 0.0 NOT NULL,
    "originator_id" integer,
    "originator_type" character varying,
    "type_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 +   DROP TABLE "public"."spree_store_credits";
       public         nqokmikthnyfkp    false    7            F           1259    4821426    spree_store_credits_id_seq    SEQUENCE     ~   CREATE SEQUENCE "spree_store_credits_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "public"."spree_store_credits_id_seq";
       public       nqokmikthnyfkp    false    327    7            *           0    0    spree_store_credits_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "spree_store_credits_id_seq" OWNED BY "spree_store_credits"."id";
            public       nqokmikthnyfkp    false    326            I           1259    4821446    spree_stores    TABLE     �  CREATE TABLE "spree_stores" (
    "id" integer NOT NULL,
    "name" character varying,
    "url" character varying,
    "meta_description" "text",
    "meta_keywords" "text",
    "seo_title" character varying,
    "mail_from_address" character varying,
    "default_currency" character varying,
    "code" character varying,
    "default" boolean DEFAULT false NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 $   DROP TABLE "public"."spree_stores";
       public         nqokmikthnyfkp    false    7            H           1259    4821444    spree_stores_id_seq    SEQUENCE     w   CREATE SEQUENCE "spree_stores_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "public"."spree_stores_id_seq";
       public       nqokmikthnyfkp    false    7    329            +           0    0    spree_stores_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "spree_stores_id_seq" OWNED BY "spree_stores"."id";
            public       nqokmikthnyfkp    false    328            K           1259    4821461    spree_taggings    TABLE     '  CREATE TABLE "spree_taggings" (
    "id" integer NOT NULL,
    "tag_id" integer,
    "taggable_type" character varying,
    "taggable_id" integer,
    "tagger_type" character varying,
    "tagger_id" integer,
    "context" character varying(128),
    "created_at" timestamp without time zone
);
 &   DROP TABLE "public"."spree_taggings";
       public         nqokmikthnyfkp    false    7            J           1259    4821459    spree_taggings_id_seq    SEQUENCE     y   CREATE SEQUENCE "spree_taggings_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "public"."spree_taggings_id_seq";
       public       nqokmikthnyfkp    false    331    7            ,           0    0    spree_taggings_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "spree_taggings_id_seq" OWNED BY "spree_taggings"."id";
            public       nqokmikthnyfkp    false    330            M           1259    4821480 
   spree_tags    TABLE        CREATE TABLE "spree_tags" (
    "id" integer NOT NULL,
    "name" character varying,
    "taggings_count" integer DEFAULT 0
);
 "   DROP TABLE "public"."spree_tags";
       public         nqokmikthnyfkp    false    7            L           1259    4821478    spree_tags_id_seq    SEQUENCE     u   CREATE SEQUENCE "spree_tags_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE "public"."spree_tags_id_seq";
       public       nqokmikthnyfkp    false    333    7            -           0    0    spree_tags_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "spree_tags_id_seq" OWNED BY "spree_tags"."id";
            public       nqokmikthnyfkp    false    332            O           1259    4821493    spree_tax_categories    TABLE     l  CREATE TABLE "spree_tax_categories" (
    "id" integer NOT NULL,
    "name" character varying,
    "description" character varying,
    "is_default" boolean DEFAULT false,
    "deleted_at" timestamp without time zone,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "tax_code" character varying
);
 ,   DROP TABLE "public"."spree_tax_categories";
       public         nqokmikthnyfkp    false    7            N           1259    4821491    spree_tax_categories_id_seq    SEQUENCE        CREATE SEQUENCE "spree_tax_categories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "public"."spree_tax_categories_id_seq";
       public       nqokmikthnyfkp    false    7    335            .           0    0    spree_tax_categories_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "spree_tax_categories_id_seq" OWNED BY "spree_tax_categories"."id";
            public       nqokmikthnyfkp    false    334            Q           1259    4821507    spree_tax_rates    TABLE     �  CREATE TABLE "spree_tax_rates" (
    "id" integer NOT NULL,
    "amount" numeric(8,5),
    "zone_id" integer,
    "tax_category_id" integer,
    "included_in_price" boolean DEFAULT false,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "name" character varying,
    "show_rate_in_label" boolean DEFAULT true,
    "deleted_at" timestamp without time zone
);
 '   DROP TABLE "public"."spree_tax_rates";
       public         nqokmikthnyfkp    false    7            P           1259    4821505    spree_tax_rates_id_seq    SEQUENCE     z   CREATE SEQUENCE "spree_tax_rates_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "public"."spree_tax_rates_id_seq";
       public       nqokmikthnyfkp    false    337    7            /           0    0    spree_tax_rates_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "spree_tax_rates_id_seq" OWNED BY "spree_tax_rates"."id";
            public       nqokmikthnyfkp    false    336            S           1259    4821525    spree_taxonomies    TABLE     �   CREATE TABLE "spree_taxonomies" (
    "id" integer NOT NULL,
    "name" character varying NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "position" integer DEFAULT 0
);
 (   DROP TABLE "public"."spree_taxonomies";
       public         nqokmikthnyfkp    false    7            R           1259    4821523    spree_taxonomies_id_seq    SEQUENCE     {   CREATE SEQUENCE "spree_taxonomies_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "public"."spree_taxonomies_id_seq";
       public       nqokmikthnyfkp    false    7    339            0           0    0    spree_taxonomies_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "spree_taxonomies_id_seq" OWNED BY "spree_taxonomies"."id";
            public       nqokmikthnyfkp    false    338            U           1259    4821538    spree_taxons    TABLE     �  CREATE TABLE "spree_taxons" (
    "id" integer NOT NULL,
    "parent_id" integer,
    "position" integer DEFAULT 0,
    "name" character varying NOT NULL,
    "permalink" character varying,
    "taxonomy_id" integer,
    "lft" integer,
    "rgt" integer,
    "icon_file_name" character varying,
    "icon_content_type" character varying,
    "icon_file_size" integer,
    "icon_updated_at" timestamp without time zone,
    "description" "text",
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "meta_title" character varying,
    "meta_description" character varying,
    "meta_keywords" character varying,
    "depth" integer
);
 $   DROP TABLE "public"."spree_taxons";
       public         nqokmikthnyfkp    false    7            T           1259    4821536    spree_taxons_id_seq    SEQUENCE     w   CREATE SEQUENCE "spree_taxons_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "public"."spree_taxons_id_seq";
       public       nqokmikthnyfkp    false    341    7            1           0    0    spree_taxons_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "spree_taxons_id_seq" OWNED BY "spree_taxons"."id";
            public       nqokmikthnyfkp    false    340            W           1259    4821557    spree_themes    TABLE     @  CREATE TABLE "spree_themes" (
    "id" integer NOT NULL,
    "name" character varying,
    "state" character varying,
    "template_file_file_name" character varying,
    "template_file_content_type" character varying,
    "template_file_file_size" integer,
    "template_file_updated_at" timestamp without time zone
);
 $   DROP TABLE "public"."spree_themes";
       public         nqokmikthnyfkp    false    7            V           1259    4821555    spree_themes_id_seq    SEQUENCE     w   CREATE SEQUENCE "spree_themes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "public"."spree_themes_id_seq";
       public       nqokmikthnyfkp    false    7    343            2           0    0    spree_themes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "spree_themes_id_seq" OWNED BY "spree_themes"."id";
            public       nqokmikthnyfkp    false    342            Y           1259    4821568    spree_themes_templates    TABLE     �  CREATE TABLE "spree_themes_templates" (
    "id" integer NOT NULL,
    "name" character varying,
    "body" "text",
    "path" character varying,
    "format" character varying,
    "locale" character varying,
    "handler" character varying,
    "partial" boolean DEFAULT false,
    "theme_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 .   DROP TABLE "public"."spree_themes_templates";
       public         nqokmikthnyfkp    false    7            X           1259    4821566    spree_themes_templates_id_seq    SEQUENCE     �   CREATE SEQUENCE "spree_themes_templates_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "public"."spree_themes_templates_id_seq";
       public       nqokmikthnyfkp    false    7    345            3           0    0    spree_themes_templates_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "spree_themes_templates_id_seq" OWNED BY "spree_themes_templates"."id";
            public       nqokmikthnyfkp    false    344            [           1259    4821581    spree_trackers    TABLE     �   CREATE TABLE "spree_trackers" (
    "id" integer NOT NULL,
    "analytics_id" character varying,
    "active" boolean DEFAULT true,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 &   DROP TABLE "public"."spree_trackers";
       public         nqokmikthnyfkp    false    7            Z           1259    4821579    spree_trackers_id_seq    SEQUENCE     y   CREATE SEQUENCE "spree_trackers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "public"."spree_trackers_id_seq";
       public       nqokmikthnyfkp    false    347    7            4           0    0    spree_trackers_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "spree_trackers_id_seq" OWNED BY "spree_trackers"."id";
            public       nqokmikthnyfkp    false    346            ]           1259    4821594    spree_users    TABLE     ^  CREATE TABLE "spree_users" (
    "id" integer NOT NULL,
    "encrypted_password" character varying(128),
    "password_salt" character varying(128),
    "email" character varying,
    "remember_token" character varying,
    "persistence_token" character varying,
    "reset_password_token" character varying,
    "perishable_token" character varying,
    "sign_in_count" integer DEFAULT 0 NOT NULL,
    "failed_attempts" integer DEFAULT 0 NOT NULL,
    "last_request_at" timestamp without time zone,
    "current_sign_in_at" timestamp without time zone,
    "last_sign_in_at" timestamp without time zone,
    "current_sign_in_ip" character varying,
    "last_sign_in_ip" character varying,
    "login" character varying,
    "ship_address_id" integer,
    "bill_address_id" integer,
    "authentication_token" character varying,
    "unlock_token" character varying,
    "locked_at" timestamp without time zone,
    "reset_password_sent_at" timestamp without time zone,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "spree_api_key" character varying(48),
    "remember_created_at" timestamp without time zone,
    "deleted_at" timestamp without time zone,
    "confirmation_token" character varying,
    "confirmed_at" timestamp without time zone,
    "confirmation_sent_at" timestamp without time zone
);
 #   DROP TABLE "public"."spree_users";
       public         nqokmikthnyfkp    false    7            \           1259    4821592    spree_users_id_seq    SEQUENCE     v   CREATE SEQUENCE "spree_users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "public"."spree_users_id_seq";
       public       nqokmikthnyfkp    false    349    7            5           0    0    spree_users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "spree_users_id_seq" OWNED BY "spree_users"."id";
            public       nqokmikthnyfkp    false    348            _           1259    4821612    spree_variants    TABLE     �  CREATE TABLE "spree_variants" (
    "id" integer NOT NULL,
    "sku" character varying DEFAULT ''::character varying NOT NULL,
    "weight" numeric(8,2) DEFAULT 0.0,
    "height" numeric(8,2),
    "width" numeric(8,2),
    "depth" numeric(8,2),
    "deleted_at" timestamp without time zone,
    "is_master" boolean DEFAULT false,
    "product_id" integer,
    "cost_price" numeric(10,2),
    "position" integer,
    "cost_currency" character varying,
    "track_inventory" boolean DEFAULT true,
    "tax_category_id" integer,
    "updated_at" timestamp without time zone NOT NULL,
    "discontinue_on" timestamp without time zone,
    "created_at" timestamp without time zone NOT NULL
);
 &   DROP TABLE "public"."spree_variants";
       public         nqokmikthnyfkp    false    7            ^           1259    4821610    spree_variants_id_seq    SEQUENCE     y   CREATE SEQUENCE "spree_variants_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "public"."spree_variants_id_seq";
       public       nqokmikthnyfkp    false    351    7            6           0    0    spree_variants_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "spree_variants_id_seq" OWNED BY "spree_variants"."id";
            public       nqokmikthnyfkp    false    350            a           1259    4821635    spree_zone_members    TABLE       CREATE TABLE "spree_zone_members" (
    "id" integer NOT NULL,
    "zoneable_type" character varying,
    "zoneable_id" integer,
    "zone_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
 *   DROP TABLE "public"."spree_zone_members";
       public         nqokmikthnyfkp    false    7            `           1259    4821633    spree_zone_members_id_seq    SEQUENCE     }   CREATE SEQUENCE "spree_zone_members_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "public"."spree_zone_members_id_seq";
       public       nqokmikthnyfkp    false    353    7            7           0    0    spree_zone_members_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "spree_zone_members_id_seq" OWNED BY "spree_zone_members"."id";
            public       nqokmikthnyfkp    false    352            c           1259    4821648    spree_zones    TABLE     ^  CREATE TABLE "spree_zones" (
    "id" integer NOT NULL,
    "name" character varying,
    "description" character varying,
    "default_tax" boolean DEFAULT false,
    "zone_members_count" integer DEFAULT 0,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "kind" character varying
);
 #   DROP TABLE "public"."spree_zones";
       public         nqokmikthnyfkp    false    7            b           1259    4821646    spree_zones_id_seq    SEQUENCE     v   CREATE SEQUENCE "spree_zones_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "public"."spree_zones_id_seq";
       public       nqokmikthnyfkp    false    355    7            8           0    0    spree_zones_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "spree_zones_id_seq" OWNED BY "spree_zones"."id";
            public       nqokmikthnyfkp    false    354            �           2604    4820487    connections id    DEFAULT     l   ALTER TABLE ONLY "connections" ALTER COLUMN "id" SET DEFAULT "nextval"('"connections_id_seq"'::"regclass");
 C   ALTER TABLE "public"."connections" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    188    187    188            �           2604    4820498    friendly_id_slugs id    DEFAULT     x   ALTER TABLE ONLY "friendly_id_slugs" ALTER COLUMN "id" SET DEFAULT "nextval"('"friendly_id_slugs_id_seq"'::"regclass");
 I   ALTER TABLE "public"."friendly_id_slugs" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    189    190    190            �           2604    4820514    spree_addresses id    DEFAULT     t   ALTER TABLE ONLY "spree_addresses" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_addresses_id_seq"'::"regclass");
 G   ALTER TABLE "public"."spree_addresses" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    191    192    192            �           2604    4820529    spree_adjustments id    DEFAULT     x   ALTER TABLE ONLY "spree_adjustments" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_adjustments_id_seq"'::"regclass");
 I   ALTER TABLE "public"."spree_adjustments" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    193    194    194            �           2604    4820546    spree_assets id    DEFAULT     n   ALTER TABLE ONLY "spree_assets" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_assets_id_seq"'::"regclass");
 D   ALTER TABLE "public"."spree_assets" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    196    195    196            �           2604    4820560    spree_braintree_checkouts id    DEFAULT     �   ALTER TABLE ONLY "spree_braintree_checkouts" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_braintree_checkouts_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."spree_braintree_checkouts" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    197    198    198            �           2604    4820573    spree_calculators id    DEFAULT     x   ALTER TABLE ONLY "spree_calculators" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_calculators_id_seq"'::"regclass");
 I   ALTER TABLE "public"."spree_calculators" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    200    199    200            �           2604    4820587    spree_countries id    DEFAULT     t   ALTER TABLE ONLY "spree_countries" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_countries_id_seq"'::"regclass");
 G   ALTER TABLE "public"."spree_countries" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    201    202    202            �           2604    4820600    spree_credit_cards id    DEFAULT     z   ALTER TABLE ONLY "spree_credit_cards" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_credit_cards_id_seq"'::"regclass");
 J   ALTER TABLE "public"."spree_credit_cards" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    204    203    204            �           2604    4820615    spree_customer_returns id    DEFAULT     �   ALTER TABLE ONLY "spree_customer_returns" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_customer_returns_id_seq"'::"regclass");
 N   ALTER TABLE "public"."spree_customer_returns" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    205    206    206            �           2604    4820626    spree_delivery_slots id    DEFAULT     ~   ALTER TABLE ONLY "spree_delivery_slots" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_delivery_slots_id_seq"'::"regclass");
 L   ALTER TABLE "public"."spree_delivery_slots" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    208    207    208            �           2604    4820639    spree_gateways id    DEFAULT     r   ALTER TABLE ONLY "spree_gateways" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_gateways_id_seq"'::"regclass");
 F   ALTER TABLE "public"."spree_gateways" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    209    210    210            �           2604    4820656    spree_inventory_units id    DEFAULT     �   ALTER TABLE ONLY "spree_inventory_units" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_inventory_units_id_seq"'::"regclass");
 M   ALTER TABLE "public"."spree_inventory_units" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    211    212    212            �           2604    4820672    spree_line_items id    DEFAULT     v   ALTER TABLE ONLY "spree_line_items" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_line_items_id_seq"'::"regclass");
 H   ALTER TABLE "public"."spree_line_items" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    213    214    214            �           2604    4820693    spree_log_entries id    DEFAULT     x   ALTER TABLE ONLY "spree_log_entries" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_log_entries_id_seq"'::"regclass");
 I   ALTER TABLE "public"."spree_log_entries" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    215    216    216            �           2604    4820705    spree_option_type_prototypes id    DEFAULT     �   ALTER TABLE ONLY "spree_option_type_prototypes" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_option_type_prototypes_id_seq"'::"regclass");
 T   ALTER TABLE "public"."spree_option_type_prototypes" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    217    218    218            �           2604    4820715    spree_option_types id    DEFAULT     z   ALTER TABLE ONLY "spree_option_types" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_option_types_id_seq"'::"regclass");
 J   ALTER TABLE "public"."spree_option_types" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    219    220    220            �           2604    4820726    spree_option_value_variants id    DEFAULT     �   ALTER TABLE ONLY "spree_option_value_variants" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_option_value_variants_id_seq"'::"regclass");
 S   ALTER TABLE "public"."spree_option_value_variants" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    221    222    222            �           2604    4820736    spree_option_values id    DEFAULT     |   ALTER TABLE ONLY "spree_option_values" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_option_values_id_seq"'::"regclass");
 K   ALTER TABLE "public"."spree_option_values" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    223    224    224            �           2604    4820750    spree_order_promotions id    DEFAULT     �   ALTER TABLE ONLY "spree_order_promotions" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_order_promotions_id_seq"'::"regclass");
 N   ALTER TABLE "public"."spree_order_promotions" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    225    226    226            �           2604    4820760    spree_orders id    DEFAULT     n   ALTER TABLE ONLY "spree_orders" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_orders_id_seq"'::"regclass");
 D   ALTER TABLE "public"."spree_orders" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    227    228    228            �           2604    4820798    spree_payment_capture_events id    DEFAULT     �   ALTER TABLE ONLY "spree_payment_capture_events" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_payment_capture_events_id_seq"'::"regclass");
 T   ALTER TABLE "public"."spree_payment_capture_events" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    229    230    230            �           2604    4820808    spree_payment_methods id    DEFAULT     �   ALTER TABLE ONLY "spree_payment_methods" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_payment_methods_id_seq"'::"regclass");
 M   ALTER TABLE "public"."spree_payment_methods" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    231    232    232            �           2604    4820823    spree_payments id    DEFAULT     r   ALTER TABLE ONLY "spree_payments" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_payments_id_seq"'::"regclass");
 F   ALTER TABLE "public"."spree_payments" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    234    233    234            �           2604    4820839    spree_permissions id    DEFAULT     x   ALTER TABLE ONLY "spree_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_permissions_id_seq"'::"regclass");
 I   ALTER TABLE "public"."spree_permissions" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    236    235    236            �           2604    4820854    spree_preferences id    DEFAULT     x   ALTER TABLE ONLY "spree_preferences" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_preferences_id_seq"'::"regclass");
 I   ALTER TABLE "public"."spree_preferences" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    238    237    238            �           2604    4820866    spree_prices id    DEFAULT     n   ALTER TABLE ONLY "spree_prices" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_prices_id_seq"'::"regclass");
 D   ALTER TABLE "public"."spree_prices" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    239    240    240            �           2604    4820880    spree_product_option_types id    DEFAULT     �   ALTER TABLE ONLY "spree_product_option_types" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_product_option_types_id_seq"'::"regclass");
 R   ALTER TABLE "public"."spree_product_option_types" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    242    241    242            �           2604    4820891    spree_product_packages id    DEFAULT     �   ALTER TABLE ONLY "spree_product_packages" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_product_packages_id_seq"'::"regclass");
 N   ALTER TABLE "public"."spree_product_packages" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    243    244    244            �           2604    4820903     spree_product_promotion_rules id    DEFAULT     �   ALTER TABLE ONLY "spree_product_promotion_rules" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_product_promotion_rules_id_seq"'::"regclass");
 U   ALTER TABLE "public"."spree_product_promotion_rules" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    246    245    246            �           2604    4820913    spree_product_properties id    DEFAULT     �   ALTER TABLE ONLY "spree_product_properties" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_product_properties_id_seq"'::"regclass");
 P   ALTER TABLE "public"."spree_product_properties" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    248    247    248            �           2604    4820928    spree_products id    DEFAULT     r   ALTER TABLE ONLY "spree_products" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_products_id_seq"'::"regclass");
 F   ALTER TABLE "public"."spree_products" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    250    249    250            �           2604    4820948    spree_products_taxons id    DEFAULT     �   ALTER TABLE ONLY "spree_products_taxons" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_products_taxons_id_seq"'::"regclass");
 M   ALTER TABLE "public"."spree_products_taxons" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    252    251    252            �           2604    4820959 $   spree_promotion_action_line_items id    DEFAULT     �   ALTER TABLE ONLY "spree_promotion_action_line_items" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_promotion_action_line_items_id_seq"'::"regclass");
 Y   ALTER TABLE "public"."spree_promotion_action_line_items" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    253    254    254            �           2604    4820970    spree_promotion_actions id    DEFAULT     �   ALTER TABLE ONLY "spree_promotion_actions" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_promotion_actions_id_seq"'::"regclass");
 O   ALTER TABLE "public"."spree_promotion_actions" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    256    255    256            �           2604    4820984    spree_promotion_categories id    DEFAULT     �   ALTER TABLE ONLY "spree_promotion_categories" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_promotion_categories_id_seq"'::"regclass");
 R   ALTER TABLE "public"."spree_promotion_categories" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    258    257    258            �           2604    4820995    spree_promotion_rule_taxons id    DEFAULT     �   ALTER TABLE ONLY "spree_promotion_rule_taxons" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_promotion_rule_taxons_id_seq"'::"regclass");
 S   ALTER TABLE "public"."spree_promotion_rule_taxons" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    259    260    260            �           2604    4821005    spree_promotion_rule_users id    DEFAULT     �   ALTER TABLE ONLY "spree_promotion_rule_users" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_promotion_rule_users_id_seq"'::"regclass");
 R   ALTER TABLE "public"."spree_promotion_rule_users" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    261    262    262            �           2604    4821015    spree_promotion_rules id    DEFAULT     �   ALTER TABLE ONLY "spree_promotion_rules" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_promotion_rules_id_seq"'::"regclass");
 M   ALTER TABLE "public"."spree_promotion_rules" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    263    264    264            �           2604    4821029    spree_promotions id    DEFAULT     v   ALTER TABLE ONLY "spree_promotions" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_promotions_id_seq"'::"regclass");
 H   ALTER TABLE "public"."spree_promotions" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    265    266    266            �           2604    4821048    spree_properties id    DEFAULT     v   ALTER TABLE ONLY "spree_properties" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_properties_id_seq"'::"regclass");
 H   ALTER TABLE "public"."spree_properties" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    267    268    268            �           2604    4821060    spree_property_prototypes id    DEFAULT     �   ALTER TABLE ONLY "spree_property_prototypes" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_property_prototypes_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."spree_property_prototypes" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    269    270    270            �           2604    4821069    spree_prototype_taxons id    DEFAULT     �   ALTER TABLE ONLY "spree_prototype_taxons" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_prototype_taxons_id_seq"'::"regclass");
 N   ALTER TABLE "public"."spree_prototype_taxons" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    272    271    272            �           2604    4821079    spree_prototypes id    DEFAULT     v   ALTER TABLE ONLY "spree_prototypes" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_prototypes_id_seq"'::"regclass");
 H   ALTER TABLE "public"."spree_prototypes" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    273    274    274            �           2604    4821090    spree_refund_reasons id    DEFAULT     ~   ALTER TABLE ONLY "spree_refund_reasons" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_refund_reasons_id_seq"'::"regclass");
 L   ALTER TABLE "public"."spree_refund_reasons" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    275    276    276            �           2604    4821103    spree_refunds id    DEFAULT     p   ALTER TABLE ONLY "spree_refunds" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_refunds_id_seq"'::"regclass");
 E   ALTER TABLE "public"."spree_refunds" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    277    278    278            �           2604    4821116    spree_reimbursement_credits id    DEFAULT     �   ALTER TABLE ONLY "spree_reimbursement_credits" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_reimbursement_credits_id_seq"'::"regclass");
 S   ALTER TABLE "public"."spree_reimbursement_credits" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    280    279    280            �           2604    4821128    spree_reimbursement_types id    DEFAULT     �   ALTER TABLE ONLY "spree_reimbursement_types" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_reimbursement_types_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."spree_reimbursement_types" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    282    281    282            �           2604    4821142    spree_reimbursements id    DEFAULT     ~   ALTER TABLE ONLY "spree_reimbursements" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_reimbursements_id_seq"'::"regclass");
 L   ALTER TABLE "public"."spree_reimbursements" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    284    283    284            �           2604    4821155 %   spree_return_authorization_reasons id    DEFAULT     �   ALTER TABLE ONLY "spree_return_authorization_reasons" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_return_authorization_reasons_id_seq"'::"regclass");
 Z   ALTER TABLE "public"."spree_return_authorization_reasons" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    286    285    286            �           2604    4821168    spree_return_authorizations id    DEFAULT     �   ALTER TABLE ONLY "spree_return_authorizations" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_return_authorizations_id_seq"'::"regclass");
 S   ALTER TABLE "public"."spree_return_authorizations" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    287    288    288            �           2604    4821180    spree_return_items id    DEFAULT     z   ALTER TABLE ONLY "spree_return_items" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_return_items_id_seq"'::"regclass");
 J   ALTER TABLE "public"."spree_return_items" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    289    290    290            �           2604    4821197    spree_roles id    DEFAULT     l   ALTER TABLE ONLY "spree_roles" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_roles_id_seq"'::"regclass");
 C   ALTER TABLE "public"."spree_roles" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    291    292    292                        2604    4821218    spree_roles_users id    DEFAULT     x   ALTER TABLE ONLY "spree_roles_users" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_roles_users_id_seq"'::"regclass");
 I   ALTER TABLE "public"."spree_roles_users" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    295    294    295                       2604    4821228    spree_shipments id    DEFAULT     t   ALTER TABLE ONLY "spree_shipments" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_shipments_id_seq"'::"regclass");
 G   ALTER TABLE "public"."spree_shipments" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    297    296    297            
           2604    4821252    spree_shipping_categories id    DEFAULT     �   ALTER TABLE ONLY "spree_shipping_categories" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_shipping_categories_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."spree_shipping_categories" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    299    298    299                       2604    4821264 #   spree_shipping_method_categories id    DEFAULT     �   ALTER TABLE ONLY "spree_shipping_method_categories" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_shipping_method_categories_id_seq"'::"regclass");
 X   ALTER TABLE "public"."spree_shipping_method_categories" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    300    301    301                       2604    4821274    spree_shipping_method_zones id    DEFAULT     �   ALTER TABLE ONLY "spree_shipping_method_zones" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_shipping_method_zones_id_seq"'::"regclass");
 S   ALTER TABLE "public"."spree_shipping_method_zones" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    302    303    303                       2604    4821282    spree_shipping_methods id    DEFAULT     �   ALTER TABLE ONLY "spree_shipping_methods" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_shipping_methods_id_seq"'::"regclass");
 N   ALTER TABLE "public"."spree_shipping_methods" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    305    304    305                       2604    4821296    spree_shipping_rates id    DEFAULT     ~   ALTER TABLE ONLY "spree_shipping_rates" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_shipping_rates_id_seq"'::"regclass");
 L   ALTER TABLE "public"."spree_shipping_rates" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    306    307    307                       2604    4821309    spree_state_changes id    DEFAULT     |   ALTER TABLE ONLY "spree_state_changes" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_state_changes_id_seq"'::"regclass");
 K   ALTER TABLE "public"."spree_state_changes" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    309    308    309                       2604    4821321    spree_states id    DEFAULT     n   ALTER TABLE ONLY "spree_states" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_states_id_seq"'::"regclass");
 D   ALTER TABLE "public"."spree_states" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    310    311    311                       2604    4821333    spree_stock_items id    DEFAULT     x   ALTER TABLE ONLY "spree_stock_items" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_stock_items_id_seq"'::"regclass");
 I   ALTER TABLE "public"."spree_stock_items" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    313    312    313                       2604    4821347    spree_stock_locations id    DEFAULT     �   ALTER TABLE ONLY "spree_stock_locations" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_stock_locations_id_seq"'::"regclass");
 M   ALTER TABLE "public"."spree_stock_locations" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    315    314    315                       2604    4821367    spree_stock_movements id    DEFAULT     �   ALTER TABLE ONLY "spree_stock_movements" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_stock_movements_id_seq"'::"regclass");
 M   ALTER TABLE "public"."spree_stock_movements" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    317    316    317                       2604    4821380    spree_stock_transfers id    DEFAULT     �   ALTER TABLE ONLY "spree_stock_transfers" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_stock_transfers_id_seq"'::"regclass");
 M   ALTER TABLE "public"."spree_stock_transfers" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    318    319    319                       2604    4821394     spree_store_credit_categories id    DEFAULT     �   ALTER TABLE ONLY "spree_store_credit_categories" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_store_credit_categories_id_seq"'::"regclass");
 U   ALTER TABLE "public"."spree_store_credit_categories" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    321    320    321                        2604    4821405    spree_store_credit_events id    DEFAULT     �   ALTER TABLE ONLY "spree_store_credit_events" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_store_credit_events_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."spree_store_credit_events" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    323    322    323            "           2604    4821419    spree_store_credit_types id    DEFAULT     �   ALTER TABLE ONLY "spree_store_credit_types" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_store_credit_types_id_seq"'::"regclass");
 P   ALTER TABLE "public"."spree_store_credit_types" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    324    325    325            #           2604    4821431    spree_store_credits id    DEFAULT     |   ALTER TABLE ONLY "spree_store_credits" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_store_credits_id_seq"'::"regclass");
 K   ALTER TABLE "public"."spree_store_credits" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    326    327    327            '           2604    4821449    spree_stores id    DEFAULT     n   ALTER TABLE ONLY "spree_stores" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_stores_id_seq"'::"regclass");
 D   ALTER TABLE "public"."spree_stores" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    328    329    329            )           2604    4821464    spree_taggings id    DEFAULT     r   ALTER TABLE ONLY "spree_taggings" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_taggings_id_seq"'::"regclass");
 F   ALTER TABLE "public"."spree_taggings" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    331    330    331            *           2604    4821483    spree_tags id    DEFAULT     j   ALTER TABLE ONLY "spree_tags" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_tags_id_seq"'::"regclass");
 B   ALTER TABLE "public"."spree_tags" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    332    333    333            ,           2604    4821496    spree_tax_categories id    DEFAULT     ~   ALTER TABLE ONLY "spree_tax_categories" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_tax_categories_id_seq"'::"regclass");
 L   ALTER TABLE "public"."spree_tax_categories" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    335    334    335            .           2604    4821510    spree_tax_rates id    DEFAULT     t   ALTER TABLE ONLY "spree_tax_rates" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_tax_rates_id_seq"'::"regclass");
 G   ALTER TABLE "public"."spree_tax_rates" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    337    336    337            1           2604    4821528    spree_taxonomies id    DEFAULT     v   ALTER TABLE ONLY "spree_taxonomies" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_taxonomies_id_seq"'::"regclass");
 H   ALTER TABLE "public"."spree_taxonomies" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    338    339    339            3           2604    4821541    spree_taxons id    DEFAULT     n   ALTER TABLE ONLY "spree_taxons" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_taxons_id_seq"'::"regclass");
 D   ALTER TABLE "public"."spree_taxons" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    340    341    341            5           2604    4821560    spree_themes id    DEFAULT     n   ALTER TABLE ONLY "spree_themes" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_themes_id_seq"'::"regclass");
 D   ALTER TABLE "public"."spree_themes" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    342    343    343            6           2604    4821571    spree_themes_templates id    DEFAULT     �   ALTER TABLE ONLY "spree_themes_templates" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_themes_templates_id_seq"'::"regclass");
 N   ALTER TABLE "public"."spree_themes_templates" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    345    344    345            8           2604    4821584    spree_trackers id    DEFAULT     r   ALTER TABLE ONLY "spree_trackers" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_trackers_id_seq"'::"regclass");
 F   ALTER TABLE "public"."spree_trackers" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    346    347    347            :           2604    4821597    spree_users id    DEFAULT     l   ALTER TABLE ONLY "spree_users" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_users_id_seq"'::"regclass");
 C   ALTER TABLE "public"."spree_users" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    349    348    349            =           2604    4821615    spree_variants id    DEFAULT     r   ALTER TABLE ONLY "spree_variants" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_variants_id_seq"'::"regclass");
 F   ALTER TABLE "public"."spree_variants" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    351    350    351            B           2604    4821638    spree_zone_members id    DEFAULT     z   ALTER TABLE ONLY "spree_zone_members" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_zone_members_id_seq"'::"regclass");
 J   ALTER TABLE "public"."spree_zone_members" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    353    352    353            C           2604    4821651    spree_zones id    DEFAULT     l   ALTER TABLE ONLY "spree_zones" ALTER COLUMN "id" SET DEFAULT "nextval"('"spree_zones_id_seq"'::"regclass");
 C   ALTER TABLE "public"."spree_zones" ALTER COLUMN "id" DROP DEFAULT;
       public       nqokmikthnyfkp    false    355    354    355            5          0    4818579    ar_internal_metadata 
   TABLE DATA               U   COPY "ar_internal_metadata" ("key", "value", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    186            7          0    4820484    connections 
   TABLE DATA                 COPY "connections" ("id", "Sequence_Number", "Client_Key", "Client_Secret", "Portal_Id", "Portal_Password", "Active_Field", "User_Field_String", "User_Field_Integer", "User_Field_Datetime", "Transaction_Originator", "Transaction_Datetime", "Transaction_IP", "User_Updated", "Date_Updated", "IP_Updated", "created_at", "updated_at", "Ecomm_instance_name", "Access_Token") FROM stdin;
    public       nqokmikthnyfkp    false    188            9           0    0    connections_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"connections_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    187            9          0    4820495    friendly_id_slugs 
   TABLE DATA               {   COPY "friendly_id_slugs" ("id", "slug", "sluggable_id", "sluggable_type", "scope", "created_at", "deleted_at") FROM stdin;
    public       nqokmikthnyfkp    false    190            :           0    0    friendly_id_slugs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"friendly_id_slugs_id_seq"', 51, true);
            public       nqokmikthnyfkp    false    189            4          0    4818571    schema_migrations 
   TABLE DATA               1   COPY "schema_migrations" ("version") FROM stdin;
    public       nqokmikthnyfkp    false    185            ;          0    4820511    spree_addresses 
   TABLE DATA               �   COPY "spree_addresses" ("id", "firstname", "lastname", "address1", "address2", "city", "zipcode", "phone", "state_name", "alternative_phone", "company", "state_id", "country_id", "created_at", "updated_at", "braintree_id") FROM stdin;
    public       nqokmikthnyfkp    false    192            ;           0    0    spree_addresses_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"spree_addresses_id_seq"', 12, true);
            public       nqokmikthnyfkp    false    191            =          0    4820526    spree_adjustments 
   TABLE DATA               �   COPY "spree_adjustments" ("id", "source_type", "source_id", "adjustable_type", "adjustable_id", "amount", "label", "mandatory", "eligible", "created_at", "updated_at", "state", "order_id", "included") FROM stdin;
    public       nqokmikthnyfkp    false    194            <           0    0    spree_adjustments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"spree_adjustments_id_seq"', 14, true);
            public       nqokmikthnyfkp    false    193            ?          0    4820543    spree_assets 
   TABLE DATA                 COPY "spree_assets" ("id", "viewable_type", "viewable_id", "attachment_width", "attachment_height", "attachment_file_size", "position", "attachment_content_type", "attachment_file_name", "type", "attachment_updated_at", "alt", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    196            =           0    0    spree_assets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"spree_assets_id_seq"', 47, true);
            public       nqokmikthnyfkp    false    195            A          0    4820557    spree_braintree_checkouts 
   TABLE DATA               �   COPY "spree_braintree_checkouts" ("id", "transaction_id", "state", "created_at", "updated_at", "paypal_email", "advanced_fraud_data", "risk_id", "risk_decision", "braintree_last_digits", "braintree_card_type", "admin_payment") FROM stdin;
    public       nqokmikthnyfkp    false    198            >           0    0     spree_braintree_checkouts_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"spree_braintree_checkouts_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    197            C          0    4820570    spree_calculators 
   TABLE DATA               �   COPY "spree_calculators" ("id", "type", "calculable_type", "calculable_id", "created_at", "updated_at", "preferences", "deleted_at") FROM stdin;
    public       nqokmikthnyfkp    false    200            ?           0    0    spree_calculators_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"spree_calculators_id_seq"', 8, true);
            public       nqokmikthnyfkp    false    199            E          0    4820584    spree_countries 
   TABLE DATA               �   COPY "spree_countries" ("id", "iso_name", "iso", "iso3", "name", "numcode", "states_required", "updated_at", "zipcode_required") FROM stdin;
    public       nqokmikthnyfkp    false    202            @           0    0    spree_countries_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"spree_countries_id_seq"', 248, true);
            public       nqokmikthnyfkp    false    201            G          0    4820597    spree_credit_cards 
   TABLE DATA               �   COPY "spree_credit_cards" ("id", "month", "year", "cc_type", "last_digits", "address_id", "gateway_customer_profile_id", "gateway_payment_profile_id", "created_at", "updated_at", "name", "user_id", "payment_method_id", "default") FROM stdin;
    public       nqokmikthnyfkp    false    204            A           0    0    spree_credit_cards_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"spree_credit_cards_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    203            I          0    4820612    spree_customer_returns 
   TABLE DATA               l   COPY "spree_customer_returns" ("id", "number", "stock_location_id", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    206            B           0    0    spree_customer_returns_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"spree_customer_returns_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    205            K          0    4820623    spree_delivery_slots 
   TABLE DATA               �   COPY "spree_delivery_slots" ("id", "shipping_method_id", "start_time", "end_time", "deleted_at", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    208            C           0    0    spree_delivery_slots_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"spree_delivery_slots_id_seq"', 8, true);
            public       nqokmikthnyfkp    false    207            M          0    4820636    spree_gateways 
   TABLE DATA               �   COPY "spree_gateways" ("id", "type", "name", "description", "active", "environment", "server", "test_mode", "created_at", "updated_at", "preferences") FROM stdin;
    public       nqokmikthnyfkp    false    210            D           0    0    spree_gateways_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"spree_gateways_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    209            O          0    4820653    spree_inventory_units 
   TABLE DATA               �   COPY "spree_inventory_units" ("id", "state", "variant_id", "order_id", "shipment_id", "created_at", "updated_at", "pending", "line_item_id") FROM stdin;
    public       nqokmikthnyfkp    false    212            E           0    0    spree_inventory_units_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"spree_inventory_units_id_seq"', 5, true);
            public       nqokmikthnyfkp    false    211            Q          0    4820669    spree_line_items 
   TABLE DATA               B  COPY "spree_line_items" ("id", "variant_id", "order_id", "quantity", "price", "created_at", "updated_at", "currency", "cost_price", "tax_category_id", "adjustment_total", "additional_tax_total", "promo_total", "included_tax_total", "pre_tax_amount", "taxable_adjustment_total", "non_taxable_adjustment_total") FROM stdin;
    public       nqokmikthnyfkp    false    214            F           0    0    spree_line_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"spree_line_items_id_seq"', 6, true);
            public       nqokmikthnyfkp    false    213            S          0    4820690    spree_log_entries 
   TABLE DATA               o   COPY "spree_log_entries" ("id", "source_type", "source_id", "details", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    216            G           0    0    spree_log_entries_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"spree_log_entries_id_seq"', 2, true);
            public       nqokmikthnyfkp    false    215            U          0    4820702    spree_option_type_prototypes 
   TABLE DATA               Y   COPY "spree_option_type_prototypes" ("id", "prototype_id", "option_type_id") FROM stdin;
    public       nqokmikthnyfkp    false    218            H           0    0 #   spree_option_type_prototypes_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"spree_option_type_prototypes_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    217            W          0    4820712    spree_option_types 
   TABLE DATA               m   COPY "spree_option_types" ("id", "name", "presentation", "position", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    220            I           0    0    spree_option_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"spree_option_types_id_seq"', 2, true);
            public       nqokmikthnyfkp    false    219            Y          0    4820723    spree_option_value_variants 
   TABLE DATA               W   COPY "spree_option_value_variants" ("id", "variant_id", "option_value_id") FROM stdin;
    public       nqokmikthnyfkp    false    222            J           0    0 "   spree_option_value_variants_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"spree_option_value_variants_id_seq"', 22, true);
            public       nqokmikthnyfkp    false    221            [          0    4820733    spree_option_values 
   TABLE DATA               �   COPY "spree_option_values" ("id", "position", "name", "presentation", "option_type_id", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    224            K           0    0    spree_option_values_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"spree_option_values_id_seq"', 8, true);
            public       nqokmikthnyfkp    false    223            ]          0    4820747    spree_order_promotions 
   TABLE DATA               M   COPY "spree_order_promotions" ("id", "order_id", "promotion_id") FROM stdin;
    public       nqokmikthnyfkp    false    226            L           0    0    spree_order_promotions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"spree_order_promotions_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    225            _          0    4820757    spree_orders 
   TABLE DATA               �  COPY "spree_orders" ("id", "number", "item_total", "total", "state", "adjustment_total", "user_id", "completed_at", "bill_address_id", "ship_address_id", "payment_total", "shipment_state", "payment_state", "email", "special_instructions", "created_at", "updated_at", "currency", "last_ip_address", "created_by_id", "shipment_total", "additional_tax_total", "promo_total", "channel", "included_tax_total", "item_count", "approver_id", "approved_at", "confirmation_delivered", "considered_risky", "guest_token", "canceled_at", "canceler_id", "store_id", "state_lock_version", "taxable_adjustment_total", "non_taxable_adjustment_total") FROM stdin;
    public       nqokmikthnyfkp    false    228            M           0    0    spree_orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"spree_orders_id_seq"', 6, true);
            public       nqokmikthnyfkp    false    227            a          0    4820795    spree_payment_capture_events 
   TABLE DATA               k   COPY "spree_payment_capture_events" ("id", "amount", "payment_id", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    230            N           0    0 #   spree_payment_capture_events_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"spree_payment_capture_events_id_seq"', 2, true);
            public       nqokmikthnyfkp    false    229            c          0    4820805    spree_payment_methods 
   TABLE DATA               �   COPY "spree_payment_methods" ("id", "type", "name", "description", "active", "deleted_at", "created_at", "updated_at", "display_on", "auto_capture", "preferences", "position") FROM stdin;
    public       nqokmikthnyfkp    false    232            O           0    0    spree_payment_methods_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"spree_payment_methods_id_seq"', 2, true);
            public       nqokmikthnyfkp    false    231            e          0    4820820    spree_payments 
   TABLE DATA                 COPY "spree_payments" ("id", "amount", "order_id", "source_type", "source_id", "payment_method_id", "state", "response_code", "avs_response", "created_at", "updated_at", "number", "cvv_response_code", "cvv_response_message", "braintree_token", "braintree_nonce") FROM stdin;
    public       nqokmikthnyfkp    false    234            P           0    0    spree_payments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"spree_payments_id_seq"', 5, true);
            public       nqokmikthnyfkp    false    233            g          0    4820836    spree_permissions 
   TABLE DATA               s   COPY "spree_permissions" ("id", "title", "priority", "visible", "boolean", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    236            Q           0    0    spree_permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"spree_permissions_id_seq"', 29, true);
            public       nqokmikthnyfkp    false    235            i          0    4820851    spree_preferences 
   TABLE DATA               X   COPY "spree_preferences" ("id", "value", "key", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    238            R           0    0    spree_preferences_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"spree_preferences_id_seq"', 4, true);
            public       nqokmikthnyfkp    false    237            k          0    4820863    spree_prices 
   TABLE DATA               Y   COPY "spree_prices" ("id", "variant_id", "amount", "currency", "deleted_at") FROM stdin;
    public       nqokmikthnyfkp    false    240            S           0    0    spree_prices_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"spree_prices_id_seq"', 42, true);
            public       nqokmikthnyfkp    false    239            m          0    4820877    spree_product_option_types 
   TABLE DATA               }   COPY "spree_product_option_types" ("id", "position", "product_id", "option_type_id", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    242            T           0    0 !   spree_product_option_types_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"spree_product_option_types_id_seq"', 4, true);
            public       nqokmikthnyfkp    false    241            o          0    4820888    spree_product_packages 
   TABLE DATA               �   COPY "spree_product_packages" ("id", "product_id", "length", "width", "height", "weight", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    244            U           0    0    spree_product_packages_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"spree_product_packages_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    243            q          0    4820900    spree_product_promotion_rules 
   TABLE DATA               [   COPY "spree_product_promotion_rules" ("id", "product_id", "promotion_rule_id") FROM stdin;
    public       nqokmikthnyfkp    false    246            V           0    0 $   spree_product_promotion_rules_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"spree_product_promotion_rules_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    245            s          0    4820910    spree_product_properties 
   TABLE DATA               �   COPY "spree_product_properties" ("id", "value", "product_id", "property_id", "created_at", "updated_at", "position") FROM stdin;
    public       nqokmikthnyfkp    false    248            W           0    0    spree_product_properties_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"spree_product_properties_id_seq"', 67, true);
            public       nqokmikthnyfkp    false    247            u          0    4820925    spree_products 
   TABLE DATA                 COPY "spree_products" ("id", "name", "description", "available_on", "deleted_at", "slug", "meta_description", "meta_keywords", "tax_category_id", "shipping_category_id", "created_at", "updated_at", "promotionable", "meta_title", "discontinue_on") FROM stdin;
    public       nqokmikthnyfkp    false    250            X           0    0    spree_products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"spree_products_id_seq"', 16, true);
            public       nqokmikthnyfkp    false    249            w          0    4820945    spree_products_taxons 
   TABLE DATA               V   COPY "spree_products_taxons" ("id", "product_id", "taxon_id", "position") FROM stdin;
    public       nqokmikthnyfkp    false    252            Y           0    0    spree_products_taxons_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"spree_products_taxons_id_seq"', 64, true);
            public       nqokmikthnyfkp    false    251            y          0    4820956 !   spree_promotion_action_line_items 
   TABLE DATA               m   COPY "spree_promotion_action_line_items" ("id", "promotion_action_id", "variant_id", "quantity") FROM stdin;
    public       nqokmikthnyfkp    false    254            Z           0    0 (   spree_promotion_action_line_items_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"spree_promotion_action_line_items_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    253            {          0    4820967    spree_promotion_actions 
   TABLE DATA               d   COPY "spree_promotion_actions" ("id", "promotion_id", "position", "type", "deleted_at") FROM stdin;
    public       nqokmikthnyfkp    false    256            [           0    0    spree_promotion_actions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"spree_promotion_actions_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    255            }          0    4820981    spree_promotion_categories 
   TABLE DATA               a   COPY "spree_promotion_categories" ("id", "name", "created_at", "updated_at", "code") FROM stdin;
    public       nqokmikthnyfkp    false    258            \           0    0 !   spree_promotion_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"spree_promotion_categories_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    257                      0    4820992    spree_promotion_rule_taxons 
   TABLE DATA               W   COPY "spree_promotion_rule_taxons" ("id", "taxon_id", "promotion_rule_id") FROM stdin;
    public       nqokmikthnyfkp    false    260            ]           0    0 "   spree_promotion_rule_taxons_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"spree_promotion_rule_taxons_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    259            �          0    4821002    spree_promotion_rule_users 
   TABLE DATA               U   COPY "spree_promotion_rule_users" ("id", "user_id", "promotion_rule_id") FROM stdin;
    public       nqokmikthnyfkp    false    262            ^           0    0 !   spree_promotion_rule_users_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"spree_promotion_rule_users_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    261            �          0    4821012    spree_promotion_rules 
   TABLE DATA               �   COPY "spree_promotion_rules" ("id", "promotion_id", "user_id", "product_group_id", "type", "created_at", "updated_at", "code", "preferences") FROM stdin;
    public       nqokmikthnyfkp    false    264            _           0    0    spree_promotion_rules_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"spree_promotion_rules_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    263            �          0    4821026    spree_promotions 
   TABLE DATA               �   COPY "spree_promotions" ("id", "description", "expires_at", "starts_at", "name", "type", "usage_limit", "match_policy", "code", "advertise", "path", "created_at", "updated_at", "promotion_category_id") FROM stdin;
    public       nqokmikthnyfkp    false    266            `           0    0    spree_promotions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"spree_promotions_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    265            �          0    4821045    spree_properties 
   TABLE DATA               _   COPY "spree_properties" ("id", "name", "presentation", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    268            a           0    0    spree_properties_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"spree_properties_id_seq"', 11, true);
            public       nqokmikthnyfkp    false    267            �          0    4821057    spree_property_prototypes 
   TABLE DATA               S   COPY "spree_property_prototypes" ("id", "prototype_id", "property_id") FROM stdin;
    public       nqokmikthnyfkp    false    270            b           0    0     spree_property_prototypes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"spree_property_prototypes_id_seq"', 13, true);
            public       nqokmikthnyfkp    false    269            �          0    4821066    spree_prototype_taxons 
   TABLE DATA               M   COPY "spree_prototype_taxons" ("id", "taxon_id", "prototype_id") FROM stdin;
    public       nqokmikthnyfkp    false    272            c           0    0    spree_prototype_taxons_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"spree_prototype_taxons_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    271            �          0    4821076    spree_prototypes 
   TABLE DATA               O   COPY "spree_prototypes" ("id", "name", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    274            d           0    0    spree_prototypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"spree_prototypes_id_seq"', 3, true);
            public       nqokmikthnyfkp    false    273            �          0    4821087    spree_refund_reasons 
   TABLE DATA               h   COPY "spree_refund_reasons" ("id", "name", "active", "mutable", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    276            e           0    0    spree_refund_reasons_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"spree_refund_reasons_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    275            �          0    4821100    spree_refunds 
   TABLE DATA               �   COPY "spree_refunds" ("id", "payment_id", "amount", "transaction_id", "created_at", "updated_at", "refund_reason_id", "reimbursement_id") FROM stdin;
    public       nqokmikthnyfkp    false    278            f           0    0    spree_refunds_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"spree_refunds_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    277            �          0    4821113    spree_reimbursement_credits 
   TABLE DATA               x   COPY "spree_reimbursement_credits" ("id", "amount", "reimbursement_id", "creditable_id", "creditable_type") FROM stdin;
    public       nqokmikthnyfkp    false    280            g           0    0 "   spree_reimbursement_credits_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"spree_reimbursement_credits_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    279            �          0    4821125    spree_reimbursement_types 
   TABLE DATA               u   COPY "spree_reimbursement_types" ("id", "name", "active", "mutable", "created_at", "updated_at", "type") FROM stdin;
    public       nqokmikthnyfkp    false    282            h           0    0     spree_reimbursement_types_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"spree_reimbursement_types_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    281            �          0    4821139    spree_reimbursements 
   TABLE DATA               �   COPY "spree_reimbursements" ("id", "number", "reimbursement_status", "customer_return_id", "order_id", "total", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    284            i           0    0    spree_reimbursements_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"spree_reimbursements_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    283            �          0    4821152 "   spree_return_authorization_reasons 
   TABLE DATA               v   COPY "spree_return_authorization_reasons" ("id", "name", "active", "mutable", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    286            j           0    0 )   spree_return_authorization_reasons_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"spree_return_authorization_reasons_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    285            �          0    4821165    spree_return_authorizations 
   TABLE DATA               �   COPY "spree_return_authorizations" ("id", "number", "state", "order_id", "memo", "created_at", "updated_at", "stock_location_id", "return_authorization_reason_id") FROM stdin;
    public       nqokmikthnyfkp    false    288            k           0    0 "   spree_return_authorizations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"spree_return_authorizations_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    287            �          0    4821177    spree_return_items 
   TABLE DATA               �  COPY "spree_return_items" ("id", "return_authorization_id", "inventory_unit_id", "exchange_variant_id", "created_at", "updated_at", "pre_tax_amount", "included_tax_total", "additional_tax_total", "reception_status", "acceptance_status", "customer_return_id", "reimbursement_id", "exchange_inventory_unit_id", "acceptance_status_errors", "preferred_reimbursement_type_id", "override_reimbursement_type_id", "resellable") FROM stdin;
    public       nqokmikthnyfkp    false    290            l           0    0    spree_return_items_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"spree_return_items_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    289            �          0    4821194    spree_roles 
   TABLE DATA               H   COPY "spree_roles" ("id", "name", "editable", "is_default") FROM stdin;
    public       nqokmikthnyfkp    false    292            m           0    0    spree_roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"spree_roles_id_seq"', 9, true);
            public       nqokmikthnyfkp    false    291            �          0    4821208    spree_roles_permissions 
   TABLE DATA               H   COPY "spree_roles_permissions" ("role_id", "permission_id") FROM stdin;
    public       nqokmikthnyfkp    false    293            �          0    4821215    spree_roles_users 
   TABLE DATA               B   COPY "spree_roles_users" ("id", "role_id", "user_id") FROM stdin;
    public       nqokmikthnyfkp    false    295            n           0    0    spree_roles_users_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"spree_roles_users_id_seq"', 7, true);
            public       nqokmikthnyfkp    false    294            �          0    4821225    spree_shipments 
   TABLE DATA               ]  COPY "spree_shipments" ("id", "tracking", "number", "cost", "shipped_at", "order_id", "address_id", "state", "created_at", "updated_at", "stock_location_id", "adjustment_total", "additional_tax_total", "promo_total", "included_tax_total", "pre_tax_amount", "taxable_adjustment_total", "non_taxable_adjustment_total", "delivery_slot_id") FROM stdin;
    public       nqokmikthnyfkp    false    297            o           0    0    spree_shipments_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"spree_shipments_id_seq"', 5, true);
            public       nqokmikthnyfkp    false    296            �          0    4821249    spree_shipping_categories 
   TABLE DATA               X   COPY "spree_shipping_categories" ("id", "name", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    299            p           0    0     spree_shipping_categories_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"spree_shipping_categories_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    298            �          0    4821261     spree_shipping_method_categories 
   TABLE DATA               �   COPY "spree_shipping_method_categories" ("id", "shipping_method_id", "shipping_category_id", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    301            q           0    0 '   spree_shipping_method_categories_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"spree_shipping_method_categories_id_seq"', 6, true);
            public       nqokmikthnyfkp    false    300            �          0    4821271    spree_shipping_method_zones 
   TABLE DATA               W   COPY "spree_shipping_method_zones" ("id", "shipping_method_id", "zone_id") FROM stdin;
    public       nqokmikthnyfkp    false    303            r           0    0 "   spree_shipping_method_zones_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"spree_shipping_method_zones_id_seq"', 6, true);
            public       nqokmikthnyfkp    false    302            �          0    4821279    spree_shipping_methods 
   TABLE DATA               �   COPY "spree_shipping_methods" ("id", "name", "display_on", "deleted_at", "created_at", "updated_at", "tracking_url", "admin_name", "tax_category_id", "code", "is_delivery_slots_enabled") FROM stdin;
    public       nqokmikthnyfkp    false    305            s           0    0    spree_shipping_methods_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"spree_shipping_methods_id_seq"', 6, true);
            public       nqokmikthnyfkp    false    304            �          0    4821293    spree_shipping_rates 
   TABLE DATA               �   COPY "spree_shipping_rates" ("id", "shipment_id", "shipping_method_id", "selected", "cost", "created_at", "updated_at", "tax_rate_id") FROM stdin;
    public       nqokmikthnyfkp    false    307            t           0    0    spree_shipping_rates_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"spree_shipping_rates_id_seq"', 78, true);
            public       nqokmikthnyfkp    false    306            �          0    4821306    spree_state_changes 
   TABLE DATA               �   COPY "spree_state_changes" ("id", "name", "previous_state", "stateful_id", "user_id", "stateful_type", "next_state", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    309            u           0    0    spree_state_changes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"spree_state_changes_id_seq"', 36, true);
            public       nqokmikthnyfkp    false    308            �          0    4821318    spree_states 
   TABLE DATA               S   COPY "spree_states" ("id", "name", "abbr", "country_id", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    311            v           0    0    spree_states_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"spree_states_id_seq"', 3776, true);
            public       nqokmikthnyfkp    false    310            �          0    4821330    spree_stock_items 
   TABLE DATA               �   COPY "spree_stock_items" ("id", "stock_location_id", "variant_id", "count_on_hand", "created_at", "updated_at", "backorderable", "deleted_at") FROM stdin;
    public       nqokmikthnyfkp    false    313            w           0    0    spree_stock_items_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"spree_stock_items_id_seq"', 26, true);
            public       nqokmikthnyfkp    false    312            �          0    4821344    spree_stock_locations 
   TABLE DATA                 COPY "spree_stock_locations" ("id", "name", "created_at", "updated_at", "default", "address1", "address2", "city", "state_id", "state_name", "country_id", "zipcode", "phone", "active", "backorderable_default", "propagate_all_variants", "admin_name") FROM stdin;
    public       nqokmikthnyfkp    false    315            x           0    0    spree_stock_locations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"spree_stock_locations_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    314            �          0    4821364    spree_stock_movements 
   TABLE DATA               �   COPY "spree_stock_movements" ("id", "stock_item_id", "quantity", "action", "created_at", "updated_at", "originator_type", "originator_id") FROM stdin;
    public       nqokmikthnyfkp    false    317            y           0    0    spree_stock_movements_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"spree_stock_movements_id_seq"', 30, true);
            public       nqokmikthnyfkp    false    316            �          0    4821377    spree_stock_transfers 
   TABLE DATA               �   COPY "spree_stock_transfers" ("id", "type", "reference", "source_location_id", "destination_location_id", "created_at", "updated_at", "number") FROM stdin;
    public       nqokmikthnyfkp    false    319            z           0    0    spree_stock_transfers_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"spree_stock_transfers_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    318            �          0    4821391    spree_store_credit_categories 
   TABLE DATA               \   COPY "spree_store_credit_categories" ("id", "name", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    321            {           0    0 $   spree_store_credit_categories_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"spree_store_credit_categories_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    320            �          0    4821402    spree_store_credit_events 
   TABLE DATA               �   COPY "spree_store_credit_events" ("id", "store_credit_id", "action", "amount", "authorization_code", "user_total_amount", "originator_id", "originator_type", "deleted_at", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    323            |           0    0     spree_store_credit_events_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"spree_store_credit_events_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    322            �          0    4821416    spree_store_credit_types 
   TABLE DATA               c   COPY "spree_store_credit_types" ("id", "name", "priority", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    325            }           0    0    spree_store_credit_types_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"spree_store_credit_types_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    324            �          0    4821428    spree_store_credits 
   TABLE DATA               �   COPY "spree_store_credits" ("id", "user_id", "category_id", "created_by_id", "amount", "amount_used", "memo", "deleted_at", "currency", "amount_authorized", "originator_id", "originator_type", "type_id", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    327            ~           0    0    spree_store_credits_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"spree_store_credits_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    326            �          0    4821446    spree_stores 
   TABLE DATA               �   COPY "spree_stores" ("id", "name", "url", "meta_description", "meta_keywords", "seo_title", "mail_from_address", "default_currency", "code", "default", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    329                       0    0    spree_stores_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"spree_stores_id_seq"', 1, true);
            public       nqokmikthnyfkp    false    328            �          0    4821461    spree_taggings 
   TABLE DATA               �   COPY "spree_taggings" ("id", "tag_id", "taggable_type", "taggable_id", "tagger_type", "tagger_id", "context", "created_at") FROM stdin;
    public       nqokmikthnyfkp    false    331            �           0    0    spree_taggings_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"spree_taggings_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    330            �          0    4821480 
   spree_tags 
   TABLE DATA               ?   COPY "spree_tags" ("id", "name", "taggings_count") FROM stdin;
    public       nqokmikthnyfkp    false    333            �           0    0    spree_tags_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"spree_tags_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    332            �          0    4821493    spree_tax_categories 
   TABLE DATA               �   COPY "spree_tax_categories" ("id", "name", "description", "is_default", "deleted_at", "created_at", "updated_at", "tax_code") FROM stdin;
    public       nqokmikthnyfkp    false    335            �           0    0    spree_tax_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"spree_tax_categories_id_seq"', 3, true);
            public       nqokmikthnyfkp    false    334            �          0    4821507    spree_tax_rates 
   TABLE DATA               �   COPY "spree_tax_rates" ("id", "amount", "zone_id", "tax_category_id", "included_in_price", "created_at", "updated_at", "name", "show_rate_in_label", "deleted_at") FROM stdin;
    public       nqokmikthnyfkp    false    337            �           0    0    spree_tax_rates_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"spree_tax_rates_id_seq"', 2, true);
            public       nqokmikthnyfkp    false    336            �          0    4821525    spree_taxonomies 
   TABLE DATA               [   COPY "spree_taxonomies" ("id", "name", "created_at", "updated_at", "position") FROM stdin;
    public       nqokmikthnyfkp    false    339            �           0    0    spree_taxonomies_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"spree_taxonomies_id_seq"', 2, true);
            public       nqokmikthnyfkp    false    338            �          0    4821538    spree_taxons 
   TABLE DATA               %  COPY "spree_taxons" ("id", "parent_id", "position", "name", "permalink", "taxonomy_id", "lft", "rgt", "icon_file_name", "icon_content_type", "icon_file_size", "icon_updated_at", "description", "created_at", "updated_at", "meta_title", "meta_description", "meta_keywords", "depth") FROM stdin;
    public       nqokmikthnyfkp    false    341            �           0    0    spree_taxons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"spree_taxons_id_seq"', 20, true);
            public       nqokmikthnyfkp    false    340            �          0    4821557    spree_themes 
   TABLE DATA               �   COPY "spree_themes" ("id", "name", "state", "template_file_file_name", "template_file_content_type", "template_file_file_size", "template_file_updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    343            �           0    0    spree_themes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"spree_themes_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    342            �          0    4821568    spree_themes_templates 
   TABLE DATA               �   COPY "spree_themes_templates" ("id", "name", "body", "path", "format", "locale", "handler", "partial", "theme_id", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    345            �           0    0    spree_themes_templates_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"spree_themes_templates_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    344            �          0    4821581    spree_trackers 
   TABLE DATA               _   COPY "spree_trackers" ("id", "analytics_id", "active", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    347            �           0    0    spree_trackers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"spree_trackers_id_seq"', 1, false);
            public       nqokmikthnyfkp    false    346            �          0    4821594    spree_users 
   TABLE DATA               @  COPY "spree_users" ("id", "encrypted_password", "password_salt", "email", "remember_token", "persistence_token", "reset_password_token", "perishable_token", "sign_in_count", "failed_attempts", "last_request_at", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "login", "ship_address_id", "bill_address_id", "authentication_token", "unlock_token", "locked_at", "reset_password_sent_at", "created_at", "updated_at", "spree_api_key", "remember_created_at", "deleted_at", "confirmation_token", "confirmed_at", "confirmation_sent_at") FROM stdin;
    public       nqokmikthnyfkp    false    349            �           0    0    spree_users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"spree_users_id_seq"', 6, true);
            public       nqokmikthnyfkp    false    348            �          0    4821612    spree_variants 
   TABLE DATA               �   COPY "spree_variants" ("id", "sku", "weight", "height", "width", "depth", "deleted_at", "is_master", "product_id", "cost_price", "position", "cost_currency", "track_inventory", "tax_category_id", "updated_at", "discontinue_on", "created_at") FROM stdin;
    public       nqokmikthnyfkp    false    351            �           0    0    spree_variants_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"spree_variants_id_seq"', 26, true);
            public       nqokmikthnyfkp    false    350            �          0    4821635    spree_zone_members 
   TABLE DATA               t   COPY "spree_zone_members" ("id", "zoneable_type", "zoneable_id", "zone_id", "created_at", "updated_at") FROM stdin;
    public       nqokmikthnyfkp    false    353            �           0    0    spree_zone_members_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"spree_zone_members_id_seq"', 32, true);
            public       nqokmikthnyfkp    false    352            �          0    4821648    spree_zones 
   TABLE DATA               �   COPY "spree_zones" ("id", "name", "description", "default_tax", "zone_members_count", "created_at", "updated_at", "kind") FROM stdin;
    public       nqokmikthnyfkp    false    355            �           0    0    spree_zones_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"spree_zones_id_seq"', 3, true);
            public       nqokmikthnyfkp    false    354            I           2606    4818586 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY "ar_internal_metadata"
    ADD CONSTRAINT "ar_internal_metadata_pkey" PRIMARY KEY ("key");
 ^   ALTER TABLE ONLY "public"."ar_internal_metadata" DROP CONSTRAINT "ar_internal_metadata_pkey";
       public         nqokmikthnyfkp    false    186    186            K           2606    4820492    connections connections_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "connections"
    ADD CONSTRAINT "connections_pkey" PRIMARY KEY ("id");
 L   ALTER TABLE ONLY "public"."connections" DROP CONSTRAINT "connections_pkey";
       public         nqokmikthnyfkp    false    188    188            M           2606    4820503 (   friendly_id_slugs friendly_id_slugs_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "friendly_id_slugs"
    ADD CONSTRAINT "friendly_id_slugs_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."friendly_id_slugs" DROP CONSTRAINT "friendly_id_slugs_pkey";
       public         nqokmikthnyfkp    false    190    190            G           2606    4818578 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY "schema_migrations"
    ADD CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version");
 X   ALTER TABLE ONLY "public"."schema_migrations" DROP CONSTRAINT "schema_migrations_pkey";
       public         nqokmikthnyfkp    false    185    185            X           2606    4820519 $   spree_addresses spree_addresses_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "spree_addresses"
    ADD CONSTRAINT "spree_addresses_pkey" PRIMARY KEY ("id");
 T   ALTER TABLE ONLY "public"."spree_addresses" DROP CONSTRAINT "spree_addresses_pkey";
       public         nqokmikthnyfkp    false    192    192            ^           2606    4820536 (   spree_adjustments spree_adjustments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "spree_adjustments"
    ADD CONSTRAINT "spree_adjustments_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."spree_adjustments" DROP CONSTRAINT "spree_adjustments_pkey";
       public         nqokmikthnyfkp    false    194    194            c           2606    4820551    spree_assets spree_assets_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "spree_assets"
    ADD CONSTRAINT "spree_assets_pkey" PRIMARY KEY ("id");
 N   ALTER TABLE ONLY "public"."spree_assets" DROP CONSTRAINT "spree_assets_pkey";
       public         nqokmikthnyfkp    false    196    196            g           2606    4820565 8   spree_braintree_checkouts spree_braintree_checkouts_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "spree_braintree_checkouts"
    ADD CONSTRAINT "spree_braintree_checkouts_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."spree_braintree_checkouts" DROP CONSTRAINT "spree_braintree_checkouts_pkey";
       public         nqokmikthnyfkp    false    198    198            l           2606    4820578 (   spree_calculators spree_calculators_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "spree_calculators"
    ADD CONSTRAINT "spree_calculators_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."spree_calculators" DROP CONSTRAINT "spree_calculators_pkey";
       public         nqokmikthnyfkp    false    200    200            n           2606    4820594 $   spree_countries spree_countries_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "spree_countries"
    ADD CONSTRAINT "spree_countries_pkey" PRIMARY KEY ("id");
 T   ALTER TABLE ONLY "public"."spree_countries" DROP CONSTRAINT "spree_countries_pkey";
       public         nqokmikthnyfkp    false    202    202            s           2606    4820606 *   spree_credit_cards spree_credit_cards_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "spree_credit_cards"
    ADD CONSTRAINT "spree_credit_cards_pkey" PRIMARY KEY ("id");
 Z   ALTER TABLE ONLY "public"."spree_credit_cards" DROP CONSTRAINT "spree_credit_cards_pkey";
       public         nqokmikthnyfkp    false    204    204            u           2606    4820620 2   spree_customer_returns spree_customer_returns_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "spree_customer_returns"
    ADD CONSTRAINT "spree_customer_returns_pkey" PRIMARY KEY ("id");
 b   ALTER TABLE ONLY "public"."spree_customer_returns" DROP CONSTRAINT "spree_customer_returns_pkey";
       public         nqokmikthnyfkp    false    206    206            y           2606    4820631 .   spree_delivery_slots spree_delivery_slots_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "spree_delivery_slots"
    ADD CONSTRAINT "spree_delivery_slots_pkey" PRIMARY KEY ("id");
 ^   ALTER TABLE ONLY "public"."spree_delivery_slots" DROP CONSTRAINT "spree_delivery_slots_pkey";
       public         nqokmikthnyfkp    false    208    208            }           2606    4820648 "   spree_gateways spree_gateways_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "spree_gateways"
    ADD CONSTRAINT "spree_gateways_pkey" PRIMARY KEY ("id");
 R   ALTER TABLE ONLY "public"."spree_gateways" DROP CONSTRAINT "spree_gateways_pkey";
       public         nqokmikthnyfkp    false    210    210            �           2606    4820662 0   spree_inventory_units spree_inventory_units_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "spree_inventory_units"
    ADD CONSTRAINT "spree_inventory_units_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."spree_inventory_units" DROP CONSTRAINT "spree_inventory_units_pkey";
       public         nqokmikthnyfkp    false    212    212            �           2606    4820684 &   spree_line_items spree_line_items_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "spree_line_items"
    ADD CONSTRAINT "spree_line_items_pkey" PRIMARY KEY ("id");
 V   ALTER TABLE ONLY "public"."spree_line_items" DROP CONSTRAINT "spree_line_items_pkey";
       public         nqokmikthnyfkp    false    214    214            �           2606    4820698 (   spree_log_entries spree_log_entries_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "spree_log_entries"
    ADD CONSTRAINT "spree_log_entries_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."spree_log_entries" DROP CONSTRAINT "spree_log_entries_pkey";
       public         nqokmikthnyfkp    false    216    216            �           2606    4820707 >   spree_option_type_prototypes spree_option_type_prototypes_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "spree_option_type_prototypes"
    ADD CONSTRAINT "spree_option_type_prototypes_pkey" PRIMARY KEY ("id");
 n   ALTER TABLE ONLY "public"."spree_option_type_prototypes" DROP CONSTRAINT "spree_option_type_prototypes_pkey";
       public         nqokmikthnyfkp    false    218    218            �           2606    4820718 *   spree_option_types spree_option_types_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "spree_option_types"
    ADD CONSTRAINT "spree_option_types_pkey" PRIMARY KEY ("id");
 Z   ALTER TABLE ONLY "public"."spree_option_types" DROP CONSTRAINT "spree_option_types_pkey";
       public         nqokmikthnyfkp    false    220    220            �           2606    4820728 <   spree_option_value_variants spree_option_value_variants_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "spree_option_value_variants"
    ADD CONSTRAINT "spree_option_value_variants_pkey" PRIMARY KEY ("id");
 l   ALTER TABLE ONLY "public"."spree_option_value_variants" DROP CONSTRAINT "spree_option_value_variants_pkey";
       public         nqokmikthnyfkp    false    222    222            �           2606    4820741 ,   spree_option_values spree_option_values_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "spree_option_values"
    ADD CONSTRAINT "spree_option_values_pkey" PRIMARY KEY ("id");
 \   ALTER TABLE ONLY "public"."spree_option_values" DROP CONSTRAINT "spree_option_values_pkey";
       public         nqokmikthnyfkp    false    224    224            �           2606    4820752 2   spree_order_promotions spree_order_promotions_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "spree_order_promotions"
    ADD CONSTRAINT "spree_order_promotions_pkey" PRIMARY KEY ("id");
 b   ALTER TABLE ONLY "public"."spree_order_promotions" DROP CONSTRAINT "spree_order_promotions_pkey";
       public         nqokmikthnyfkp    false    226    226            �           2606    4820780    spree_orders spree_orders_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "spree_orders"
    ADD CONSTRAINT "spree_orders_pkey" PRIMARY KEY ("id");
 N   ALTER TABLE ONLY "public"."spree_orders" DROP CONSTRAINT "spree_orders_pkey";
       public         nqokmikthnyfkp    false    228    228            �           2606    4820801 >   spree_payment_capture_events spree_payment_capture_events_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "spree_payment_capture_events"
    ADD CONSTRAINT "spree_payment_capture_events_pkey" PRIMARY KEY ("id");
 n   ALTER TABLE ONLY "public"."spree_payment_capture_events" DROP CONSTRAINT "spree_payment_capture_events_pkey";
       public         nqokmikthnyfkp    false    230    230            �           2606    4820816 0   spree_payment_methods spree_payment_methods_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "spree_payment_methods"
    ADD CONSTRAINT "spree_payment_methods_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."spree_payment_methods" DROP CONSTRAINT "spree_payment_methods_pkey";
       public         nqokmikthnyfkp    false    232    232            �           2606    4820829 "   spree_payments spree_payments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "spree_payments"
    ADD CONSTRAINT "spree_payments_pkey" PRIMARY KEY ("id");
 R   ALTER TABLE ONLY "public"."spree_payments" DROP CONSTRAINT "spree_payments_pkey";
       public         nqokmikthnyfkp    false    234    234            �           2606    4820847 (   spree_permissions spree_permissions_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "spree_permissions"
    ADD CONSTRAINT "spree_permissions_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."spree_permissions" DROP CONSTRAINT "spree_permissions_pkey";
       public         nqokmikthnyfkp    false    236    236            �           2606    4820859 (   spree_preferences spree_preferences_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "spree_preferences"
    ADD CONSTRAINT "spree_preferences_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."spree_preferences" DROP CONSTRAINT "spree_preferences_pkey";
       public         nqokmikthnyfkp    false    238    238            �           2606    4820871    spree_prices spree_prices_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "spree_prices"
    ADD CONSTRAINT "spree_prices_pkey" PRIMARY KEY ("id");
 N   ALTER TABLE ONLY "public"."spree_prices" DROP CONSTRAINT "spree_prices_pkey";
       public         nqokmikthnyfkp    false    240    240            �           2606    4820882 :   spree_product_option_types spree_product_option_types_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "spree_product_option_types"
    ADD CONSTRAINT "spree_product_option_types_pkey" PRIMARY KEY ("id");
 j   ALTER TABLE ONLY "public"."spree_product_option_types" DROP CONSTRAINT "spree_product_option_types_pkey";
       public         nqokmikthnyfkp    false    242    242            �           2606    4820897 2   spree_product_packages spree_product_packages_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "spree_product_packages"
    ADD CONSTRAINT "spree_product_packages_pkey" PRIMARY KEY ("id");
 b   ALTER TABLE ONLY "public"."spree_product_packages" DROP CONSTRAINT "spree_product_packages_pkey";
       public         nqokmikthnyfkp    false    244    244            �           2606    4820905 @   spree_product_promotion_rules spree_product_promotion_rules_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "spree_product_promotion_rules"
    ADD CONSTRAINT "spree_product_promotion_rules_pkey" PRIMARY KEY ("id");
 p   ALTER TABLE ONLY "public"."spree_product_promotion_rules" DROP CONSTRAINT "spree_product_promotion_rules_pkey";
       public         nqokmikthnyfkp    false    246    246            �           2606    4820919 6   spree_product_properties spree_product_properties_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "spree_product_properties"
    ADD CONSTRAINT "spree_product_properties_pkey" PRIMARY KEY ("id");
 f   ALTER TABLE ONLY "public"."spree_product_properties" DROP CONSTRAINT "spree_product_properties_pkey";
       public         nqokmikthnyfkp    false    248    248            �           2606    4820935 "   spree_products spree_products_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "spree_products"
    ADD CONSTRAINT "spree_products_pkey" PRIMARY KEY ("id");
 R   ALTER TABLE ONLY "public"."spree_products" DROP CONSTRAINT "spree_products_pkey";
       public         nqokmikthnyfkp    false    250    250            �           2606    4820950 0   spree_products_taxons spree_products_taxons_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "spree_products_taxons"
    ADD CONSTRAINT "spree_products_taxons_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."spree_products_taxons" DROP CONSTRAINT "spree_products_taxons_pkey";
       public         nqokmikthnyfkp    false    252    252            �           2606    4820962 H   spree_promotion_action_line_items spree_promotion_action_line_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "spree_promotion_action_line_items"
    ADD CONSTRAINT "spree_promotion_action_line_items_pkey" PRIMARY KEY ("id");
 x   ALTER TABLE ONLY "public"."spree_promotion_action_line_items" DROP CONSTRAINT "spree_promotion_action_line_items_pkey";
       public         nqokmikthnyfkp    false    254    254            �           2606    4820975 4   spree_promotion_actions spree_promotion_actions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "spree_promotion_actions"
    ADD CONSTRAINT "spree_promotion_actions_pkey" PRIMARY KEY ("id");
 d   ALTER TABLE ONLY "public"."spree_promotion_actions" DROP CONSTRAINT "spree_promotion_actions_pkey";
       public         nqokmikthnyfkp    false    256    256            �           2606    4820989 :   spree_promotion_categories spree_promotion_categories_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "spree_promotion_categories"
    ADD CONSTRAINT "spree_promotion_categories_pkey" PRIMARY KEY ("id");
 j   ALTER TABLE ONLY "public"."spree_promotion_categories" DROP CONSTRAINT "spree_promotion_categories_pkey";
       public         nqokmikthnyfkp    false    258    258            �           2606    4820997 <   spree_promotion_rule_taxons spree_promotion_rule_taxons_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "spree_promotion_rule_taxons"
    ADD CONSTRAINT "spree_promotion_rule_taxons_pkey" PRIMARY KEY ("id");
 l   ALTER TABLE ONLY "public"."spree_promotion_rule_taxons" DROP CONSTRAINT "spree_promotion_rule_taxons_pkey";
       public         nqokmikthnyfkp    false    260    260            �           2606    4821007 :   spree_promotion_rule_users spree_promotion_rule_users_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "spree_promotion_rule_users"
    ADD CONSTRAINT "spree_promotion_rule_users_pkey" PRIMARY KEY ("id");
 j   ALTER TABLE ONLY "public"."spree_promotion_rule_users" DROP CONSTRAINT "spree_promotion_rule_users_pkey";
       public         nqokmikthnyfkp    false    262    262            �           2606    4821020 0   spree_promotion_rules spree_promotion_rules_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "spree_promotion_rules"
    ADD CONSTRAINT "spree_promotion_rules_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."spree_promotion_rules" DROP CONSTRAINT "spree_promotion_rules_pkey";
       public         nqokmikthnyfkp    false    264    264                       2606    4821036 &   spree_promotions spree_promotions_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "spree_promotions"
    ADD CONSTRAINT "spree_promotions_pkey" PRIMARY KEY ("id");
 V   ALTER TABLE ONLY "public"."spree_promotions" DROP CONSTRAINT "spree_promotions_pkey";
       public         nqokmikthnyfkp    false    266    266                       2606    4821053 &   spree_properties spree_properties_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "spree_properties"
    ADD CONSTRAINT "spree_properties_pkey" PRIMARY KEY ("id");
 V   ALTER TABLE ONLY "public"."spree_properties" DROP CONSTRAINT "spree_properties_pkey";
       public         nqokmikthnyfkp    false    268    268            	           2606    4821062 8   spree_property_prototypes spree_property_prototypes_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "spree_property_prototypes"
    ADD CONSTRAINT "spree_property_prototypes_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."spree_property_prototypes" DROP CONSTRAINT "spree_property_prototypes_pkey";
       public         nqokmikthnyfkp    false    270    270                       2606    4821071 2   spree_prototype_taxons spree_prototype_taxons_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "spree_prototype_taxons"
    ADD CONSTRAINT "spree_prototype_taxons_pkey" PRIMARY KEY ("id");
 b   ALTER TABLE ONLY "public"."spree_prototype_taxons" DROP CONSTRAINT "spree_prototype_taxons_pkey";
       public         nqokmikthnyfkp    false    272    272                       2606    4821084 &   spree_prototypes spree_prototypes_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "spree_prototypes"
    ADD CONSTRAINT "spree_prototypes_pkey" PRIMARY KEY ("id");
 V   ALTER TABLE ONLY "public"."spree_prototypes" DROP CONSTRAINT "spree_prototypes_pkey";
       public         nqokmikthnyfkp    false    274    274                       2606    4821097 .   spree_refund_reasons spree_refund_reasons_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "spree_refund_reasons"
    ADD CONSTRAINT "spree_refund_reasons_pkey" PRIMARY KEY ("id");
 ^   ALTER TABLE ONLY "public"."spree_refund_reasons" DROP CONSTRAINT "spree_refund_reasons_pkey";
       public         nqokmikthnyfkp    false    276    276                       2606    4821109     spree_refunds spree_refunds_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "spree_refunds"
    ADD CONSTRAINT "spree_refunds_pkey" PRIMARY KEY ("id");
 P   ALTER TABLE ONLY "public"."spree_refunds" DROP CONSTRAINT "spree_refunds_pkey";
       public         nqokmikthnyfkp    false    278    278                       2606    4821122 <   spree_reimbursement_credits spree_reimbursement_credits_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "spree_reimbursement_credits"
    ADD CONSTRAINT "spree_reimbursement_credits_pkey" PRIMARY KEY ("id");
 l   ALTER TABLE ONLY "public"."spree_reimbursement_credits" DROP CONSTRAINT "spree_reimbursement_credits_pkey";
       public         nqokmikthnyfkp    false    280    280                       2606    4821135 8   spree_reimbursement_types spree_reimbursement_types_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "spree_reimbursement_types"
    ADD CONSTRAINT "spree_reimbursement_types_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."spree_reimbursement_types" DROP CONSTRAINT "spree_reimbursement_types_pkey";
       public         nqokmikthnyfkp    false    282    282                       2606    4821147 .   spree_reimbursements spree_reimbursements_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "spree_reimbursements"
    ADD CONSTRAINT "spree_reimbursements_pkey" PRIMARY KEY ("id");
 ^   ALTER TABLE ONLY "public"."spree_reimbursements" DROP CONSTRAINT "spree_reimbursements_pkey";
       public         nqokmikthnyfkp    false    284    284                       2606    4821162 J   spree_return_authorization_reasons spree_return_authorization_reasons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "spree_return_authorization_reasons"
    ADD CONSTRAINT "spree_return_authorization_reasons_pkey" PRIMARY KEY ("id");
 z   ALTER TABLE ONLY "public"."spree_return_authorization_reasons" DROP CONSTRAINT "spree_return_authorization_reasons_pkey";
       public         nqokmikthnyfkp    false    286    286            "           2606    4821173 <   spree_return_authorizations spree_return_authorizations_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "spree_return_authorizations"
    ADD CONSTRAINT "spree_return_authorizations_pkey" PRIMARY KEY ("id");
 l   ALTER TABLE ONLY "public"."spree_return_authorizations" DROP CONSTRAINT "spree_return_authorizations_pkey";
       public         nqokmikthnyfkp    false    288    288            &           2606    4821189 *   spree_return_items spree_return_items_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "spree_return_items"
    ADD CONSTRAINT "spree_return_items_pkey" PRIMARY KEY ("id");
 Z   ALTER TABLE ONLY "public"."spree_return_items" DROP CONSTRAINT "spree_return_items_pkey";
       public         nqokmikthnyfkp    false    290    290            +           2606    4821204    spree_roles spree_roles_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "spree_roles"
    ADD CONSTRAINT "spree_roles_pkey" PRIMARY KEY ("id");
 L   ALTER TABLE ONLY "public"."spree_roles" DROP CONSTRAINT "spree_roles_pkey";
       public         nqokmikthnyfkp    false    292    292            1           2606    4821220 (   spree_roles_users spree_roles_users_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "spree_roles_users"
    ADD CONSTRAINT "spree_roles_users_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."spree_roles_users" DROP CONSTRAINT "spree_roles_users_pkey";
       public         nqokmikthnyfkp    false    295    295            8           2606    4821241 $   spree_shipments spree_shipments_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "spree_shipments"
    ADD CONSTRAINT "spree_shipments_pkey" PRIMARY KEY ("id");
 T   ALTER TABLE ONLY "public"."spree_shipments" DROP CONSTRAINT "spree_shipments_pkey";
       public         nqokmikthnyfkp    false    297    297            ;           2606    4821257 8   spree_shipping_categories spree_shipping_categories_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "spree_shipping_categories"
    ADD CONSTRAINT "spree_shipping_categories_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."spree_shipping_categories" DROP CONSTRAINT "spree_shipping_categories_pkey";
       public         nqokmikthnyfkp    false    299    299            >           2606    4821266 F   spree_shipping_method_categories spree_shipping_method_categories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "spree_shipping_method_categories"
    ADD CONSTRAINT "spree_shipping_method_categories_pkey" PRIMARY KEY ("id");
 v   ALTER TABLE ONLY "public"."spree_shipping_method_categories" DROP CONSTRAINT "spree_shipping_method_categories_pkey";
       public         nqokmikthnyfkp    false    301    301            A           2606    4821276 <   spree_shipping_method_zones spree_shipping_method_zones_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "spree_shipping_method_zones"
    ADD CONSTRAINT "spree_shipping_method_zones_pkey" PRIMARY KEY ("id");
 l   ALTER TABLE ONLY "public"."spree_shipping_method_zones" DROP CONSTRAINT "spree_shipping_method_zones_pkey";
       public         nqokmikthnyfkp    false    303    303            E           2606    4821288 2   spree_shipping_methods spree_shipping_methods_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "spree_shipping_methods"
    ADD CONSTRAINT "spree_shipping_methods_pkey" PRIMARY KEY ("id");
 b   ALTER TABLE ONLY "public"."spree_shipping_methods" DROP CONSTRAINT "spree_shipping_methods_pkey";
       public         nqokmikthnyfkp    false    305    305            J           2606    4821300 .   spree_shipping_rates spree_shipping_rates_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "spree_shipping_rates"
    ADD CONSTRAINT "spree_shipping_rates_pkey" PRIMARY KEY ("id");
 ^   ALTER TABLE ONLY "public"."spree_shipping_rates" DROP CONSTRAINT "spree_shipping_rates_pkey";
       public         nqokmikthnyfkp    false    307    307            M           2606    4821314 ,   spree_state_changes spree_state_changes_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "spree_state_changes"
    ADD CONSTRAINT "spree_state_changes_pkey" PRIMARY KEY ("id");
 \   ALTER TABLE ONLY "public"."spree_state_changes" DROP CONSTRAINT "spree_state_changes_pkey";
       public         nqokmikthnyfkp    false    309    309            P           2606    4821326    spree_states spree_states_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "spree_states"
    ADD CONSTRAINT "spree_states_pkey" PRIMARY KEY ("id");
 N   ALTER TABLE ONLY "public"."spree_states" DROP CONSTRAINT "spree_states_pkey";
       public         nqokmikthnyfkp    false    311    311            U           2606    4821337 (   spree_stock_items spree_stock_items_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "spree_stock_items"
    ADD CONSTRAINT "spree_stock_items_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."spree_stock_items" DROP CONSTRAINT "spree_stock_items_pkey";
       public         nqokmikthnyfkp    false    313    313            ]           2606    4821356 0   spree_stock_locations spree_stock_locations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "spree_stock_locations"
    ADD CONSTRAINT "spree_stock_locations_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."spree_stock_locations" DROP CONSTRAINT "spree_stock_locations_pkey";
       public         nqokmikthnyfkp    false    315    315            `           2606    4821373 0   spree_stock_movements spree_stock_movements_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "spree_stock_movements"
    ADD CONSTRAINT "spree_stock_movements_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."spree_stock_movements" DROP CONSTRAINT "spree_stock_movements_pkey";
       public         nqokmikthnyfkp    false    317    317            e           2606    4821385 0   spree_stock_transfers spree_stock_transfers_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "spree_stock_transfers"
    ADD CONSTRAINT "spree_stock_transfers_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."spree_stock_transfers" DROP CONSTRAINT "spree_stock_transfers_pkey";
       public         nqokmikthnyfkp    false    319    319            g           2606    4821399 @   spree_store_credit_categories spree_store_credit_categories_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "spree_store_credit_categories"
    ADD CONSTRAINT "spree_store_credit_categories_pkey" PRIMARY KEY ("id");
 p   ALTER TABLE ONLY "public"."spree_store_credit_categories" DROP CONSTRAINT "spree_store_credit_categories_pkey";
       public         nqokmikthnyfkp    false    321    321            k           2606    4821411 8   spree_store_credit_events spree_store_credit_events_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "spree_store_credit_events"
    ADD CONSTRAINT "spree_store_credit_events_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."spree_store_credit_events" DROP CONSTRAINT "spree_store_credit_events_pkey";
       public         nqokmikthnyfkp    false    323    323            n           2606    4821424 6   spree_store_credit_types spree_store_credit_types_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "spree_store_credit_types"
    ADD CONSTRAINT "spree_store_credit_types_pkey" PRIMARY KEY ("id");
 f   ALTER TABLE ONLY "public"."spree_store_credit_types" DROP CONSTRAINT "spree_store_credit_types_pkey";
       public         nqokmikthnyfkp    false    325    325            t           2606    4821439 ,   spree_store_credits spree_store_credits_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "spree_store_credits"
    ADD CONSTRAINT "spree_store_credits_pkey" PRIMARY KEY ("id");
 \   ALTER TABLE ONLY "public"."spree_store_credits" DROP CONSTRAINT "spree_store_credits_pkey";
       public         nqokmikthnyfkp    false    327    327            y           2606    4821455    spree_stores spree_stores_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "spree_stores"
    ADD CONSTRAINT "spree_stores_pkey" PRIMARY KEY ("id");
 N   ALTER TABLE ONLY "public"."spree_stores" DROP CONSTRAINT "spree_stores_pkey";
       public         nqokmikthnyfkp    false    329    329            �           2606    4821469 "   spree_taggings spree_taggings_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "spree_taggings"
    ADD CONSTRAINT "spree_taggings_pkey" PRIMARY KEY ("id");
 R   ALTER TABLE ONLY "public"."spree_taggings" DROP CONSTRAINT "spree_taggings_pkey";
       public         nqokmikthnyfkp    false    331    331            �           2606    4821489    spree_tags spree_tags_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "spree_tags"
    ADD CONSTRAINT "spree_tags_pkey" PRIMARY KEY ("id");
 J   ALTER TABLE ONLY "public"."spree_tags" DROP CONSTRAINT "spree_tags_pkey";
       public         nqokmikthnyfkp    false    333    333            �           2606    4821502 .   spree_tax_categories spree_tax_categories_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "spree_tax_categories"
    ADD CONSTRAINT "spree_tax_categories_pkey" PRIMARY KEY ("id");
 ^   ALTER TABLE ONLY "public"."spree_tax_categories" DROP CONSTRAINT "spree_tax_categories_pkey";
       public         nqokmikthnyfkp    false    335    335            �           2606    4821517 $   spree_tax_rates spree_tax_rates_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "spree_tax_rates"
    ADD CONSTRAINT "spree_tax_rates_pkey" PRIMARY KEY ("id");
 T   ALTER TABLE ONLY "public"."spree_tax_rates" DROP CONSTRAINT "spree_tax_rates_pkey";
       public         nqokmikthnyfkp    false    337    337            �           2606    4821534 &   spree_taxonomies spree_taxonomies_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "spree_taxonomies"
    ADD CONSTRAINT "spree_taxonomies_pkey" PRIMARY KEY ("id");
 V   ALTER TABLE ONLY "public"."spree_taxonomies" DROP CONSTRAINT "spree_taxonomies_pkey";
       public         nqokmikthnyfkp    false    339    339            �           2606    4821547    spree_taxons spree_taxons_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "spree_taxons"
    ADD CONSTRAINT "spree_taxons_pkey" PRIMARY KEY ("id");
 N   ALTER TABLE ONLY "public"."spree_taxons" DROP CONSTRAINT "spree_taxons_pkey";
       public         nqokmikthnyfkp    false    341    341            �           2606    4821565    spree_themes spree_themes_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "spree_themes"
    ADD CONSTRAINT "spree_themes_pkey" PRIMARY KEY ("id");
 N   ALTER TABLE ONLY "public"."spree_themes" DROP CONSTRAINT "spree_themes_pkey";
       public         nqokmikthnyfkp    false    343    343            �           2606    4821577 2   spree_themes_templates spree_themes_templates_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "spree_themes_templates"
    ADD CONSTRAINT "spree_themes_templates_pkey" PRIMARY KEY ("id");
 b   ALTER TABLE ONLY "public"."spree_themes_templates" DROP CONSTRAINT "spree_themes_templates_pkey";
       public         nqokmikthnyfkp    false    345    345            �           2606    4821590 "   spree_trackers spree_trackers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "spree_trackers"
    ADD CONSTRAINT "spree_trackers_pkey" PRIMARY KEY ("id");
 R   ALTER TABLE ONLY "public"."spree_trackers" DROP CONSTRAINT "spree_trackers_pkey";
       public         nqokmikthnyfkp    false    347    347            �           2606    4821604    spree_users spree_users_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "spree_users"
    ADD CONSTRAINT "spree_users_pkey" PRIMARY KEY ("id");
 L   ALTER TABLE ONLY "public"."spree_users" DROP CONSTRAINT "spree_users_pkey";
       public         nqokmikthnyfkp    false    349    349            �           2606    4821624 "   spree_variants spree_variants_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "spree_variants"
    ADD CONSTRAINT "spree_variants_pkey" PRIMARY KEY ("id");
 R   ALTER TABLE ONLY "public"."spree_variants" DROP CONSTRAINT "spree_variants_pkey";
       public         nqokmikthnyfkp    false    351    351            �           2606    4821643 *   spree_zone_members spree_zone_members_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "spree_zone_members"
    ADD CONSTRAINT "spree_zone_members_pkey" PRIMARY KEY ("id");
 Z   ALTER TABLE ONLY "public"."spree_zone_members" DROP CONSTRAINT "spree_zone_members_pkey";
       public         nqokmikthnyfkp    false    353    353            �           2606    4821658    spree_zones spree_zones_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "spree_zones"
    ADD CONSTRAINT "spree_zones_pkey" PRIMARY KEY ("id");
 L   ALTER TABLE ONLY "public"."spree_zones" DROP CONSTRAINT "spree_zones_pkey";
       public         nqokmikthnyfkp    false    355    355            �           1259    4821607    email_idx_unique    INDEX     Q   CREATE UNIQUE INDEX "email_idx_unique" ON "spree_users" USING "btree" ("email");
 (   DROP INDEX "public"."email_idx_unique";
       public         nqokmikthnyfkp    false    349            S           1259    4820521    index_addresses_on_firstname    INDEX     ^   CREATE INDEX "index_addresses_on_firstname" ON "spree_addresses" USING "btree" ("firstname");
 4   DROP INDEX "public"."index_addresses_on_firstname";
       public         nqokmikthnyfkp    false    192            T           1259    4820522    index_addresses_on_lastname    INDEX     \   CREATE INDEX "index_addresses_on_lastname" ON "spree_addresses" USING "btree" ("lastname");
 3   DROP INDEX "public"."index_addresses_on_lastname";
       public         nqokmikthnyfkp    false    192            _           1259    4820553    index_assets_on_viewable_id    INDEX     \   CREATE INDEX "index_assets_on_viewable_id" ON "spree_assets" USING "btree" ("viewable_id");
 3   DROP INDEX "public"."index_assets_on_viewable_id";
       public         nqokmikthnyfkp    false    196            `           1259    4820554 &   index_assets_on_viewable_type_and_type    INDEX     q   CREATE INDEX "index_assets_on_viewable_type_and_type" ON "spree_assets" USING "btree" ("viewable_type", "type");
 >   DROP INDEX "public"."index_assets_on_viewable_type_and_type";
       public         nqokmikthnyfkp    false    196    196            N           1259    4820504 %   index_friendly_id_slugs_on_deleted_at    INDEX     j   CREATE INDEX "index_friendly_id_slugs_on_deleted_at" ON "friendly_id_slugs" USING "btree" ("deleted_at");
 =   DROP INDEX "public"."index_friendly_id_slugs_on_deleted_at";
       public         nqokmikthnyfkp    false    190            O           1259    4820506 2   index_friendly_id_slugs_on_slug_and_sluggable_type    INDEX     �   CREATE INDEX "index_friendly_id_slugs_on_slug_and_sluggable_type" ON "friendly_id_slugs" USING "btree" ("slug", "sluggable_type");
 J   DROP INDEX "public"."index_friendly_id_slugs_on_slug_and_sluggable_type";
       public         nqokmikthnyfkp    false    190    190            P           1259    4820505 <   index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope    INDEX     �   CREATE UNIQUE INDEX "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope" ON "friendly_id_slugs" USING "btree" ("slug", "sluggable_type", "scope");
 T   DROP INDEX "public"."index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope";
       public         nqokmikthnyfkp    false    190    190    190            Q           1259    4820507 '   index_friendly_id_slugs_on_sluggable_id    INDEX     n   CREATE INDEX "index_friendly_id_slugs_on_sluggable_id" ON "friendly_id_slugs" USING "btree" ("sluggable_id");
 ?   DROP INDEX "public"."index_friendly_id_slugs_on_sluggable_id";
       public         nqokmikthnyfkp    false    190            R           1259    4820508 )   index_friendly_id_slugs_on_sluggable_type    INDEX     r   CREATE INDEX "index_friendly_id_slugs_on_sluggable_type" ON "friendly_id_slugs" USING "btree" ("sluggable_type");
 A   DROP INDEX "public"."index_friendly_id_slugs_on_sluggable_type";
       public         nqokmikthnyfkp    false    190            ~           1259    4820664 !   index_inventory_units_on_order_id    INDEX     h   CREATE INDEX "index_inventory_units_on_order_id" ON "spree_inventory_units" USING "btree" ("order_id");
 9   DROP INDEX "public"."index_inventory_units_on_order_id";
       public         nqokmikthnyfkp    false    212                       1259    4820665 $   index_inventory_units_on_shipment_id    INDEX     n   CREATE INDEX "index_inventory_units_on_shipment_id" ON "spree_inventory_units" USING "btree" ("shipment_id");
 <   DROP INDEX "public"."index_inventory_units_on_shipment_id";
       public         nqokmikthnyfkp    false    212            �           1259    4820666 #   index_inventory_units_on_variant_id    INDEX     l   CREATE INDEX "index_inventory_units_on_variant_id" ON "spree_inventory_units" USING "btree" ("variant_id");
 ;   DROP INDEX "public"."index_inventory_units_on_variant_id";
       public         nqokmikthnyfkp    false    212            �           1259    4820709 :   index_option_types_prototypes_on_prototype_and_option_type    INDEX     �   CREATE INDEX "index_option_types_prototypes_on_prototype_and_option_type" ON "spree_option_type_prototypes" USING "btree" ("prototype_id", "option_type_id");
 R   DROP INDEX "public"."index_option_types_prototypes_on_prototype_and_option_type";
       public         nqokmikthnyfkp    false    218    218            �           1259    4820730 >   index_option_values_variants_on_variant_id_and_option_value_id    INDEX     �   CREATE INDEX "index_option_values_variants_on_variant_id_and_option_value_id" ON "spree_option_value_variants" USING "btree" ("variant_id", "option_value_id");
 V   DROP INDEX "public"."index_option_values_variants_on_variant_id_and_option_value_id";
       public         nqokmikthnyfkp    false    222    222            �           1259    4820921 &   index_product_properties_on_product_id    INDEX     r   CREATE INDEX "index_product_properties_on_product_id" ON "spree_product_properties" USING "btree" ("product_id");
 >   DROP INDEX "public"."index_product_properties_on_product_id";
       public         nqokmikthnyfkp    false    248            �           1259    4820906 ,   index_products_promotion_rules_on_product_id    INDEX     }   CREATE INDEX "index_products_promotion_rules_on_product_id" ON "spree_product_promotion_rules" USING "btree" ("product_id");
 D   DROP INDEX "public"."index_products_promotion_rules_on_product_id";
       public         nqokmikthnyfkp    false    246            �           1259    4820907 <   index_products_promotion_rules_on_promotion_rule_and_product    INDEX     �   CREATE INDEX "index_products_promotion_rules_on_promotion_rule_and_product" ON "spree_product_promotion_rules" USING "btree" ("promotion_rule_id", "product_id");
 T   DROP INDEX "public"."index_products_promotion_rules_on_promotion_rule_and_product";
       public         nqokmikthnyfkp    false    246    246            �           1259    4821021 )   index_promotion_rules_on_product_group_id    INDEX     x   CREATE INDEX "index_promotion_rules_on_product_group_id" ON "spree_promotion_rules" USING "btree" ("product_group_id");
 A   DROP INDEX "public"."index_promotion_rules_on_product_group_id";
       public         nqokmikthnyfkp    false    264            �           1259    4821023     index_promotion_rules_on_user_id    INDEX     f   CREATE INDEX "index_promotion_rules_on_user_id" ON "spree_promotion_rules" USING "btree" ("user_id");
 8   DROP INDEX "public"."index_promotion_rules_on_user_id";
       public         nqokmikthnyfkp    false    264            �           1259    4821008 0   index_promotion_rules_users_on_promotion_rule_id    INDEX     �   CREATE INDEX "index_promotion_rules_users_on_promotion_rule_id" ON "spree_promotion_rule_users" USING "btree" ("promotion_rule_id");
 H   DROP INDEX "public"."index_promotion_rules_users_on_promotion_rule_id";
       public         nqokmikthnyfkp    false    262            �           1259    4821009 <   index_promotion_rules_users_on_user_id_and_promotion_rule_id    INDEX     �   CREATE INDEX "index_promotion_rules_users_on_user_id_and_promotion_rule_id" ON "spree_promotion_rule_users" USING "btree" ("user_id", "promotion_rule_id");
 T   DROP INDEX "public"."index_promotion_rules_users_on_user_id_and_promotion_rule_id";
       public         nqokmikthnyfkp    false    262    262                       1259    4821063 5   index_properties_prototypes_on_prototype_and_property    INDEX     �   CREATE INDEX "index_properties_prototypes_on_prototype_and_property" ON "spree_property_prototypes" USING "btree" ("prototype_id", "property_id");
 M   DROP INDEX "public"."index_properties_prototypes_on_prototype_and_property";
       public         nqokmikthnyfkp    false    270    270                       1259    4821110 !   index_refunds_on_refund_reason_id    INDEX     h   CREATE INDEX "index_refunds_on_refund_reason_id" ON "spree_refunds" USING "btree" ("refund_reason_id");
 9   DROP INDEX "public"."index_refunds_on_refund_reason_id";
       public         nqokmikthnyfkp    false    278                        1259    4821174 =   index_return_authorizations_on_return_authorization_reason_id    INDEX     �   CREATE INDEX "index_return_authorizations_on_return_authorization_reason_id" ON "spree_return_authorizations" USING "btree" ("return_authorization_reason_id");
 U   DROP INDEX "public"."index_return_authorizations_on_return_authorization_reason_id";
       public         nqokmikthnyfkp    false    288            #           1259    4821190 (   index_return_items_on_customer_return_id    INDEX     v   CREATE INDEX "index_return_items_on_customer_return_id" ON "spree_return_items" USING "btree" ("customer_return_id");
 @   DROP INDEX "public"."index_return_items_on_customer_return_id";
       public         nqokmikthnyfkp    false    290            2           1259    4821244    index_shipments_on_number    INDEX     X   CREATE INDEX "index_shipments_on_number" ON "spree_shipments" USING "btree" ("number");
 1   DROP INDEX "public"."index_shipments_on_number";
       public         nqokmikthnyfkp    false    297            U           1259    4820520 #   index_spree_addresses_on_country_id    INDEX     f   CREATE INDEX "index_spree_addresses_on_country_id" ON "spree_addresses" USING "btree" ("country_id");
 ;   DROP INDEX "public"."index_spree_addresses_on_country_id";
       public         nqokmikthnyfkp    false    192            V           1259    4820523 !   index_spree_addresses_on_state_id    INDEX     b   CREATE INDEX "index_spree_addresses_on_state_id" ON "spree_addresses" USING "btree" ("state_id");
 9   DROP INDEX "public"."index_spree_addresses_on_state_id";
       public         nqokmikthnyfkp    false    192            Y           1259    4820537 <   index_spree_adjustments_on_adjustable_id_and_adjustable_type    INDEX     �   CREATE INDEX "index_spree_adjustments_on_adjustable_id_and_adjustable_type" ON "spree_adjustments" USING "btree" ("adjustable_id", "adjustable_type");
 T   DROP INDEX "public"."index_spree_adjustments_on_adjustable_id_and_adjustable_type";
       public         nqokmikthnyfkp    false    194    194            Z           1259    4820538 #   index_spree_adjustments_on_eligible    INDEX     f   CREATE INDEX "index_spree_adjustments_on_eligible" ON "spree_adjustments" USING "btree" ("eligible");
 ;   DROP INDEX "public"."index_spree_adjustments_on_eligible";
       public         nqokmikthnyfkp    false    194            [           1259    4820539 #   index_spree_adjustments_on_order_id    INDEX     f   CREATE INDEX "index_spree_adjustments_on_order_id" ON "spree_adjustments" USING "btree" ("order_id");
 ;   DROP INDEX "public"."index_spree_adjustments_on_order_id";
       public         nqokmikthnyfkp    false    194            \           1259    4820540 4   index_spree_adjustments_on_source_id_and_source_type    INDEX     �   CREATE INDEX "index_spree_adjustments_on_source_id_and_source_type" ON "spree_adjustments" USING "btree" ("source_id", "source_type");
 L   DROP INDEX "public"."index_spree_adjustments_on_source_id_and_source_type";
       public         nqokmikthnyfkp    false    194    194            a           1259    4820552    index_spree_assets_on_position    INDEX     \   CREATE INDEX "index_spree_assets_on_position" ON "spree_assets" USING "btree" ("position");
 6   DROP INDEX "public"."index_spree_assets_on_position";
       public         nqokmikthnyfkp    false    196            d           1259    4820566 (   index_spree_braintree_checkouts_on_state    INDEX     p   CREATE INDEX "index_spree_braintree_checkouts_on_state" ON "spree_braintree_checkouts" USING "btree" ("state");
 @   DROP INDEX "public"."index_spree_braintree_checkouts_on_state";
       public         nqokmikthnyfkp    false    198            e           1259    4820567 1   index_spree_braintree_checkouts_on_transaction_id    INDEX     �   CREATE INDEX "index_spree_braintree_checkouts_on_transaction_id" ON "spree_braintree_checkouts" USING "btree" ("transaction_id");
 I   DROP INDEX "public"."index_spree_braintree_checkouts_on_transaction_id";
       public         nqokmikthnyfkp    false    198            h           1259    4820579 <   index_spree_calculators_on_calculable_id_and_calculable_type    INDEX     �   CREATE INDEX "index_spree_calculators_on_calculable_id_and_calculable_type" ON "spree_calculators" USING "btree" ("calculable_id", "calculable_type");
 T   DROP INDEX "public"."index_spree_calculators_on_calculable_id_and_calculable_type";
       public         nqokmikthnyfkp    false    200    200            i           1259    4820580 %   index_spree_calculators_on_deleted_at    INDEX     j   CREATE INDEX "index_spree_calculators_on_deleted_at" ON "spree_calculators" USING "btree" ("deleted_at");
 =   DROP INDEX "public"."index_spree_calculators_on_deleted_at";
       public         nqokmikthnyfkp    false    200            j           1259    4820581 &   index_spree_calculators_on_id_and_type    INDEX     k   CREATE INDEX "index_spree_calculators_on_id_and_type" ON "spree_calculators" USING "btree" ("id", "type");
 >   DROP INDEX "public"."index_spree_calculators_on_id_and_type";
       public         nqokmikthnyfkp    false    200    200            o           1259    4820607 &   index_spree_credit_cards_on_address_id    INDEX     l   CREATE INDEX "index_spree_credit_cards_on_address_id" ON "spree_credit_cards" USING "btree" ("address_id");
 >   DROP INDEX "public"."index_spree_credit_cards_on_address_id";
       public         nqokmikthnyfkp    false    204            p           1259    4820608 -   index_spree_credit_cards_on_payment_method_id    INDEX     z   CREATE INDEX "index_spree_credit_cards_on_payment_method_id" ON "spree_credit_cards" USING "btree" ("payment_method_id");
 E   DROP INDEX "public"."index_spree_credit_cards_on_payment_method_id";
       public         nqokmikthnyfkp    false    204            q           1259    4820609 #   index_spree_credit_cards_on_user_id    INDEX     f   CREATE INDEX "index_spree_credit_cards_on_user_id" ON "spree_credit_cards" USING "btree" ("user_id");
 ;   DROP INDEX "public"."index_spree_credit_cards_on_user_id";
       public         nqokmikthnyfkp    false    204            v           1259    4820632 (   index_spree_delivery_slots_on_deleted_at    INDEX     p   CREATE INDEX "index_spree_delivery_slots_on_deleted_at" ON "spree_delivery_slots" USING "btree" ("deleted_at");
 @   DROP INDEX "public"."index_spree_delivery_slots_on_deleted_at";
       public         nqokmikthnyfkp    false    208            w           1259    4820633 0   index_spree_delivery_slots_on_shipping_method_id    INDEX     �   CREATE INDEX "index_spree_delivery_slots_on_shipping_method_id" ON "spree_delivery_slots" USING "btree" ("shipping_method_id");
 H   DROP INDEX "public"."index_spree_delivery_slots_on_shipping_method_id";
       public         nqokmikthnyfkp    false    208            z           1259    4820649    index_spree_gateways_on_active    INDEX     \   CREATE INDEX "index_spree_gateways_on_active" ON "spree_gateways" USING "btree" ("active");
 6   DROP INDEX "public"."index_spree_gateways_on_active";
       public         nqokmikthnyfkp    false    210            {           1259    4820650 !   index_spree_gateways_on_test_mode    INDEX     b   CREATE INDEX "index_spree_gateways_on_test_mode" ON "spree_gateways" USING "btree" ("test_mode");
 9   DROP INDEX "public"."index_spree_gateways_on_test_mode";
       public         nqokmikthnyfkp    false    210            �           1259    4820663 +   index_spree_inventory_units_on_line_item_id    INDEX     v   CREATE INDEX "index_spree_inventory_units_on_line_item_id" ON "spree_inventory_units" USING "btree" ("line_item_id");
 C   DROP INDEX "public"."index_spree_inventory_units_on_line_item_id";
       public         nqokmikthnyfkp    false    212            �           1259    4820685 "   index_spree_line_items_on_order_id    INDEX     d   CREATE INDEX "index_spree_line_items_on_order_id" ON "spree_line_items" USING "btree" ("order_id");
 :   DROP INDEX "public"."index_spree_line_items_on_order_id";
       public         nqokmikthnyfkp    false    214            �           1259    4820686 )   index_spree_line_items_on_tax_category_id    INDEX     r   CREATE INDEX "index_spree_line_items_on_tax_category_id" ON "spree_line_items" USING "btree" ("tax_category_id");
 A   DROP INDEX "public"."index_spree_line_items_on_tax_category_id";
       public         nqokmikthnyfkp    false    214            �           1259    4820687 $   index_spree_line_items_on_variant_id    INDEX     h   CREATE INDEX "index_spree_line_items_on_variant_id" ON "spree_line_items" USING "btree" ("variant_id");
 <   DROP INDEX "public"."index_spree_line_items_on_variant_id";
       public         nqokmikthnyfkp    false    214            �           1259    4820699 4   index_spree_log_entries_on_source_id_and_source_type    INDEX     �   CREATE INDEX "index_spree_log_entries_on_source_id_and_source_type" ON "spree_log_entries" USING "btree" ("source_id", "source_type");
 L   DROP INDEX "public"."index_spree_log_entries_on_source_id_and_source_type";
       public         nqokmikthnyfkp    false    216    216            �           1259    4820708 4   index_spree_option_type_prototypes_on_option_type_id    INDEX     �   CREATE INDEX "index_spree_option_type_prototypes_on_option_type_id" ON "spree_option_type_prototypes" USING "btree" ("option_type_id");
 L   DROP INDEX "public"."index_spree_option_type_prototypes_on_option_type_id";
       public         nqokmikthnyfkp    false    218            �           1259    4820719     index_spree_option_types_on_name    INDEX     `   CREATE INDEX "index_spree_option_types_on_name" ON "spree_option_types" USING "btree" ("name");
 8   DROP INDEX "public"."index_spree_option_types_on_name";
       public         nqokmikthnyfkp    false    220            �           1259    4820720 $   index_spree_option_types_on_position    INDEX     h   CREATE INDEX "index_spree_option_types_on_position" ON "spree_option_types" USING "btree" ("position");
 <   DROP INDEX "public"."index_spree_option_types_on_position";
       public         nqokmikthnyfkp    false    220            �           1259    4820729 4   index_spree_option_value_variants_on_option_value_id    INDEX     �   CREATE INDEX "index_spree_option_value_variants_on_option_value_id" ON "spree_option_value_variants" USING "btree" ("option_value_id");
 L   DROP INDEX "public"."index_spree_option_value_variants_on_option_value_id";
       public         nqokmikthnyfkp    false    222            �           1259    4820742 !   index_spree_option_values_on_name    INDEX     b   CREATE INDEX "index_spree_option_values_on_name" ON "spree_option_values" USING "btree" ("name");
 9   DROP INDEX "public"."index_spree_option_values_on_name";
       public         nqokmikthnyfkp    false    224            �           1259    4820743 +   index_spree_option_values_on_option_type_id    INDEX     v   CREATE INDEX "index_spree_option_values_on_option_type_id" ON "spree_option_values" USING "btree" ("option_type_id");
 C   DROP INDEX "public"."index_spree_option_values_on_option_type_id";
       public         nqokmikthnyfkp    false    224            �           1259    4820744 %   index_spree_option_values_on_position    INDEX     j   CREATE INDEX "index_spree_option_values_on_position" ON "spree_option_values" USING "btree" ("position");
 =   DROP INDEX "public"."index_spree_option_values_on_position";
       public         nqokmikthnyfkp    false    224            �           1259    4820753 (   index_spree_order_promotions_on_order_id    INDEX     p   CREATE INDEX "index_spree_order_promotions_on_order_id" ON "spree_order_promotions" USING "btree" ("order_id");
 @   DROP INDEX "public"."index_spree_order_promotions_on_order_id";
       public         nqokmikthnyfkp    false    226            �           1259    4820754 9   index_spree_order_promotions_on_promotion_id_and_order_id    INDEX     �   CREATE INDEX "index_spree_order_promotions_on_promotion_id_and_order_id" ON "spree_order_promotions" USING "btree" ("promotion_id", "order_id");
 Q   DROP INDEX "public"."index_spree_order_promotions_on_promotion_id_and_order_id";
       public         nqokmikthnyfkp    false    226    226            �           1259    4820781 !   index_spree_orders_on_approver_id    INDEX     b   CREATE INDEX "index_spree_orders_on_approver_id" ON "spree_orders" USING "btree" ("approver_id");
 9   DROP INDEX "public"."index_spree_orders_on_approver_id";
       public         nqokmikthnyfkp    false    228            �           1259    4820782 %   index_spree_orders_on_bill_address_id    INDEX     j   CREATE INDEX "index_spree_orders_on_bill_address_id" ON "spree_orders" USING "btree" ("bill_address_id");
 =   DROP INDEX "public"."index_spree_orders_on_bill_address_id";
       public         nqokmikthnyfkp    false    228            �           1259    4820783 !   index_spree_orders_on_canceler_id    INDEX     b   CREATE INDEX "index_spree_orders_on_canceler_id" ON "spree_orders" USING "btree" ("canceler_id");
 9   DROP INDEX "public"."index_spree_orders_on_canceler_id";
       public         nqokmikthnyfkp    false    228            �           1259    4820784 "   index_spree_orders_on_completed_at    INDEX     d   CREATE INDEX "index_spree_orders_on_completed_at" ON "spree_orders" USING "btree" ("completed_at");
 :   DROP INDEX "public"."index_spree_orders_on_completed_at";
       public         nqokmikthnyfkp    false    228            �           1259    4820785 ,   index_spree_orders_on_confirmation_delivered    INDEX     x   CREATE INDEX "index_spree_orders_on_confirmation_delivered" ON "spree_orders" USING "btree" ("confirmation_delivered");
 D   DROP INDEX "public"."index_spree_orders_on_confirmation_delivered";
       public         nqokmikthnyfkp    false    228            �           1259    4820786 &   index_spree_orders_on_considered_risky    INDEX     l   CREATE INDEX "index_spree_orders_on_considered_risky" ON "spree_orders" USING "btree" ("considered_risky");
 >   DROP INDEX "public"."index_spree_orders_on_considered_risky";
       public         nqokmikthnyfkp    false    228            �           1259    4820787 #   index_spree_orders_on_created_by_id    INDEX     f   CREATE INDEX "index_spree_orders_on_created_by_id" ON "spree_orders" USING "btree" ("created_by_id");
 ;   DROP INDEX "public"."index_spree_orders_on_created_by_id";
       public         nqokmikthnyfkp    false    228            �           1259    4820788 !   index_spree_orders_on_guest_token    INDEX     b   CREATE INDEX "index_spree_orders_on_guest_token" ON "spree_orders" USING "btree" ("guest_token");
 9   DROP INDEX "public"."index_spree_orders_on_guest_token";
       public         nqokmikthnyfkp    false    228            �           1259    4820789    index_spree_orders_on_number    INDEX     X   CREATE INDEX "index_spree_orders_on_number" ON "spree_orders" USING "btree" ("number");
 4   DROP INDEX "public"."index_spree_orders_on_number";
       public         nqokmikthnyfkp    false    228            �           1259    4820790 %   index_spree_orders_on_ship_address_id    INDEX     j   CREATE INDEX "index_spree_orders_on_ship_address_id" ON "spree_orders" USING "btree" ("ship_address_id");
 =   DROP INDEX "public"."index_spree_orders_on_ship_address_id";
       public         nqokmikthnyfkp    false    228            �           1259    4820791    index_spree_orders_on_store_id    INDEX     \   CREATE INDEX "index_spree_orders_on_store_id" ON "spree_orders" USING "btree" ("store_id");
 6   DROP INDEX "public"."index_spree_orders_on_store_id";
       public         nqokmikthnyfkp    false    228            �           1259    4820792 /   index_spree_orders_on_user_id_and_created_by_id    INDEX     }   CREATE INDEX "index_spree_orders_on_user_id_and_created_by_id" ON "spree_orders" USING "btree" ("user_id", "created_by_id");
 G   DROP INDEX "public"."index_spree_orders_on_user_id_and_created_by_id";
       public         nqokmikthnyfkp    false    228    228            �           1259    4820802 0   index_spree_payment_capture_events_on_payment_id    INDEX     �   CREATE INDEX "index_spree_payment_capture_events_on_payment_id" ON "spree_payment_capture_events" USING "btree" ("payment_id");
 H   DROP INDEX "public"."index_spree_payment_capture_events_on_payment_id";
       public         nqokmikthnyfkp    false    230            �           1259    4820817 *   index_spree_payment_methods_on_id_and_type    INDEX     s   CREATE INDEX "index_spree_payment_methods_on_id_and_type" ON "spree_payment_methods" USING "btree" ("id", "type");
 B   DROP INDEX "public"."index_spree_payment_methods_on_id_and_type";
       public         nqokmikthnyfkp    false    232    232            �           1259    4820830    index_spree_payments_on_number    INDEX     \   CREATE INDEX "index_spree_payments_on_number" ON "spree_payments" USING "btree" ("number");
 6   DROP INDEX "public"."index_spree_payments_on_number";
       public         nqokmikthnyfkp    false    234            �           1259    4820831     index_spree_payments_on_order_id    INDEX     `   CREATE INDEX "index_spree_payments_on_order_id" ON "spree_payments" USING "btree" ("order_id");
 8   DROP INDEX "public"."index_spree_payments_on_order_id";
       public         nqokmikthnyfkp    false    234            �           1259    4820832 )   index_spree_payments_on_payment_method_id    INDEX     r   CREATE INDEX "index_spree_payments_on_payment_method_id" ON "spree_payments" USING "btree" ("payment_method_id");
 A   DROP INDEX "public"."index_spree_payments_on_payment_method_id";
       public         nqokmikthnyfkp    false    234            �           1259    4820833 1   index_spree_payments_on_source_id_and_source_type    INDEX     �   CREATE INDEX "index_spree_payments_on_source_id_and_source_type" ON "spree_payments" USING "btree" ("source_id", "source_type");
 I   DROP INDEX "public"."index_spree_payments_on_source_id_and_source_type";
       public         nqokmikthnyfkp    false    234    234            �           1259    4820848 "   index_spree_permissions_on_visible    INDEX     d   CREATE INDEX "index_spree_permissions_on_visible" ON "spree_permissions" USING "btree" ("visible");
 :   DROP INDEX "public"."index_spree_permissions_on_visible";
       public         nqokmikthnyfkp    false    236            �           1259    4820860    index_spree_preferences_on_key    INDEX     c   CREATE UNIQUE INDEX "index_spree_preferences_on_key" ON "spree_preferences" USING "btree" ("key");
 6   DROP INDEX "public"."index_spree_preferences_on_key";
       public         nqokmikthnyfkp    false    238            �           1259    4820872     index_spree_prices_on_deleted_at    INDEX     `   CREATE INDEX "index_spree_prices_on_deleted_at" ON "spree_prices" USING "btree" ("deleted_at");
 8   DROP INDEX "public"."index_spree_prices_on_deleted_at";
       public         nqokmikthnyfkp    false    240            �           1259    4820874     index_spree_prices_on_variant_id    INDEX     `   CREATE INDEX "index_spree_prices_on_variant_id" ON "spree_prices" USING "btree" ("variant_id");
 8   DROP INDEX "public"."index_spree_prices_on_variant_id";
       public         nqokmikthnyfkp    false    240            �           1259    4820873 -   index_spree_prices_on_variant_id_and_currency    INDEX     y   CREATE INDEX "index_spree_prices_on_variant_id_and_currency" ON "spree_prices" USING "btree" ("variant_id", "currency");
 E   DROP INDEX "public"."index_spree_prices_on_variant_id_and_currency";
       public         nqokmikthnyfkp    false    240    240            �           1259    4820883 2   index_spree_product_option_types_on_option_type_id    INDEX     �   CREATE INDEX "index_spree_product_option_types_on_option_type_id" ON "spree_product_option_types" USING "btree" ("option_type_id");
 J   DROP INDEX "public"."index_spree_product_option_types_on_option_type_id";
       public         nqokmikthnyfkp    false    242            �           1259    4820884 ,   index_spree_product_option_types_on_position    INDEX     x   CREATE INDEX "index_spree_product_option_types_on_position" ON "spree_product_option_types" USING "btree" ("position");
 D   DROP INDEX "public"."index_spree_product_option_types_on_position";
       public         nqokmikthnyfkp    false    242            �           1259    4820885 .   index_spree_product_option_types_on_product_id    INDEX     |   CREATE INDEX "index_spree_product_option_types_on_product_id" ON "spree_product_option_types" USING "btree" ("product_id");
 F   DROP INDEX "public"."index_spree_product_option_types_on_product_id";
       public         nqokmikthnyfkp    false    242            �           1259    4820920 *   index_spree_product_properties_on_position    INDEX     t   CREATE INDEX "index_spree_product_properties_on_position" ON "spree_product_properties" USING "btree" ("position");
 B   DROP INDEX "public"."index_spree_product_properties_on_position";
       public         nqokmikthnyfkp    false    248            �           1259    4820922 -   index_spree_product_properties_on_property_id    INDEX     z   CREATE INDEX "index_spree_product_properties_on_property_id" ON "spree_product_properties" USING "btree" ("property_id");
 E   DROP INDEX "public"."index_spree_product_properties_on_property_id";
       public         nqokmikthnyfkp    false    248            �           1259    4820936 $   index_spree_products_on_available_on    INDEX     h   CREATE INDEX "index_spree_products_on_available_on" ON "spree_products" USING "btree" ("available_on");
 <   DROP INDEX "public"."index_spree_products_on_available_on";
       public         nqokmikthnyfkp    false    250            �           1259    4820937 "   index_spree_products_on_deleted_at    INDEX     d   CREATE INDEX "index_spree_products_on_deleted_at" ON "spree_products" USING "btree" ("deleted_at");
 :   DROP INDEX "public"."index_spree_products_on_deleted_at";
       public         nqokmikthnyfkp    false    250            �           1259    4820938 &   index_spree_products_on_discontinue_on    INDEX     l   CREATE INDEX "index_spree_products_on_discontinue_on" ON "spree_products" USING "btree" ("discontinue_on");
 >   DROP INDEX "public"."index_spree_products_on_discontinue_on";
       public         nqokmikthnyfkp    false    250            �           1259    4820939    index_spree_products_on_name    INDEX     X   CREATE INDEX "index_spree_products_on_name" ON "spree_products" USING "btree" ("name");
 4   DROP INDEX "public"."index_spree_products_on_name";
       public         nqokmikthnyfkp    false    250            �           1259    4820940 ,   index_spree_products_on_shipping_category_id    INDEX     x   CREATE INDEX "index_spree_products_on_shipping_category_id" ON "spree_products" USING "btree" ("shipping_category_id");
 D   DROP INDEX "public"."index_spree_products_on_shipping_category_id";
       public         nqokmikthnyfkp    false    250            �           1259    4820941    index_spree_products_on_slug    INDEX     _   CREATE UNIQUE INDEX "index_spree_products_on_slug" ON "spree_products" USING "btree" ("slug");
 4   DROP INDEX "public"."index_spree_products_on_slug";
       public         nqokmikthnyfkp    false    250            �           1259    4820942 '   index_spree_products_on_tax_category_id    INDEX     n   CREATE INDEX "index_spree_products_on_tax_category_id" ON "spree_products" USING "btree" ("tax_category_id");
 ?   DROP INDEX "public"."index_spree_products_on_tax_category_id";
       public         nqokmikthnyfkp    false    250            �           1259    4820951 '   index_spree_products_taxons_on_position    INDEX     n   CREATE INDEX "index_spree_products_taxons_on_position" ON "spree_products_taxons" USING "btree" ("position");
 ?   DROP INDEX "public"."index_spree_products_taxons_on_position";
       public         nqokmikthnyfkp    false    252            �           1259    4820952 )   index_spree_products_taxons_on_product_id    INDEX     r   CREATE INDEX "index_spree_products_taxons_on_product_id" ON "spree_products_taxons" USING "btree" ("product_id");
 A   DROP INDEX "public"."index_spree_products_taxons_on_product_id";
       public         nqokmikthnyfkp    false    252            �           1259    4820953 '   index_spree_products_taxons_on_taxon_id    INDEX     n   CREATE INDEX "index_spree_products_taxons_on_taxon_id" ON "spree_products_taxons" USING "btree" ("taxon_id");
 ?   DROP INDEX "public"."index_spree_products_taxons_on_taxon_id";
       public         nqokmikthnyfkp    false    252            �           1259    4820963 >   index_spree_promotion_action_line_items_on_promotion_action_id    INDEX     �   CREATE INDEX "index_spree_promotion_action_line_items_on_promotion_action_id" ON "spree_promotion_action_line_items" USING "btree" ("promotion_action_id");
 V   DROP INDEX "public"."index_spree_promotion_action_line_items_on_promotion_action_id";
       public         nqokmikthnyfkp    false    254            �           1259    4820964 5   index_spree_promotion_action_line_items_on_variant_id    INDEX     �   CREATE INDEX "index_spree_promotion_action_line_items_on_variant_id" ON "spree_promotion_action_line_items" USING "btree" ("variant_id");
 M   DROP INDEX "public"."index_spree_promotion_action_line_items_on_variant_id";
       public         nqokmikthnyfkp    false    254            �           1259    4820976 +   index_spree_promotion_actions_on_deleted_at    INDEX     v   CREATE INDEX "index_spree_promotion_actions_on_deleted_at" ON "spree_promotion_actions" USING "btree" ("deleted_at");
 C   DROP INDEX "public"."index_spree_promotion_actions_on_deleted_at";
       public         nqokmikthnyfkp    false    256            �           1259    4820977 ,   index_spree_promotion_actions_on_id_and_type    INDEX     w   CREATE INDEX "index_spree_promotion_actions_on_id_and_type" ON "spree_promotion_actions" USING "btree" ("id", "type");
 D   DROP INDEX "public"."index_spree_promotion_actions_on_id_and_type";
       public         nqokmikthnyfkp    false    256    256            �           1259    4820978 -   index_spree_promotion_actions_on_promotion_id    INDEX     z   CREATE INDEX "index_spree_promotion_actions_on_promotion_id" ON "spree_promotion_actions" USING "btree" ("promotion_id");
 E   DROP INDEX "public"."index_spree_promotion_actions_on_promotion_id";
       public         nqokmikthnyfkp    false    256            �           1259    4820998 6   index_spree_promotion_rule_taxons_on_promotion_rule_id    INDEX     �   CREATE INDEX "index_spree_promotion_rule_taxons_on_promotion_rule_id" ON "spree_promotion_rule_taxons" USING "btree" ("promotion_rule_id");
 N   DROP INDEX "public"."index_spree_promotion_rule_taxons_on_promotion_rule_id";
       public         nqokmikthnyfkp    false    260            �           1259    4820999 -   index_spree_promotion_rule_taxons_on_taxon_id    INDEX     z   CREATE INDEX "index_spree_promotion_rule_taxons_on_taxon_id" ON "spree_promotion_rule_taxons" USING "btree" ("taxon_id");
 E   DROP INDEX "public"."index_spree_promotion_rule_taxons_on_taxon_id";
       public         nqokmikthnyfkp    false    260            �           1259    4821022 +   index_spree_promotion_rules_on_promotion_id    INDEX     v   CREATE INDEX "index_spree_promotion_rules_on_promotion_id" ON "spree_promotion_rules" USING "btree" ("promotion_id");
 C   DROP INDEX "public"."index_spree_promotion_rules_on_promotion_id";
       public         nqokmikthnyfkp    false    264            �           1259    4821037 #   index_spree_promotions_on_advertise    INDEX     f   CREATE INDEX "index_spree_promotions_on_advertise" ON "spree_promotions" USING "btree" ("advertise");
 ;   DROP INDEX "public"."index_spree_promotions_on_advertise";
       public         nqokmikthnyfkp    false    266            �           1259    4821038    index_spree_promotions_on_code    INDEX     \   CREATE INDEX "index_spree_promotions_on_code" ON "spree_promotions" USING "btree" ("code");
 6   DROP INDEX "public"."index_spree_promotions_on_code";
       public         nqokmikthnyfkp    false    266            �           1259    4821039 $   index_spree_promotions_on_expires_at    INDEX     h   CREATE INDEX "index_spree_promotions_on_expires_at" ON "spree_promotions" USING "btree" ("expires_at");
 <   DROP INDEX "public"."index_spree_promotions_on_expires_at";
       public         nqokmikthnyfkp    false    266            �           1259    4821040 %   index_spree_promotions_on_id_and_type    INDEX     i   CREATE INDEX "index_spree_promotions_on_id_and_type" ON "spree_promotions" USING "btree" ("id", "type");
 =   DROP INDEX "public"."index_spree_promotions_on_id_and_type";
       public         nqokmikthnyfkp    false    266    266                        1259    4821041 /   index_spree_promotions_on_promotion_category_id    INDEX     ~   CREATE INDEX "index_spree_promotions_on_promotion_category_id" ON "spree_promotions" USING "btree" ("promotion_category_id");
 G   DROP INDEX "public"."index_spree_promotions_on_promotion_category_id";
       public         nqokmikthnyfkp    false    266                       1259    4821042 #   index_spree_promotions_on_starts_at    INDEX     f   CREATE INDEX "index_spree_promotions_on_starts_at" ON "spree_promotions" USING "btree" ("starts_at");
 ;   DROP INDEX "public"."index_spree_promotions_on_starts_at";
       public         nqokmikthnyfkp    false    266                       1259    4821054    index_spree_properties_on_name    INDEX     \   CREATE INDEX "index_spree_properties_on_name" ON "spree_properties" USING "btree" ("name");
 6   DROP INDEX "public"."index_spree_properties_on_name";
       public         nqokmikthnyfkp    false    268            
           1259    4821072 9   index_spree_prototype_taxons_on_prototype_id_and_taxon_id    INDEX     �   CREATE INDEX "index_spree_prototype_taxons_on_prototype_id_and_taxon_id" ON "spree_prototype_taxons" USING "btree" ("prototype_id", "taxon_id");
 Q   DROP INDEX "public"."index_spree_prototype_taxons_on_prototype_id_and_taxon_id";
       public         nqokmikthnyfkp    false    272    272                       1259    4821073 (   index_spree_prototype_taxons_on_taxon_id    INDEX     p   CREATE INDEX "index_spree_prototype_taxons_on_taxon_id" ON "spree_prototype_taxons" USING "btree" ("taxon_id");
 @   DROP INDEX "public"."index_spree_prototype_taxons_on_taxon_id";
       public         nqokmikthnyfkp    false    272                       1259    4821136 '   index_spree_reimbursement_types_on_type    INDEX     n   CREATE INDEX "index_spree_reimbursement_types_on_type" ON "spree_reimbursement_types" USING "btree" ("type");
 ?   DROP INDEX "public"."index_spree_reimbursement_types_on_type";
       public         nqokmikthnyfkp    false    282                       1259    4821148 0   index_spree_reimbursements_on_customer_return_id    INDEX     �   CREATE INDEX "index_spree_reimbursements_on_customer_return_id" ON "spree_reimbursements" USING "btree" ("customer_return_id");
 H   DROP INDEX "public"."index_spree_reimbursements_on_customer_return_id";
       public         nqokmikthnyfkp    false    284                       1259    4821149 &   index_spree_reimbursements_on_order_id    INDEX     l   CREATE INDEX "index_spree_reimbursements_on_order_id" ON "spree_reimbursements" USING "btree" ("order_id");
 >   DROP INDEX "public"."index_spree_reimbursements_on_order_id";
       public         nqokmikthnyfkp    false    284            $           1259    4821191 6   index_spree_return_items_on_exchange_inventory_unit_id    INDEX     �   CREATE INDEX "index_spree_return_items_on_exchange_inventory_unit_id" ON "spree_return_items" USING "btree" ("exchange_inventory_unit_id");
 N   DROP INDEX "public"."index_spree_return_items_on_exchange_inventory_unit_id";
       public         nqokmikthnyfkp    false    290            '           1259    4821205    index_spree_roles_on_editable    INDEX     Z   CREATE INDEX "index_spree_roles_on_editable" ON "spree_roles" USING "btree" ("editable");
 5   DROP INDEX "public"."index_spree_roles_on_editable";
       public         nqokmikthnyfkp    false    292            (           1259    4821206    index_spree_roles_on_is_default    INDEX     ^   CREATE INDEX "index_spree_roles_on_is_default" ON "spree_roles" USING "btree" ("is_default");
 7   DROP INDEX "public"."index_spree_roles_on_is_default";
       public         nqokmikthnyfkp    false    292            )           1259    4821207    index_spree_roles_on_name    INDEX     R   CREATE INDEX "index_spree_roles_on_name" ON "spree_roles" USING "btree" ("name");
 1   DROP INDEX "public"."index_spree_roles_on_name";
       public         nqokmikthnyfkp    false    292            ,           1259    4821211 .   index_spree_roles_permissions_on_permission_id    INDEX     |   CREATE INDEX "index_spree_roles_permissions_on_permission_id" ON "spree_roles_permissions" USING "btree" ("permission_id");
 F   DROP INDEX "public"."index_spree_roles_permissions_on_permission_id";
       public         nqokmikthnyfkp    false    293            -           1259    4821212 (   index_spree_roles_permissions_on_role_id    INDEX     p   CREATE INDEX "index_spree_roles_permissions_on_role_id" ON "spree_roles_permissions" USING "btree" ("role_id");
 @   DROP INDEX "public"."index_spree_roles_permissions_on_role_id";
       public         nqokmikthnyfkp    false    293            .           1259    4821221 "   index_spree_roles_users_on_role_id    INDEX     d   CREATE INDEX "index_spree_roles_users_on_role_id" ON "spree_roles_users" USING "btree" ("role_id");
 :   DROP INDEX "public"."index_spree_roles_users_on_role_id";
       public         nqokmikthnyfkp    false    295            /           1259    4821222 "   index_spree_roles_users_on_user_id    INDEX     d   CREATE INDEX "index_spree_roles_users_on_user_id" ON "spree_roles_users" USING "btree" ("user_id");
 :   DROP INDEX "public"."index_spree_roles_users_on_user_id";
       public         nqokmikthnyfkp    false    295            3           1259    4821242 #   index_spree_shipments_on_address_id    INDEX     f   CREATE INDEX "index_spree_shipments_on_address_id" ON "spree_shipments" USING "btree" ("address_id");
 ;   DROP INDEX "public"."index_spree_shipments_on_address_id";
       public         nqokmikthnyfkp    false    297            4           1259    4821243 )   index_spree_shipments_on_delivery_slot_id    INDEX     r   CREATE INDEX "index_spree_shipments_on_delivery_slot_id" ON "spree_shipments" USING "btree" ("delivery_slot_id");
 A   DROP INDEX "public"."index_spree_shipments_on_delivery_slot_id";
       public         nqokmikthnyfkp    false    297            5           1259    4821245 !   index_spree_shipments_on_order_id    INDEX     b   CREATE INDEX "index_spree_shipments_on_order_id" ON "spree_shipments" USING "btree" ("order_id");
 9   DROP INDEX "public"."index_spree_shipments_on_order_id";
       public         nqokmikthnyfkp    false    297            6           1259    4821246 *   index_spree_shipments_on_stock_location_id    INDEX     t   CREATE INDEX "index_spree_shipments_on_stock_location_id" ON "spree_shipments" USING "btree" ("stock_location_id");
 B   DROP INDEX "public"."index_spree_shipments_on_stock_location_id";
       public         nqokmikthnyfkp    false    297            9           1259    4821258 '   index_spree_shipping_categories_on_name    INDEX     n   CREATE INDEX "index_spree_shipping_categories_on_name" ON "spree_shipping_categories" USING "btree" ("name");
 ?   DROP INDEX "public"."index_spree_shipping_categories_on_name";
       public         nqokmikthnyfkp    false    299            <           1259    4821268 <   index_spree_shipping_method_categories_on_shipping_method_id    INDEX     �   CREATE INDEX "index_spree_shipping_method_categories_on_shipping_method_id" ON "spree_shipping_method_categories" USING "btree" ("shipping_method_id");
 T   DROP INDEX "public"."index_spree_shipping_method_categories_on_shipping_method_id";
       public         nqokmikthnyfkp    false    301            B           1259    4821289 *   index_spree_shipping_methods_on_deleted_at    INDEX     t   CREATE INDEX "index_spree_shipping_methods_on_deleted_at" ON "spree_shipping_methods" USING "btree" ("deleted_at");
 B   DROP INDEX "public"."index_spree_shipping_methods_on_deleted_at";
       public         nqokmikthnyfkp    false    305            C           1259    4821290 /   index_spree_shipping_methods_on_tax_category_id    INDEX     ~   CREATE INDEX "index_spree_shipping_methods_on_tax_category_id" ON "spree_shipping_methods" USING "btree" ("tax_category_id");
 G   DROP INDEX "public"."index_spree_shipping_methods_on_tax_category_id";
       public         nqokmikthnyfkp    false    305            F           1259    4821301 &   index_spree_shipping_rates_on_selected    INDEX     l   CREATE INDEX "index_spree_shipping_rates_on_selected" ON "spree_shipping_rates" USING "btree" ("selected");
 >   DROP INDEX "public"."index_spree_shipping_rates_on_selected";
       public         nqokmikthnyfkp    false    307            G           1259    4821303 )   index_spree_shipping_rates_on_tax_rate_id    INDEX     r   CREATE INDEX "index_spree_shipping_rates_on_tax_rate_id" ON "spree_shipping_rates" USING "btree" ("tax_rate_id");
 A   DROP INDEX "public"."index_spree_shipping_rates_on_tax_rate_id";
       public         nqokmikthnyfkp    false    307            K           1259    4821315 :   index_spree_state_changes_on_stateful_id_and_stateful_type    INDEX     �   CREATE INDEX "index_spree_state_changes_on_stateful_id_and_stateful_type" ON "spree_state_changes" USING "btree" ("stateful_id", "stateful_type");
 R   DROP INDEX "public"."index_spree_state_changes_on_stateful_id_and_stateful_type";
       public         nqokmikthnyfkp    false    309    309            N           1259    4821327     index_spree_states_on_country_id    INDEX     `   CREATE INDEX "index_spree_states_on_country_id" ON "spree_states" USING "btree" ("country_id");
 8   DROP INDEX "public"."index_spree_states_on_country_id";
       public         nqokmikthnyfkp    false    311            Q           1259    4821338 (   index_spree_stock_items_on_backorderable    INDEX     p   CREATE INDEX "index_spree_stock_items_on_backorderable" ON "spree_stock_items" USING "btree" ("backorderable");
 @   DROP INDEX "public"."index_spree_stock_items_on_backorderable";
       public         nqokmikthnyfkp    false    313            R           1259    4821339 %   index_spree_stock_items_on_deleted_at    INDEX     j   CREATE INDEX "index_spree_stock_items_on_deleted_at" ON "spree_stock_items" USING "btree" ("deleted_at");
 =   DROP INDEX "public"."index_spree_stock_items_on_deleted_at";
       public         nqokmikthnyfkp    false    313            S           1259    4821341 %   index_spree_stock_items_on_variant_id    INDEX     j   CREATE INDEX "index_spree_stock_items_on_variant_id" ON "spree_stock_items" USING "btree" ("variant_id");
 =   DROP INDEX "public"."index_spree_stock_items_on_variant_id";
       public         nqokmikthnyfkp    false    313            W           1259    4821357 %   index_spree_stock_locations_on_active    INDEX     j   CREATE INDEX "index_spree_stock_locations_on_active" ON "spree_stock_locations" USING "btree" ("active");
 =   DROP INDEX "public"."index_spree_stock_locations_on_active";
       public         nqokmikthnyfkp    false    315            X           1259    4821358 4   index_spree_stock_locations_on_backorderable_default    INDEX     �   CREATE INDEX "index_spree_stock_locations_on_backorderable_default" ON "spree_stock_locations" USING "btree" ("backorderable_default");
 L   DROP INDEX "public"."index_spree_stock_locations_on_backorderable_default";
       public         nqokmikthnyfkp    false    315            Y           1259    4821359 )   index_spree_stock_locations_on_country_id    INDEX     r   CREATE INDEX "index_spree_stock_locations_on_country_id" ON "spree_stock_locations" USING "btree" ("country_id");
 A   DROP INDEX "public"."index_spree_stock_locations_on_country_id";
       public         nqokmikthnyfkp    false    315            Z           1259    4821360 5   index_spree_stock_locations_on_propagate_all_variants    INDEX     �   CREATE INDEX "index_spree_stock_locations_on_propagate_all_variants" ON "spree_stock_locations" USING "btree" ("propagate_all_variants");
 M   DROP INDEX "public"."index_spree_stock_locations_on_propagate_all_variants";
       public         nqokmikthnyfkp    false    315            [           1259    4821361 '   index_spree_stock_locations_on_state_id    INDEX     n   CREATE INDEX "index_spree_stock_locations_on_state_id" ON "spree_stock_locations" USING "btree" ("state_id");
 ?   DROP INDEX "public"."index_spree_stock_locations_on_state_id";
       public         nqokmikthnyfkp    false    315            ^           1259    4821374 ,   index_spree_stock_movements_on_stock_item_id    INDEX     x   CREATE INDEX "index_spree_stock_movements_on_stock_item_id" ON "spree_stock_movements" USING "btree" ("stock_item_id");
 D   DROP INDEX "public"."index_spree_stock_movements_on_stock_item_id";
       public         nqokmikthnyfkp    false    317            a           1259    4821386 6   index_spree_stock_transfers_on_destination_location_id    INDEX     �   CREATE INDEX "index_spree_stock_transfers_on_destination_location_id" ON "spree_stock_transfers" USING "btree" ("destination_location_id");
 N   DROP INDEX "public"."index_spree_stock_transfers_on_destination_location_id";
       public         nqokmikthnyfkp    false    319            b           1259    4821387 %   index_spree_stock_transfers_on_number    INDEX     j   CREATE INDEX "index_spree_stock_transfers_on_number" ON "spree_stock_transfers" USING "btree" ("number");
 =   DROP INDEX "public"."index_spree_stock_transfers_on_number";
       public         nqokmikthnyfkp    false    319            c           1259    4821388 1   index_spree_stock_transfers_on_source_location_id    INDEX     �   CREATE INDEX "index_spree_stock_transfers_on_source_location_id" ON "spree_stock_transfers" USING "btree" ("source_location_id");
 I   DROP INDEX "public"."index_spree_stock_transfers_on_source_location_id";
       public         nqokmikthnyfkp    false    319            h           1259    4821413 2   index_spree_store_credit_events_on_store_credit_id    INDEX     �   CREATE INDEX "index_spree_store_credit_events_on_store_credit_id" ON "spree_store_credit_events" USING "btree" ("store_credit_id");
 J   DROP INDEX "public"."index_spree_store_credit_events_on_store_credit_id";
       public         nqokmikthnyfkp    false    323            l           1259    4821425 *   index_spree_store_credit_types_on_priority    INDEX     t   CREATE INDEX "index_spree_store_credit_types_on_priority" ON "spree_store_credit_types" USING "btree" ("priority");
 B   DROP INDEX "public"."index_spree_store_credit_types_on_priority";
       public         nqokmikthnyfkp    false    325            o           1259    4821440 '   index_spree_store_credits_on_deleted_at    INDEX     n   CREATE INDEX "index_spree_store_credits_on_deleted_at" ON "spree_store_credits" USING "btree" ("deleted_at");
 ?   DROP INDEX "public"."index_spree_store_credits_on_deleted_at";
       public         nqokmikthnyfkp    false    327            p           1259    4821442 $   index_spree_store_credits_on_type_id    INDEX     h   CREATE INDEX "index_spree_store_credits_on_type_id" ON "spree_store_credits" USING "btree" ("type_id");
 <   DROP INDEX "public"."index_spree_store_credits_on_type_id";
       public         nqokmikthnyfkp    false    327            q           1259    4821443 $   index_spree_store_credits_on_user_id    INDEX     h   CREATE INDEX "index_spree_store_credits_on_user_id" ON "spree_store_credits" USING "btree" ("user_id");
 <   DROP INDEX "public"."index_spree_store_credits_on_user_id";
       public         nqokmikthnyfkp    false    327            u           1259    4821456    index_spree_stores_on_code    INDEX     T   CREATE INDEX "index_spree_stores_on_code" ON "spree_stores" USING "btree" ("code");
 2   DROP INDEX "public"."index_spree_stores_on_code";
       public         nqokmikthnyfkp    false    329            v           1259    4821457    index_spree_stores_on_default    INDEX     Z   CREATE INDEX "index_spree_stores_on_default" ON "spree_stores" USING "btree" ("default");
 5   DROP INDEX "public"."index_spree_stores_on_default";
       public         nqokmikthnyfkp    false    329            w           1259    4821458    index_spree_stores_on_url    INDEX     R   CREATE INDEX "index_spree_stores_on_url" ON "spree_stores" USING "btree" ("url");
 1   DROP INDEX "public"."index_spree_stores_on_url";
       public         nqokmikthnyfkp    false    329            z           1259    4821470    index_spree_taggings_on_context    INDEX     ^   CREATE INDEX "index_spree_taggings_on_context" ON "spree_taggings" USING "btree" ("context");
 7   DROP INDEX "public"."index_spree_taggings_on_context";
       public         nqokmikthnyfkp    false    331            {           1259    4821472    index_spree_taggings_on_tag_id    INDEX     \   CREATE INDEX "index_spree_taggings_on_tag_id" ON "spree_taggings" USING "btree" ("tag_id");
 6   DROP INDEX "public"."index_spree_taggings_on_tag_id";
       public         nqokmikthnyfkp    false    331            |           1259    4821474 #   index_spree_taggings_on_taggable_id    INDEX     f   CREATE INDEX "index_spree_taggings_on_taggable_id" ON "spree_taggings" USING "btree" ("taggable_id");
 ;   DROP INDEX "public"."index_spree_taggings_on_taggable_id";
       public         nqokmikthnyfkp    false    331            }           1259    4821475 %   index_spree_taggings_on_taggable_type    INDEX     j   CREATE INDEX "index_spree_taggings_on_taggable_type" ON "spree_taggings" USING "btree" ("taggable_type");
 =   DROP INDEX "public"."index_spree_taggings_on_taggable_type";
       public         nqokmikthnyfkp    false    331            ~           1259    4821477 !   index_spree_taggings_on_tagger_id    INDEX     b   CREATE INDEX "index_spree_taggings_on_tagger_id" ON "spree_taggings" USING "btree" ("tagger_id");
 9   DROP INDEX "public"."index_spree_taggings_on_tagger_id";
       public         nqokmikthnyfkp    false    331                       1259    4821476 1   index_spree_taggings_on_tagger_id_and_tagger_type    INDEX     �   CREATE INDEX "index_spree_taggings_on_tagger_id_and_tagger_type" ON "spree_taggings" USING "btree" ("tagger_id", "tagger_type");
 I   DROP INDEX "public"."index_spree_taggings_on_tagger_id_and_tagger_type";
       public         nqokmikthnyfkp    false    331    331            �           1259    4821490    index_spree_tags_on_name    INDEX     W   CREATE UNIQUE INDEX "index_spree_tags_on_name" ON "spree_tags" USING "btree" ("name");
 0   DROP INDEX "public"."index_spree_tags_on_name";
       public         nqokmikthnyfkp    false    333            �           1259    4821503 (   index_spree_tax_categories_on_deleted_at    INDEX     p   CREATE INDEX "index_spree_tax_categories_on_deleted_at" ON "spree_tax_categories" USING "btree" ("deleted_at");
 @   DROP INDEX "public"."index_spree_tax_categories_on_deleted_at";
       public         nqokmikthnyfkp    false    335            �           1259    4821504 (   index_spree_tax_categories_on_is_default    INDEX     p   CREATE INDEX "index_spree_tax_categories_on_is_default" ON "spree_tax_categories" USING "btree" ("is_default");
 @   DROP INDEX "public"."index_spree_tax_categories_on_is_default";
       public         nqokmikthnyfkp    false    335            �           1259    4821518 #   index_spree_tax_rates_on_deleted_at    INDEX     f   CREATE INDEX "index_spree_tax_rates_on_deleted_at" ON "spree_tax_rates" USING "btree" ("deleted_at");
 ;   DROP INDEX "public"."index_spree_tax_rates_on_deleted_at";
       public         nqokmikthnyfkp    false    337            �           1259    4821519 *   index_spree_tax_rates_on_included_in_price    INDEX     t   CREATE INDEX "index_spree_tax_rates_on_included_in_price" ON "spree_tax_rates" USING "btree" ("included_in_price");
 B   DROP INDEX "public"."index_spree_tax_rates_on_included_in_price";
       public         nqokmikthnyfkp    false    337            �           1259    4821520 +   index_spree_tax_rates_on_show_rate_in_label    INDEX     v   CREATE INDEX "index_spree_tax_rates_on_show_rate_in_label" ON "spree_tax_rates" USING "btree" ("show_rate_in_label");
 C   DROP INDEX "public"."index_spree_tax_rates_on_show_rate_in_label";
       public         nqokmikthnyfkp    false    337            �           1259    4821521 (   index_spree_tax_rates_on_tax_category_id    INDEX     p   CREATE INDEX "index_spree_tax_rates_on_tax_category_id" ON "spree_tax_rates" USING "btree" ("tax_category_id");
 @   DROP INDEX "public"."index_spree_tax_rates_on_tax_category_id";
       public         nqokmikthnyfkp    false    337            �           1259    4821522     index_spree_tax_rates_on_zone_id    INDEX     `   CREATE INDEX "index_spree_tax_rates_on_zone_id" ON "spree_tax_rates" USING "btree" ("zone_id");
 8   DROP INDEX "public"."index_spree_tax_rates_on_zone_id";
       public         nqokmikthnyfkp    false    337            �           1259    4821535 "   index_spree_taxonomies_on_position    INDEX     d   CREATE INDEX "index_spree_taxonomies_on_position" ON "spree_taxonomies" USING "btree" ("position");
 :   DROP INDEX "public"."index_spree_taxonomies_on_position";
       public         nqokmikthnyfkp    false    339            �           1259    4821548    index_spree_taxons_on_lft    INDEX     R   CREATE INDEX "index_spree_taxons_on_lft" ON "spree_taxons" USING "btree" ("lft");
 1   DROP INDEX "public"."index_spree_taxons_on_lft";
       public         nqokmikthnyfkp    false    341            �           1259    4821549    index_spree_taxons_on_name    INDEX     T   CREATE INDEX "index_spree_taxons_on_name" ON "spree_taxons" USING "btree" ("name");
 2   DROP INDEX "public"."index_spree_taxons_on_name";
       public         nqokmikthnyfkp    false    341            �           1259    4821552    index_spree_taxons_on_position    INDEX     \   CREATE INDEX "index_spree_taxons_on_position" ON "spree_taxons" USING "btree" ("position");
 6   DROP INDEX "public"."index_spree_taxons_on_position";
       public         nqokmikthnyfkp    false    341            �           1259    4821553    index_spree_taxons_on_rgt    INDEX     R   CREATE INDEX "index_spree_taxons_on_rgt" ON "spree_taxons" USING "btree" ("rgt");
 1   DROP INDEX "public"."index_spree_taxons_on_rgt";
       public         nqokmikthnyfkp    false    341            �           1259    4821578 (   index_spree_themes_templates_on_theme_id    INDEX     p   CREATE INDEX "index_spree_themes_templates_on_theme_id" ON "spree_themes_templates" USING "btree" ("theme_id");
 @   DROP INDEX "public"."index_spree_themes_templates_on_theme_id";
       public         nqokmikthnyfkp    false    345            �           1259    4821591    index_spree_trackers_on_active    INDEX     \   CREATE INDEX "index_spree_trackers_on_active" ON "spree_trackers" USING "btree" ("active");
 6   DROP INDEX "public"."index_spree_trackers_on_active";
       public         nqokmikthnyfkp    false    347            �           1259    4821605 $   index_spree_users_on_bill_address_id    INDEX     h   CREATE INDEX "index_spree_users_on_bill_address_id" ON "spree_users" USING "btree" ("bill_address_id");
 <   DROP INDEX "public"."index_spree_users_on_bill_address_id";
       public         nqokmikthnyfkp    false    349            �           1259    4821606    index_spree_users_on_deleted_at    INDEX     ^   CREATE INDEX "index_spree_users_on_deleted_at" ON "spree_users" USING "btree" ("deleted_at");
 7   DROP INDEX "public"."index_spree_users_on_deleted_at";
       public         nqokmikthnyfkp    false    349            �           1259    4821608 $   index_spree_users_on_ship_address_id    INDEX     h   CREATE INDEX "index_spree_users_on_ship_address_id" ON "spree_users" USING "btree" ("ship_address_id");
 <   DROP INDEX "public"."index_spree_users_on_ship_address_id";
       public         nqokmikthnyfkp    false    349            �           1259    4821609 "   index_spree_users_on_spree_api_key    INDEX     d   CREATE INDEX "index_spree_users_on_spree_api_key" ON "spree_users" USING "btree" ("spree_api_key");
 :   DROP INDEX "public"."index_spree_users_on_spree_api_key";
       public         nqokmikthnyfkp    false    349            �           1259    4821625 "   index_spree_variants_on_deleted_at    INDEX     d   CREATE INDEX "index_spree_variants_on_deleted_at" ON "spree_variants" USING "btree" ("deleted_at");
 :   DROP INDEX "public"."index_spree_variants_on_deleted_at";
       public         nqokmikthnyfkp    false    351            �           1259    4821626 &   index_spree_variants_on_discontinue_on    INDEX     l   CREATE INDEX "index_spree_variants_on_discontinue_on" ON "spree_variants" USING "btree" ("discontinue_on");
 >   DROP INDEX "public"."index_spree_variants_on_discontinue_on";
       public         nqokmikthnyfkp    false    351            �           1259    4821627 !   index_spree_variants_on_is_master    INDEX     b   CREATE INDEX "index_spree_variants_on_is_master" ON "spree_variants" USING "btree" ("is_master");
 9   DROP INDEX "public"."index_spree_variants_on_is_master";
       public         nqokmikthnyfkp    false    351            �           1259    4821628     index_spree_variants_on_position    INDEX     `   CREATE INDEX "index_spree_variants_on_position" ON "spree_variants" USING "btree" ("position");
 8   DROP INDEX "public"."index_spree_variants_on_position";
       public         nqokmikthnyfkp    false    351            �           1259    4821629 "   index_spree_variants_on_product_id    INDEX     d   CREATE INDEX "index_spree_variants_on_product_id" ON "spree_variants" USING "btree" ("product_id");
 :   DROP INDEX "public"."index_spree_variants_on_product_id";
       public         nqokmikthnyfkp    false    351            �           1259    4821630    index_spree_variants_on_sku    INDEX     V   CREATE INDEX "index_spree_variants_on_sku" ON "spree_variants" USING "btree" ("sku");
 3   DROP INDEX "public"."index_spree_variants_on_sku";
       public         nqokmikthnyfkp    false    351            �           1259    4821631 '   index_spree_variants_on_tax_category_id    INDEX     n   CREATE INDEX "index_spree_variants_on_tax_category_id" ON "spree_variants" USING "btree" ("tax_category_id");
 ?   DROP INDEX "public"."index_spree_variants_on_tax_category_id";
       public         nqokmikthnyfkp    false    351            �           1259    4821632 '   index_spree_variants_on_track_inventory    INDEX     n   CREATE INDEX "index_spree_variants_on_track_inventory" ON "spree_variants" USING "btree" ("track_inventory");
 ?   DROP INDEX "public"."index_spree_variants_on_track_inventory";
       public         nqokmikthnyfkp    false    351            �           1259    4821644 #   index_spree_zone_members_on_zone_id    INDEX     f   CREATE INDEX "index_spree_zone_members_on_zone_id" ON "spree_zone_members" USING "btree" ("zone_id");
 ;   DROP INDEX "public"."index_spree_zone_members_on_zone_id";
       public         nqokmikthnyfkp    false    353            �           1259    4821645 9   index_spree_zone_members_on_zoneable_id_and_zoneable_type    INDEX     �   CREATE INDEX "index_spree_zone_members_on_zoneable_id_and_zoneable_type" ON "spree_zone_members" USING "btree" ("zoneable_id", "zoneable_type");
 Q   DROP INDEX "public"."index_spree_zone_members_on_zoneable_id_and_zoneable_type";
       public         nqokmikthnyfkp    false    353    353            �           1259    4821659     index_spree_zones_on_default_tax    INDEX     `   CREATE INDEX "index_spree_zones_on_default_tax" ON "spree_zones" USING "btree" ("default_tax");
 8   DROP INDEX "public"."index_spree_zones_on_default_tax";
       public         nqokmikthnyfkp    false    355            �           1259    4821660    index_spree_zones_on_kind    INDEX     R   CREATE INDEX "index_spree_zones_on_kind" ON "spree_zones" USING "btree" ("kind");
 1   DROP INDEX "public"."index_spree_zones_on_kind";
       public         nqokmikthnyfkp    false    355            �           1259    4821550    index_taxons_on_parent_id    INDEX     X   CREATE INDEX "index_taxons_on_parent_id" ON "spree_taxons" USING "btree" ("parent_id");
 1   DROP INDEX "public"."index_taxons_on_parent_id";
       public         nqokmikthnyfkp    false    341            �           1259    4821551    index_taxons_on_permalink    INDEX     X   CREATE INDEX "index_taxons_on_permalink" ON "spree_taxons" USING "btree" ("permalink");
 1   DROP INDEX "public"."index_taxons_on_permalink";
       public         nqokmikthnyfkp    false    341            �           1259    4821554    index_taxons_on_taxonomy_id    INDEX     \   CREATE INDEX "index_taxons_on_taxonomy_id" ON "spree_taxons" USING "btree" ("taxonomy_id");
 3   DROP INDEX "public"."index_taxons_on_taxonomy_id";
       public         nqokmikthnyfkp    false    341            H           1259    4821302    spree_shipping_rates_join_index    INDEX     �   CREATE UNIQUE INDEX "spree_shipping_rates_join_index" ON "spree_shipping_rates" USING "btree" ("shipment_id", "shipping_method_id");
 7   DROP INDEX "public"."spree_shipping_rates_join_index";
       public         nqokmikthnyfkp    false    307    307            i           1259    4821412 $   spree_store_credit_events_originator    INDEX     �   CREATE INDEX "spree_store_credit_events_originator" ON "spree_store_credit_events" USING "btree" ("originator_id", "originator_type");
 <   DROP INDEX "public"."spree_store_credit_events_originator";
       public         nqokmikthnyfkp    false    323    323            r           1259    4821441    spree_store_credits_originator    INDEX     {   CREATE INDEX "spree_store_credits_originator" ON "spree_store_credits" USING "btree" ("originator_id", "originator_type");
 6   DROP INDEX "public"."spree_store_credits_originator";
       public         nqokmikthnyfkp    false    327    327            �           1259    4821471    spree_taggings_idx    INDEX     �   CREATE UNIQUE INDEX "spree_taggings_idx" ON "spree_taggings" USING "btree" ("tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type");
 *   DROP INDEX "public"."spree_taggings_idx";
       public         nqokmikthnyfkp    false    331    331    331    331    331    331            �           1259    4821473    spree_taggings_idy    INDEX     ~   CREATE INDEX "spree_taggings_idy" ON "spree_taggings" USING "btree" ("taggable_id", "taggable_type", "tagger_id", "context");
 *   DROP INDEX "public"."spree_taggings_idy";
       public         nqokmikthnyfkp    false    331    331    331    331            V           1259    4821340    stock_item_by_loc_and_var_id    INDEX     v   CREATE INDEX "stock_item_by_loc_and_var_id" ON "spree_stock_items" USING "btree" ("stock_location_id", "variant_id");
 4   DROP INDEX "public"."stock_item_by_loc_and_var_id";
       public         nqokmikthnyfkp    false    313    313            ?           1259    4821267 '   unique_spree_shipping_method_categories    INDEX     �   CREATE UNIQUE INDEX "unique_spree_shipping_method_categories" ON "spree_shipping_method_categories" USING "btree" ("shipping_category_id", "shipping_method_id");
 ?   DROP INDEX "public"."unique_spree_shipping_method_categories";
       public         nqokmikthnyfkp    false    301    301            5   A   x�K�+�,���M�+�,(�O)M.����4204�54�54U04�24�2��340271�#����� �]�      7      x������ � �      9   �  x����n�8��������b�@��7J,�nS;�lt��;���u�1_8�����93^~��c;���=�΃��e���g<�.�g��o�BЂ����	��8 ���<�O�(b�E<f
��L�C���~�i�i��H�/���ul���i?��Õ8H$'7��p|���N��x6R	%f��y�����D �L��?�W�P��օ�]B4S�xE��$DqX6��MO��b��[87����P�	,�Y�u:�V[i��<�S����_�o%����:]�1̭���p8�St�S�PH�h!�I8X��@9I�r���dV.D�0���o�����t�S;�`d,�R�IG1]��n9tBE�@��$0-���jo�3ٔP��X�[ʏÏ�x�WͿ�@�}G�B���'X��맫޿�������r�����8����z��7-����@�]�R�r����Q=��7�����O˽N��2*���"н�B����'5�2�{2v�:B�2g"E�S���)@&��ܴV,U殘�b�f҇�/�=O0��e�S�Xԉ�Z��S�q.��J%�Z�h�&S�'�L؟N����qV�6A�;��j9Zu�6"�T���R����ulL�s��Z��\�]���K#�L�P�*&剰$����`��[�.t@�C,�4����q���o�ɬ4�{��<��q3m�{��V�q���2��B��v��#�SrT��W\d����$bv>�T/�Z�8�Wn`��i���Y�!0���b�7�VjI��ԙ�`]��}�
�+���t��S�l�ъFJ��p�wxjoѳ�Of;�����'Ph�^��hq2۩���%h2�]Ãh��u���2�i�bc���>�T$ؠ��%ŷ�o�������`������Rn�5���]p@��`�Ո����k�`=nN����]��b������^      4   Q  x�U�A��0D��?L�!9$�.��9" ��ڹ[(�փƧ��~n��c����q^g���,�pN�r�S�T5UMUK�R�T-UK�R�T-UK�RժZU�jU��U��VժZ�V�UmU[�V�UmU[�V�UUG�QuTUG�QuTUG�UuU]UW�UuU]UW�UuUEUTEUTEUTEUTEUP��q�s8�s9۹��y��JU�*U��T��RU�JU�����j���*��������������������������������������������������������������������������>>������\�vn�q^��RU�JU�*U��T��RU����j�����j�����j������j������j������j�Z����j�Z�����U��VժZU�jU��U���j�ڪ���j�ڪ���j�:���o���������=�w���~O�����X���=�w�u��=�w�s8_��T�y>�{=��^���T�Z�Q������t�܌ϼo�������@�K���>O�~�����@�,      ;   �  x��Իn�0����)� �p.�jK��S<$m'/�MTB%ː�&}��i�4n�Ͱ!.¿|$uD�K���[���6Z���yo��y׻CmP��mj��1O����[K%��<k�V��K�:`a`�PU�a��]��\Z-��}�z�馴I0��a��`��K�l�R��zv}~6���1u��i27��}�&Ұ��_�"������W+�E to@�5k�<s�X�X�e�T��2�.:�\*VVo5:�KŪp��nmj�F1���`���+��bN��8n�#a /X�ʪ��C����q�H�����h.D<"4��Ub�KAxjE`:�ɣT����T�������~��T=��og-�-4�u qN_n�΋-"m0֑��Q��=�ɾ��c�K����D:٭      =   F  x���?o�0�g�Sd�uw��o��**ԉ������{��$��~��ݳ3�S�sJ���Ǫ�/��&7���jZ](�	r��8&�-�0���q$s<僾�-�.��>��6���fvl�]9��^�J��b��A�z���AU%A�� �� nG'�K Qx@R��|�?Zx�)੸�&ָ"r+P"-"F�f�u��}x[�-�:���>���k`��tQ�(�#V<�%"��p�{��]�4�em6�`��T�/�Xt ��qs��}�>�?���h9m�V�	� �x�����U}nPn�nH�	��J�)}	U�/�J^ڢ(~h��      ?   l  x����N9���O����*��ZhE�6�W��:0�a�ط�r�Bۚ�E�F����������<�����^�Wˇ�r$a\2f�nu��~��4\�������������y?.�0�. ?@�cꑽ0)���7���yǭ�hJ�.v���jv�J��p�O�˛������ݝ/�� ��B�Q=C��;nu�SFq`?b�4�������Z]-�?1?�����et-�!�=\(��$uy�IS��':��FRU�	����r�����r0��9Ĳ�xJ,-D�r�� x ��a�Mr9�� ���E���Y5i�<�H�fXD�9u��+B�Ȧ���ܼ�_���M	j"j�F��
�C/�#j���C9�rA��糺��{fi�'�Sؠ4�`Bm�%�1�:l�j(�=�Z@�L.�P����UI�źS&a�*9Arø�9�>�=\o��~9KL��&j��vc@�j�(� 8䮒�[bA٧v�9����Ь�V����Q	2�U�L�ّ�D6���H�����f�lVs|���������
Y���Fe� �Y=�M��8����k@�3��zV�3qh�=�("ԈJ��Vg|�f0l�mM@K�|~�qq��rt���\�"�,�>��V0z�T�ۆ����'vbpe!ƨ����?�v�Q�ٜ>��tz�Q�t�VX6��k:g���Z&h�V?�<nf����e�b/�ġ�"�:��9>j�ɨ�A&1z]�2�����-ܞ]z��cnJ�j+�i�����a�U֒#SkY4��M|�6l���ǀ-mX�lJ4��6L$Sg�`f����b��=��?_><<:8;;�K#��UF�$M�6@�!`3*�:mV����ނY�x�LB�n�O�wϽ<��Elk�ِY<'6�����RG��C�O���u��Ǘ�����v�y�Y�7�I��4�$�a�(�7�����V���Hz����q[�OT+�fZ��F�Akajíؙ�Et*�h�֜r�v������j5̊�b� �vj�Cjo}���c�r���nŧ�E��i%���3����^
sS�h/WbO�]�^bk�[UC�a����e}jB�8�!�8h�P�[�|X3Pn[� ����&L�nq��w]�/R7�"      A      x������ � �      C   B  x����N�0���S�H��^��
78����L�&U�H��1T��� Pn֎��4��du�'�wM56n�z�ծ>�vK�&K7����]��@�� ̀jBY0%�4*	P��$��%���v�ù�޷Ց��jQ�I���Yh2�υ�6N&�k�721�L�ɘd6-Ph9~`��x ���lZY.�l,Ά��0��VR��PX�BO����zyBS1��sc3�����߄qC�L�x�($�/3�?��R8��p��NffV�jj`HBa���[b!t&��Ov�R�M?n�����W��ۅ��k��:+��S'e���'f�O%      E      x�mZK��H�>{�
ݺˬ�-%�ǐ��J(��Df�2�(G@�d�����am�����(T�c�B�<<�=�2I��(I�9I���Vd�љ���À��]��K3b�_I|y~Q��tVG�0G������|)�{E��}i��$|���C��R4�љ�H�`<$Q
��7���D�d��O$2����s����f�H$�3/F�_@�8�ˣ��u#h��L& �" � �}(j�<�:T�<�([$�4K��C\�ӹ��Nv��>c����R{��ވ~�Ӈ�/��>C6������N|;�5�v�C�;��»g�����E���?��A'+sBv�B�O���N�њ�a�%��	�5x�eQ/��7�D/c
TL5�R�m�\
=U'i΀����D�d����y�����:z0.[������b�\^4�DbYd�+X��HȾ�ؼӤ�t�/$�.��^jU�,;{�Ɣ!3��l��_��dcR?��g�9�����8��+���º�<��1I���8�L	��r,Jc������@������K�oF�K�ȼ<mT�
�',⬎���1������(#U����#kbf���y�#𠾗{��!�e���� ��\x���=:��|-����� ���竡�dxl��Փ�BKXU�f2�N�)a߈���G䨣z��,=ȉR�ו���;Sw����:��ؗ�珝͛�n��n�f߰�,��o�v�2�h8ƿ�/��1��R�2���@��m���e��z�G�y����	:���:<�	�����2a�� 'x@�&��qF������wr��s���Y�xsD,��L��{MN�K�ƺ�����W�($��	0��ץV?�GU0�&��KK���4�|�˗���N7�����G#r�1+�����F���!&g'����8�}J��/�|/_��x�<��G�A�Ȅ\�"��7�9�E}P�w��	�f�'D��9 �U��
J��&ͣ�w�10��W�W��ظl̈́�")|���w ���s�x�N��I'��Kp�!���]B��!�4�8LI�C��s�a�tK�H����< ���z�i�ʘ6xV&v��Z.���8����΋B<�:匧�����>dS���n���xF2[zQ̬e<&y~)�׆�..��^ؘ���!-�cc	ְS�Ģ��W��d���G��+Z����k?PE�9��>b�.fMxN�2��o�B�e"2	��(S#Z�"��nP>�ձ8�
h�SQ�s��X��������"�d�O-\��
9�K�����hQ��cA�P0GW���䪇�H�X�eBy�1�+�2�:Xp���dNWpaOՁ��~d�Jq%a�U��:w�0�Nb[!��K%wAn����ʽ���[������Tn�u�]`7�❦�@\����#i��[> A�D֬3���D��,\_p�E���3�)63����<�rb ��.)���@��i��8���8A|�����(ϰ�VDM�̖�hM�u�A*7�)�|U�3��ʱ����hM��[	�i��8���`r�Xn��sq@$GV����W��+��bͽP��m��6���<�w�Djp��ޚ�K)��^j�8s$����`N�Bշլ-x�#[��tp��z6�e��|����	!h:!�!�%RAH��	�K]!��0���-��y�� ���\b2��Aq�<Dr�ŝ������c���2�Cu��v�怐<�;F���K�/MA$7�w�U����&L�pBy �Ӿ�C0d9S��.���<o������!�I��VŘ�9����9�Ҽ�Ԩ��O�#&q4���YQ��
+���nB^�j�$�j�w,�'�)���h��]��<�y%:��h�P>v�}�@gq�݌<G6��KY.�=��%�(~�L�XI���jM��Q��˄�ǽ�Vԭ��v/�y�"���<�{uP��tfc�Թ��94s�����û�lC<3J�M�r�2�q<����<�Uq|�J��o�M���)GW.`G�����{[����p'ȧ;b;X-���CŦ��nx�5VQ"��
Y%�+���@�kbh�5� Y�lZm �]�a� G���-����+N���w�?:���KHB��jٮs��h����/�:3-{_DF,�ؗ���\���ڳ0 0��2�z����yq�Z{��{t'�K�t���}T>~�Z�phi�Y3�=d����`���@~�D�\��p96�tQ��g@+p�J�����+43ԒC�=���Pz��~��dk�A�ʶ�geK�/�V���K>���|/[�M��� 9��_.M�aدڇ��%,'O\�����K�\�z�g���Lr�M�ߘ��[(�� $Tu���T�g�P�@�H 7x{�{�!,��y����"\(��j�T���Z{��EbhJ�H�IA(y��x�y���5�e3μ���������L*��9@�\�Ѧ)�����c�!� ��+R�W�[\�����P�^&�<̘.��w�%X|<Q�^�~���T�fG�9%��tV HH=O���,���H|��!p{W\~���Ԑ��wu���e>W����DF	�d�w2B�W㹘ªFʂ<?���Q�V�{XN��Su}� �D��˿_
�z��[�p�(&2
0Q�4>!b�3,�G�%���(��85���4�0�Z0���GD���^$A�Zso��$XC�k&�T��kF����gQP��d+�ir4eZb�yC��{��i�p��yĻa��e�߰����\F�b4�m���\ˇ���MWQk�e(7�#�֎(t >��7�Q��|h4�2��B�$��V���Qo����E�nx� �X�_���[�=�i����� ����=nG�%p"��b�_�����/��I
���5�+��G��w����O�����#���z�=�)(��`�1K�U�AEkq��r'E�����P�G=l�"��PJE�S�"4����2���w���uoO6U]�"����mW<����M=��n�"ÌE��ym�y�]�!�X�^����<�z�`��|/��H�1����ܗ���>������z��1�m�磩�(�D���H1"0͒�l���˱�M.��w��8�Ʒ�f\b�m��b��=��4�c�e���X��*Ϗ�����7sj�cDXx �hr��n5ƲS���W�ML.�٧Z���w��$Y��X������2�zM�!ς"*�`����i4�Q���-J�Zc��{�&���
t$����}9��~ݎ��\�FSA4L"�U�&�"<�WxSv	*�Ħ���o�{�/�Wnsq�j4s��+%�Ӊ+�k#��b8��Z�g>�,�gIr���T�V�\�6��Ҝ�t���y��ґ!(݀�'yD�7L�~�~B����SZ��{E�K�A�ְP�\k�!j��ZkL������j�K���	!����Ic��\N.��% ���G�eqzD�56���1���\�/�B�_ QI�h���k��Wo�9�䮳f����)i��{��x˲�`����W�<��H�βv��B!�sac�譚���y���k ���3m$�j�����d�q�P�0l�����s0��XHM��V�0@�z���]�s�*���
��ܻL�`{Mro�j���/u�n��I����D~7ϳ.�K?J���F��n~9w��H�,��t�l#�_p}㳉�0As�*1˓U{��'��(s ��K��=�pPdV�.#���zF�k�9e gN΋zB�ЛgB�R�eKS�����:�۹�����9��(S�W�<�qܲ̆w>�l��VA�/O��3myuā(yT���h�a!`2U��Y£�*�ɬ7�"���ֆ��nDY��U>�ր��A=W�A����˄�a�7 �T����3�W|�&	����S�ٱ���k��ڰ`����%�&� ��z�׮m�P�����幦�o�L�r�3!�{�ʓ�	9 !�/M<� �  �VS�w��j9��7ʿ?W-O�=�#Z"�0R)�_�\CcG;^�my�H(��3-�MiQ �hlr�<��<~�������q�p�Y��t���y�>�@v����7x���.���������;~�[�Ⱥ�1~*}֒�h��	 |��2�)6~��z�������x�m���ش.��k\��GF����ֿ��H���������7u��-�=�q�߾q+��Q�r�I"NoP(z�GY��f�6���P)��+Y\Η���D�����M
������:�ZC.i�Q�Iڢ8�K�W�sA�mvt�W-���aq����<@�0�P<6%��M;՜(NgzU�m��!/iv��$����3Cʺ��[���Ðߍ�'���=b	�D��K%�G#>�G�[��a�opD��FD�a�@�h�O0ņ����4g��J�<*�pg*݅H#� A6�Z��v�N���e����#��K}9>�d�u\���p�!��< ��H֝�2��I�˴@���K��v�5[�{���6lr4��|֎���M�x�B��$lj�s�q���-�")ـe�/��B���bG�#�o��V�O��G�O^���$�;�������}�V�����q���Ǎq�E#\ܐ 2��h�q����[��&�wJ �֒{'�΂ش�TC�U��W͡&c�|��b�|�9��8?����#d��x�5~�_���*��zk�T��o��������txS��i��$B
���۾E]!�6��S���gc�z���ط%Y�N50��Y3���N��25ڄP�g	�G����O�>r�P/<̳��V������)�1A�;�pN��W4л�_�ʒ�4G�S�0"�u0n �����X�n��0���\����z������,BH�o���	|"���:W!�[el���_>�����ap�#�~WͻV�3���V���
��iճ����&M�g+/�lX:<�UY��u4��4M~U�{�)!%��q��
v1��˺U�+/�ڈʵ�gB����Uy>�Q#,�J���LS0o'����:=�Q��n��-�u���j��֭��s����ƛy�j�����]���ޖ|{��q>1�\vә�(�w�J����ms��nO;�&U<ظ�cd^��M��M�$���޹������6�hh�S�0�v��xF!��& �@
��ޚ�vM�����͛t�ܜ(��a/�!�0�wh̎������O��I�Y��' 'p��nɆG��-s�vұPJ�Qм��p�!"��y}or�e8C2��
E��'�Q}��7�*}�3Ӌ�q	�uP0���C�W���R����i\Ex��a�2B���l�q��2��B�>����&�@JxLi�
�]6�E�6�b<�x1B6��0�
5šm"� �X�b&�p�Dq�m��&[�bF���)}oR�&[���d�90��]�Fq��v�A,�yK��k�*n���_K���EysLYĵ����bh��v��W��L*����7�&�nSY��̃;���^�2`�`��K���sh��e����G��bN/��0�U�>&]�Eޛ�cΙ���R4܉�����J�`u���3�k�S����Q�6Ɲ�<���1�靖=b�Z���9�2Z�#|;6�Ps��({����w�)O4Ɣv^`##��� p+�������?>|���?��      G   [   x�3�44�420��,�,N�4�?N'�`]C#c(k�kh�kh�`h`ejael�gllbfa�O*851O!89#?-35'd�q��qqq �9P      I   9   x�3�t�4653150��4�4204�54�54U04�21�20�3636��'����� ��      K   �   x���Q�!���)z�J&&j�-=@_z�B���,��/ۭ�o��H5����L���L�hg�;A鋖�*�!Bvs�OID��m�G?��ҤL�H�z�X���`8ܯ�@_Xs���&�J�֭��ġ�o��&�ZD���C�����#"���n�c�� ��(�����el�~hS� ��v�Y��n�~�Gf�#b@t�D�cJ�_      M      x������ � �      O   �   x�}�K
�@�=�����>� ��D�x1A�[֣����|菀�QA�"nQ7XBk0gf�54 &���?��\���(�����~��A-7ƪ�D$��i�pN�nx��n��7h��`.�� BQ,s��hIRx�/�[7��,��ͭ�-��X֪�6�,�rJ���K      Q   �   x���Kn!D��)r��\��Y�Qv��9�"=�3�d$�r��Q��SfF} ��{�*�-�VJC�,�������V��ןC�<("��JS��(���t,W|��s����N���]�3S��!�d�9��rɪ�PVy�UK����JW�Yݔ�wI�!�nO�W�p�1��-�蜃$�hJ�$`\j�����X�᱄�V�6�k�~K^	���?�q��/|9      S   �   x���N�0D��W�SO	q�P�7�#!�F���1J��^Ŀ�� 	��p|�3�ݑ��� n�8��J�,g.l��v�@��J��tCN�h�Z�6�;�5�Z3��уx~i�H��@�V��A��A����3�=K���'dm����]�(jz\����SvGo4��G��>���+��x��nDV��2Y�8|)*�_�$�Bn2)3YYCـ�����dyb���W\�W���/@VP�yYTMќ�m���+���      U      x������ � �      W   f   x�m�1
�0�:{
/���1��#�ډ`@+O/
��4�k.���\�x�=���OQ�g;�����*��]���3<���t���$A\�������#6      Y   \   x���1�P�iqb'���_��k4��FC�1��o�|Q��	e�x�C-�¢v�T�v|B�]���wo����;�ɡc�\~?��)�      [   �   x�}��
�0Eg�+�	�_�=J�di�]1��t�_�t� ��u0�����i�>oZWD��蚨t��PB�AC���:C'I<�A�a�'h%C����Ђ������t�TLk]@���%�������󗂃+��!�\�qZ��%��������|����h8׹@�C�F�/��pA      ]      x������ � �      _   �  x���oo1�_�O�/�(vb'�W�T����4U�w]ـQ�]?�|�WƘ��pB�lǿ<�Quc�L�"(D��F[R�o��8[d
�eus�Ѐ? 8 �
LB!�ND�Q�e�1j�M�����4���6-25H'���L�M���\�Ʌ��ȁ^l�ĸ������puTˢ�h��l>�gY��o��g<��E�ݼ=>�ˋ~>���n;@`��(�o�2U|�h��ZG�CT@%`��3�������P��O�=K�-(!1QG��������z�|����Χ�����A6�Aa�wC�%��B�
�J)���/k���C�N;��IY����2%_G!�+S2qQ>�$*��PP�(��;<���~�~8s�4��{?j�/i�^,WxD���>�5<NuC c0�F3b'Q�<[�i��zE�J�ܔX�K��!/.�@����E�4�R5,�ŷI6����1�#٭-��aM�C���X�i�'��&�>~j�7'm��g�v��Tҡ��H��lHu	�K1l���.i:��*�*E���*˟4! m�$#R��I�`��3ko۫1r�*�G�����^�xz�;�붽�>�nǰ�M޺ �Z�V��M�1r!/%�	�,�"Z�_��"X������[5\�X��~�.���W��c(���#���zڻ��P�aEC}��q����{zi      a   F   x�}ʱ� �����_��,�?G�4�w� ���?�^Հ%��^H),�)�K�ؽ�X�3.��T�ZFL      c   �   x�}��
�0D��W�"nhZ�c=��R�5P�Y������7�x������cD��kĳo�U��+��������E�,2sc�������5�CQ&�����.K)̀����d^��;JN����0�+ŕb�b�Q�f�L���d�G�(؋6�\�M�9�*�P^      e   �   x����J�@��'O�t����ᮍE��bQ�4��!��	X4E������c�����M�sJe��MW>�u�4y[o�/@,����O�&���I�Q�C<B*��Ey���~
A#�t�3��pUb����r�2A�#��k^��>�}𫐓pb1Q�C��r�F�~����y�]����$!�����Dd�U�������">�\�7�Q��K����iT�Cd�'
	Y�j�h}��le�����~�      g   �  x���튣0�{�bo@7���2P�:�l��f�~3q�!�-<��雘7X��Y������{<*Vm�Eu�X����&��xc-'!
���w�zl��/㰮��\+�EØ�)��s�u^����Lݫ�֊RVq���D��{��뗢��Ŀ��@���z"Z0^@�b�M���cj��-�E+t�/����U3����ó�?.hrm
lо��m�v(x-	�dA������t�����C��v(Q�#� EўJI��H�q��V��(�TO����<������(3�'TQ��N�1��Pǡ�kW�
�ĩ�k����
�c=�2y�d��.  %|A���t&;�8�~_	"Ύ�(����ka2���=�����.��̚�(Us�������Ғ�dP�����8�վ"d��w��a���Z����# ��M�����l'�[�xf�d2m]�*&�IO�#�����u��<�]���Qc���� �A�q      i   �   x���Mj�0��u�\@�~-�{����yl�Ȩ�"�oȲm��^�l��'Je]�&����`��k�D�mc*<��qυ�ײ�F��%�D{¶7�WNu^�I��kqZ3��w�sL4>�u�V�HB?t��;s�9�����ۘ����� ��"�û|~���Q+q�����	.�Q<��� B�o��|�      k     x�}�=n!��ڜ"Xd6?�:iS$�n��� �N9�	�CHHJv���'��F��L_ϟ�@�",��"
����P��v�GX�Sم�(+�z���ve3��a�(�i��l&�yG��V���3�##;f����X$���΄U���u�g�N�ۗ])ϴ=~ܳ�'*fZOԸ�1��q��?�> X�C�!�C��r���JgK&��֋�x1�1�ni��*I�������8h'���$Z*ԓ6o|C[.�%�����p�&�K�D�=�rJ�篴�      m   V   x�}��� k<E�C6ƆY��8=q��{��H�;���o�ݹ�d�Hq�X�b��	���?����Dq,�w��iSD��5-�      o      x������ � �      q      x������ � �      s   �  x�}�MoG���_!z����p>t���p� h��ҋ/l���*E����v��m�.����6�����7l��t�|ɲ`����~iźt�09s����_�ŗ��� WN}���g ys�[����v!�p�x
���}]o����i���F.��!WḢ~w��9����+��[|���C����Q���H	��>�rxNA��W�(���BY7�.E=)e*f�����r��8&���n�l7�ݷn,�nrHG������D�_(�f�~ybg����������7��W\�]E�؛O�n��a�&� 	q0��:��=�->=o!�АP���Eb1��O��g5s�Ǆq4���AE��"�zFE�8�2����O��U�B����m�$�n̷n�C������T��#)e.)�E�����wOА44����RUȱ��n
'��
���"!���W��~�#]:E\f��Er��Q�����H�P�����a� ��������)�aN%ja��X���<>���#i�g�J��������0���
�dQ�s���0t�x c��9��A1#�W���!�ra\+D�Mz厈�5��ů�ne��ݰ?���NT���F�����R�գj��0yg���c޿_`V���z9�lD���	<"�i:Xl,Jv�k�"-��[GK�R��J������8�-̈)�7�o~ ���Q���-�攥�)U��9M���n�V�IzB��\Wܬ�b�h$�"�,��r�:k��Z��yB��fu�Vb��W9#,��Ͷ�Ց�w\?oE�B��ݬN��j�g$�}7�G��cΝE�B�'����N����3'�3G��c8鉩(��UB�?{=�1�e�����|��6�"<���4�#X���Lē�7+oihG��>?#ܔdZyKC;�1���V$$��򖆊b.14~oB��4V��QJ��zM+���򖆌Pc���dt�9��5�K�Y�SELѾ�y�֨�P���G}D�����qi���}y�����8��s֎:�@X`��^���4�����^��	(b('[�U)JmC�g�k�ޚf�{�ԇ�ESL5��(>����a���WS֭BZ�qe��g6o~���"
�Q"�W�'��+�K�	k��Ff7�p�u*py�����et�n�^���(��      u   �  x��UMo�0=�����ocni����(jV�%����M��Y�.ɲ�T���y�3�7<��o-�l;��U�n\۹��][��e(,�9���;�\���}vl�#F��)��D���=�F;�����cE��vP�J�J�9�9Y�)ש�X�P��.D {�bt��y�/��G�u��u��;�ZUv���-���l۸;=OUB�p2%���2[��Eقi��]p:���`�T�T(l8z���ή�����u��۪���$PW9���X#�t�C�u�I>�u�}S����k6�:Cپ��ʡM�">[����\��uSU��]!x��nj(F��:6歃n:"WM�їң����m�s������Z
��>]b��)7�Q*�R�����l�*u�M3�
8{���~�U�ޝ����[�6���p3C�bu:�Z��}�{D�M<�� �ik�T��(,�ЌxlԌ��D~�������J)�$Ucx��m����f�q���{�ݟGט$�H5�y$	fJKsD��m���P��|�T�˒BĤ��c���A�6MV^�{1���4���f�/�5щ<��p�CEg9WR��4�8�@�1�L�d�KF��y���@MB9e���W��&�8�:��5J�<�FL�C$,�:\�!�*08t�,�|+KM�S8z(2�D�#	pߛ=h�����z{��k�8���k:M>�I*pB$a�,�OO�B��.����R5��s���d�x�X��85      w   �   x�%���@�3*&oX=�%���ܾ��<�st,��v��8��W�#��rn�S���
��sD�2�ߍ,��c���9�X�ʶ��P�L��:L-�������+]鵔u(N'ʭ�Q!�@T�p���e*mk����,?������G���~��Ӿ ?;a.�      y      x������ � �      {      x������ � �      }      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�}��N�0���)�W�q�472�tSY*��z=����rA�v��E��Vl�:u��ܽη�߇F��ي�h�#�:�`��A��Cꦾ��F�10��A��t��X�d$v̼����mHs����RL�?�	XՎ1~�Rl��M�l�wG��A��:��e����ߨ�x�8��H&F��� h�S��e�����Q%#*�cc&��Qj� T���A������  Zf9�4t�����(��� ��A�9      �   A   x���� ��m1�� ���:b��ʲB!�&e�n;����L�]��ب9jH�Buw���~df      �      x������ � �      �   S   x�3���,*�4204�54�54U04�2��20�314564�#�e�锘�U������	).cN���b�*̌L-q�p��qqq ��$�      �   B   x�3�J-)-�S((�ON-.��K�,�L�4204�54�54U04�25�24�3013���#����� ��      �      x������ � �      �      x������ � �      �   W   x�3�.�/JUp.JM�,�A#Cs]CC]CSCS++cS=ScKc|R�E��VVA���I�Eũ��y%!�@!��b���� ��      �      x������ � �      �   =   x�3�tI�MLOMQ((�O)M.�A#Cs]CC]CSCS+C+#=SKKCC<R\1z\\\ A8�      �   T   x�3�r�074CK��Ғ���̪�NΠԒҢ<�������N#Cs]CC]CSCS+C+cK=3cCC|R@����� ��G      �   c   x�3�4�4b#Cs]CC]CSCS+C+cK=33s)#+3=ccScN= @��R�S3�RS8��SJ�C�?���U���Ƀ�p��qqq }�m      �   d   x�=�I� �=��&��/p9 f ��d�޺z����D,T#�YFj�ԡV��Z��w��\�vm��p+���+�^�A􀓽I:�8³����K"z ��(+      �   ]   x�-��� ��0��]����>8.1#2S�����/hl�%l,=\�4<���zTLGt�?*�-�r�KYJ���'[P�]n���}x ��      �   -   x���  ��]1f�����A��b�l�E����m�i�      �   �   x���Kn1�u�� ��ߏ8'���lR�/5Ejg���xa��''\���2T� �B���[��.���q�wl/L�Zj �b���Qz`���m���~��1�%�b_S�)R��%��-�̈��(�X�n*���dMhY���V	�A��W
�tFx(CTq����֑]�£S�x?_����\t�JBi�(�t�:�<]~ّ�u6�H k�w֮^-ь���čc㝸���g���4M�<}��      �   4   x�3�tIMK,�)�4204�54�54U04�25�25�3�4�04�#����� ��      �   d   x�}���0�3YE��%�ԧ�_G�f���_�1.�?�c3��q 5�ꝋY��xq���}HC�z�p��:���)�zmc�@[t�Z�n���"Aq      �   *   x���	 0 ���0�:M���H�ɲ��r	�އ�|G�g,�      �   �   x���O�@�����cg�q����R�y�"h�Bѷ���Jl���2�a�C!7���5rQ���{���#d��c�XŨ��@�.������˼~����������/��R�]�$_W�[Ve�ffeBɷyf��M5�Og��K-��z�9I�S[��������/�Os�      �   �   x����q�0c�
7 ��?(B(v�(�#�����0 ����>!&�����Z4�H�o4:�����b��F�i��[hl�L�b~B�g�\���vD�`ixk�V���'�����U�^#�@52L�airSG'�����'�=�<u�k�BvD�mi�:�61��9�<e�k�
\"� �|��6u���dR���k���g����w�`�G�}%��smI�Nh����\�k���>q^���7�       �   �  x���Mn1���)z�"��C��P���1�؃�S ���xl�P��o�Q"�Ǹ������z�����c?t]J߆m7�~�_��M�c�ޭH�@|@�u�!�Q�{cBCZ�=���
}��������e�<<���Bd$ߐ�L/+,�*v<6$��Ù�Y���L���v���& J�G��!4$p�H�m����s&�*:�!6$��#
����#{�	?R~sx�_�c7�P"��c��!A,�#�K�!��g��	PO�#�SqΈ0Z/��S��:����:6/i��5��!R	����&�d�BOA�K	�g���3S|2��w!RC4sg�
5g�)����6$@;���W��)!iVƘl��Jo
��7G����A!��7e*޼"rD{n
`�~��m~�O�������M�LL��Et��2� o/��Heػm�㝳$�TH@�{"�C��
��)Md1�B��TzُZ�FKկ	Ɉ�P��?O,.r��Z"�>8g��k<�R�H�ҮQ_��}U�q|��o(i����9x)M6��}.嵞Ó���̩4����;S,)M�gOo*��,*Ԣ/S0iRh��y*ͷ��W��L9=+�	h��})�FJ^��]C��eٟJ�ȑ45$`��g��L3��C��oH�T�ʸg�7r8ozy�Bf~�/�o��O	��L�lj�WkW=��8˚*�%ȯf�M�"�\:S���5���Tv���𻒐.+� �/~�jg      �      x�l�]o#͕&x�+x�v�N񛄯(�DJ*���jw��!2�d�*?���r���.��@��3�ncW��������۾!�����_���y2T��U='q"��s��DU�u��~�^�TU����SM3��W��PW]�8ցV��P���f4�XI�u�{۟W�2������2yK��yE���ʵ�}�ڙ�����&�;a4��F��d���j��{U'�U������c l�a�W���K���s�����j/m�q�׀/����l�uu���Y��|�E���pC�h�q��F�j����%���w�9�R�K���'E�6��D@.r��N����\���@���R��ǧ;���MV�>��꬗�VSg�K�z���3�=T���2G�uK�����j�3�/N�YQ�Z��4r;/��F�/�k�e��5[���OH7�(��:� [��0�W�|�e=��I����U����/�'���*�T��.up/�&R��Ch�Ȕ��"e�*����4Ww�i�ݗѳm�cB�f0.:L�4�3�K�s,�v�݅���r��������jt���W�F����M��FU�Ϛ�}�<�3�D�������(ڢ�b�ePC�S����A�_��8Բ�k�yQ��q��q�ex[������/d�A�l��骁yZ2M'C��ԁ7�us����U8'���a55�"��ռ�ͺ���A y�Ջ�B��$P�m6	��PM�`�Gk��E�w�C�y@��Dul�}0 ��7글��d�7��&�z�a�A����⣨+5>Ɂ�o�l�W9TG�>����h5Եބ���0R�9H#�'Z��-��� �+=/20-�V}/��y��&���Z��H�/�vh+�ԋ�A�uad��TF^��m��6�Ӌ����81Q��qU��е:)����u
5�.�:z�ʹ:+�M�%��V�k���E~�jX@-5�b/P��k��0Z��V��Q�&����7�U�I��,P�Qv���ʑQ���I:K1դ�j�V:MuU h,�H[-�f��B�P}�"�	��@�D��T���R�ӻt��@;/N�Y�/�U���iuT`�b�ha������y�:��"�wU+02��M��-�*2�l���k�b�R�(Duv��)����P�Ġ�h��W�69C4Z�:����Bu
��n��-��Q�4N"�{�!}}�%گLP/������l:��6��q�&�ʍ����\X}�F��D����ȫ�MjL[U�� }�f)ŀ�!Gc�N t��1����ק}����P����M�����g)�A�Ȭ��m���,N�-��qO�ᙞ�ỹA_]
�zpX��|�P��Y�����>�c㉀u���� *5�g�����pS���h����1��}�x�?|'x[�{���S��i�MG����4қݯ}��DT�����z
��T� �Cyb�'��8�~�>����ZS�H8CAK��q D���4�1:k0_H�@<����l�	K�@>/�����c���D�v���9������Bv����"�O�F�|(�t,�	6r5��� )����l�=`�i��J�
R2@�� �Hp���/w�&(E1y��\M�Ñ�R��2k�[�����R��&C/X���/�̲f�'��#y��%��M�Mp��ãI9�߲��g��
^U���^��T�m>�*���7`,o��@�_7�<YL:˛��M��AZ�Y�7�Rp�7��%zsQ~���1��+Q�����w+��krJ�b�G΀��`0��L@N��F��I;7iyu�b�{2PAd���������f`2co��82Ƨ�O�g���
�3>������w�*���^�o�ɲ-Al�K�o��n�l�����ƒm�uK�Z*g�>��OJ�A�>�i'ׂ5������s�jv� 6�m	� o��O �K��ឡ�o�R|����_?<�~ Zä�X��3 b�ty��5syW���y�ћ�
V+1�h�{����ߗ�
����9$ ���� �S���Zꈓ��yw��Ɓ�x8_30�/00��V�,1ll���
T~
Fn��G}�v��ܧS�[��8��Wh�ѥ�an��o*�6&~̓��YV��S�;�G�v�j.96!؇��sI-���k����sA������9�<6�K��f.�����s���C�m|��v.�4��^C!����{�dO���K&KP�.D.���Ќ�I��Fb�%	xo� ���:Xj(�/<�e��D:�j��2.=��l�iDN�c���_��|:��������9��Ae��� 	��!�ql��r��spR�n�z#A��R�WY^8GZ��Bv=8YW=�ʇAP�3��5��}�7�v}�V�UKD�u��%�JL] 8f(����!d)d�Ts�v�j�k�g�]�)0L����m�� �F$��c�i	ƾP���6��p)<�=!ǫt���J���0G%�R�*��'�3fɪT]���J�K�<��V�V������{����V�R-�5Jc�Y �������N�{�JM������N*5������;�jR�Z-�UMj���d���ho|�&u�_h=ڡx�U�����45��/�5�&��_��z
_�&5�_=�2����Z/+����b���y���Z=�KI]�|���/�ݗ�^Z}�J�l.�?���n���\T��&�������|��/+�^�>�y�m��_{B�,�������)y��P$�����ä�A�db�+�0��@�W�����:���: ���y:$I�4V��B�ԛ����قh�uD{ar2QA̔�С�u��P��r���n vT@�W����(XKؙ&	+�4嫃#�r��~�++��ñ;��`��s[,�ϞK�.x����n��z����~
\%�Դc��b5<I?�׏�0��!�||(� �r�j8W�X���+\����Wh��}A[v����P]�j��.=�n�.O��f;0[��Б��ňׅ�2�� r����Q#Q��(���[:=�j�0T1^�H>��23�b$�h5��P��Tc�M\d������r��P�ԩ�����	U�xAR'��|H�Z��m�8��jimj�w�h����d�����\z��e�Q]���1��4s؀���ծ�_@;���gk�gZ�?��� �gٔ�K���e�5��ƤT/3�:�:Yڤ�;���Y/,*�ra)��ҳxC2u�\��RuC2�pNY�.I��i�y�}[�&H0=4ʼə��(��
�lCT��̉b�.�v^��;��YMމ�#���x�Ҡ������	Uoe	���m�+u2, N'�����/ʕ�<EU�D���_'�ܻ� k�/�Wih �4ue��R|*b�Hc�_%�.4a-�&�2*Fvf����a�0�U�����4�}����,����MǮLqR���J��"�hu���O�o@�mF�|�'��ի�Y����cT�e-25Y���5�$5u����&��J���8�Cuq. ����T� 0��l5��+OA��L�L��F�%&��y��w&���*t�ޕ�����Ďk1L���&x����eF��A�H,I�#��4#IS�v��F��� ����b����K�h��E�PG�7��yTf�T�&��̓Q��0z|����|�
v5�n�X��2��z�������=�ܤ������s�T�k�h �����U��(Q:V�
��;$cQ6٘��]j�Ȁ��f"����[����I���Lm3Nʜa��T'�n5�>y�Jt �r��9�,
�
��T}-- �>]���7������ʿ��z��x�9���hrLY�ƕ����������z}����~�1
rs����[=�LW6��8�a�ir�B���P�m�+m�^��['z�1��&��o�����0Z?��z���!hU<kv`�2���a��o��,:(3��7�a8!���u��U�RD�C����61�l?E	+��Dӈ    ��H��F�lዘ���MP�$
�CߣD�Rl���P����{=Ù�w����;�d��s�e�;�r#��xO@�

���GbP@�T0�~�X�ȫp��K��[��#=^F
��^Å
�
���xp{w�� ����s����
Û	�� ������\/X�	@U�Q�t�.Eu�9�^�X���q@w,�
M�P@p�R�!�M;Im��(�V)��k���d0>�(˃�]{��Rp����@}��
����%���R"p���{Z��jJ���ޥ3mJ�@��zO�YSJ��z�Fn�9���x�̯��xY۴�1{��V�2�.�dmӒJ��M��)�-�;{�d$g�?9Au�����e�S�7A�O��)DR�N�u�0�ܠ�h
h�&�7s�R&�aJ��'� �Eo2=F�+��rQ� j�����w��ec�@9����`f}�!5	ݹ����yf�d�7����������w��L�`��m���x�q��l��1����B�Yپo��\D�ҫ,��S.B���/	m���]>���i~�X���n�Y������թ`Un�"�<{V��u.�:��%�i0='5�9���Cu�	ڴt���Nx޸'	�8�I����Wen�ʩ�����8oP7[R�NǂwU���W�Q��v�v�9�A�2
<����y�t�|��q���1�r)a|��?湉t��5yF>ײw\�ʟ�Bz�O��I��s���R�]j|bh���6�\��U�,�Oj1��c��a$3ǈ:)0���Ƽ�U�����K��	!H���T���m�
g3;EV�'N�Ԟ-�	�,�W� Y��.	�u��z�v9�@��	&�J��
�M!� ?��(A�e��->K��8[[I�ə\
��_�����vwt�B��r���p���)t\��T:N����t����s�6�t����������V�zcc�a�b����A[���O����8���ݲ`u�/Q4�~P<��U�I��[�� m�x\�A��v���}`�53cެM���]�.P(�(��=�,Gi�яf�0N¬�r	<���[bM����D�Lv���[�җ��'&^m������z�^��j[��#��.^��	�R|�qW�E�O�o?/�L�Y�hT$j�ʈ�#�,�\ڶc�<�^H8>�����%(����<�z��R�ǅ4��<��e���O�pC�R���D�Wֻ����<V$�+�<g�/�7�H����?0�ǯ�"����%���;�A�0}ev�H�i�v�,�']���ڙ�����p6��&����QI��\�oDNwsc�w�q��p������t�Nʼ�۸��ONlc�����t{�at�����Z�t�>��-�����������x(���[Np�,�`v#
��w	�]��J��7�؃i��=�Lr�R�`��A�f��(�=�b�'�AsY�&�`��L��[��w�~���M m>�'"����ƛ���*Z)P��Ճ���R���y���<���Ւ���V�W�ĮhW�5
��=0��-�§���~�#.��d�r��?��(hS�;=���c�9�R���/�M�����]��@L���!z5��%Ȉ���<e������l�!�/o�K{�2O��R��D��3��x��po��:أ���2���)������E5{>-\�ele_���
�j�RW&hp����li�8S��v�S7�=zv����sz�<V݀C^~`�D���)���r�zj�N��V��i�|�*;��Y{%`��[��o�ڧCYȜÍ���v]��bFvz����1��"	�C^��H�1����������l�*g�Q���Eʟ�$A���Ds�-��P��_�*�!h7�
a7Wt�����ey(n�q۩���7�����2��#}sk����0e��P����b��Q�˚I`	Q���������\����Ud��X�)A4#��s���}t0۽3��/���_�X���:�0ȉ�ֹ4x�y
;������o�3n�J͸1J�#�}8�x*�ɫ\�O�ݷ(p���{U��:�3�m�ws�+ m��!t���Ļ�}6���ۿC5kR%о��[�ʀ󍽹Wه�{���ob�cs!X��� )0�� l��1ax0*�I��ԉ�Ķ�����v�����v�Y����1�jMjb7�񌄸&U���	\ e]�ƃa<U������a���%e
����$S`0��Q��*��R���@S$h��`~�SAu��1��-i
���az�5��):�5L� ^�]�p����KA�Ζ�f ulHy�=LW��]�Ş�y�{����S`�	ᯥ�<����r`n�K����5/R-zgRtsr=%�O!��� � lH�<V�s��p�@�v���kٕ�&��,ZH�$�a���䄦푙�c~Z�([�8���c�㙙j��� ձ@-��YOAr�x���~��z���S;j�s��1��R�k��=�}��5�P]T����5y�@�uڑ�2pЀ=1�c�e�_������$�~B�>*:5�[��]���@���-P�%��D���t=��������toW�o
��E�$���zꭀp����^�N��z�������o�^�p+ut����㤑�u�y���N�z�ڋ��}7������y�/ _j��(�1l
������;�ˏv\�є��}.�����B�*`ԗG�m�d�3���M��Q���fd?ۖ�w�����(�&g��
,����G=+(3���OY����ggN��XE����-�o��������hN/�<I�1��gd@Z�
�no��퉴f�)o=��'" �v_*��Qon���XD�������o��7� *��^�gn�DF��{s�:(��fFGz�2��ѻ�l�i���@�e���B�/O��0Y��e�[��\	\ʹ��}��v_�R�JM0�gg�*�ݗ`������m-���3Ig�"l����F�SF��G�O�\���7i�4�mu^�p;����f�����e���˒�Y
���KTkTh�.'�U�C��G��'ǂV��Pч�㓑��������T��Ћ!�8��
,V�j�@�>c�/Ӱ��z]IsԚ�`~��y�k����$�����tf����N��=�}��H��7����(,fK{�=]qy&s����:�IA�������.�m*Ï�"��t��=���?9/9��Q})w�a�>�i�A��Mu�mB�1��t�V���=�[�=ۤ6&�p���buZV�!����b#��E��m��J?\���E
А!�w�}Je�A���չ�;
�l��_�K��4ԫ�hZ9����������'T���C��y���qy-	�卧ѩ�\d��c�(ȿ��1�oW�u�����+��~45`�=����Z���w$P��ޔ
'�?�`
����'.�:��Oa�Ad
�X������xO�p��M�K��d�120�V�NJyQ��hT#A��90�tZ�����F�/��Ć�W��C4���<����O��_�tQ��o��_`q�n3b�	*��W��ﵳ{������3��<Վ顐u
�e���y�,��B:��	�\ �x�� M��X���w����.���:3��s?�a=�S�'��� �x��}9��C:�����v��',��\���J�1����J�y�p�Ţ��TZ-��o���O!�*�J�ۖwxw�_$������S���l^���U�w��&��@�V)U�;��YGڨ�qO���b��{���SAۼ���dt&XG����]�Rλ����vf��"{R�G{yA��"��>��r�.���v
1G�`�~�&���﹢S|)8ݺ4Z�L} h��p?
���V+�b�x�	�z��7�
)��6�u��_��ƹ��D�X��M�0�\�����3�كUJ���x������ٛ�=�Ĩ�"����1�p�7
�8f��@�Io�ǆVU�2��cP�C�+{C���R	{����!�����*��q��l��    2.'�Y0����0|���gh���*�|+����\�����!෗"���|1�L喧f�#ő$�o��]���3�KO�\%<�&�Gވ�Gz7q�5y{$�t��1{ �ѡx�wO��%����0���=F^�����x0S��n�⯲JH(u���V-&/t>���<���]�o�NGpъtU5Zn�!�S�k�ԍ�}n��(MR��7e�<�	���|^6�\'�=������U���"StԚZpV7&I]$mu��-�;�|� �)PW��;}���j"��B4�P�EP���x0��Ρoҽ�ĬUW`P�)W?fiV��k��d�U�^���Pd<�����=�����z��"mq��T��J/X�%��c/��Б�h$~'��K1rcPձ`����= R�0���FRD�`@�]���I��d�8h���2�&�r�~O�F����j�FA��C�=�@�j����j��HP�1���΁^� &�F))�Xk�2Ĺ`����o`��X��k��W��ʲ�L�7G��^�/m��a�TtT�X<��<����:_����G���Bn��Ek{��;����f�L������1.0D8�k�1=��9��@Z��M(�Y�z���������VήtpHh0`��KU���-����^�y�Y��(�,�OɅ>�8����櫬q���W��%^���l��,�wv�/��y��],r��~x$�nr�ҋ����#��j,]lq?���+�;�b�֪#S{�'jo�H���6?䟷���!I��N6�S���y.��7����o�فW�S���3�B�1�-���_΋{Y���Q�i�V��qwԶ�!�H�kї��2[݂�`t�Ϥ|\������@+y&�~�螫�lI�M �y}g"��`۲y�?U�e��u���J�^sS�?�/�f��d�[B��c��&��](�cȎ0
x�O�/J�ἔ����N�3���m��f>W��hl���9۠�X����Q+C��K�`��a��Oܔ��
���`�8�I_�<0�t���`��|/L1������|���`����I	��k�g��`�)�� �Gn&b��B2̲�u,g}�c�6Ob����)�� ��H����o`B�棃si?���ֺ\���EGt������A�jpӃt΁}p%���L#�c8J�ਇ<�P��������{Y̍Þ|��C�M���a9��N�|0�eiH����SM.�gqp%)ZY�A�,y\�p *o=�|�t��g?��s=n=������n��	�b:뀨��Lp�Ǽ ��Ws9�.8���U��$���g�U��`�j�i.y+���W�,Ց��NzĀ*�Ƒt���wG��H��:BK%e/�T�n��#�P��X��.�����Dp�-�I��\`^���4����"|�z��@T�yOgf�b��cQz��������G������&00�7�g����vR*�2��}�����*��d�<�]lCm�8e�����C��rr(j�A�A�= �NN��`�'0�s����{�@$Xk/�^G�O�q2�L�AO0�b�wu"�w�fw;`��D}rY~�����)�HZ�^��"�Tv��oŠ�e�����ސ[�Ӌ�'�r�y:.��U�49�7s�N��a�L�/��Ϗ�Vg�e�*%��A5�𣘿J��')f���"x���o`6΄�u@4_�n����&�ͳ |����̐�������YOx�`�DЎ/�jЗnYg�1�=8�&��=����Ã�^����yz�f��ۮ���k��m;��T�m�:��A�7j0,a��<�_�ʁL��^��������x_PԘ7���Jtٰ{����K��^�7�4O�0��HF<h�ĆR_{�v�-�5~��G�l�zf6��5<�A	B�����&�i��Xv]ڲ����L�3[��c�ٶ�����L��D��� �?���[^ ��iy�e�[/�s��R�tv.�Y����Ky�Ϛ������vn>?���2:�ڋ�r~X���;�3ˍ�"�T�e��߆�J��b[<�$�#t~,6�Qba�F&+n9�xTЖj���|>;��v����.4%��X>&�ڐ���0WOD��`�e�?��pm���K$�L�?��2«��$�
�CQ �f��"[Q^����Z��9�Ү<^h��n�*�	��G�|`�o�o.E^(����D}m{�3�XK:�$Ē9��?�/�����:��ev:\���_ӌ��H>�y�m9�\��)	L���EW�U�d8��^�ɣr��s̫���L���N1]�Kq�;�~�3Q��v:\��8O,l��������7��ef6�r"ftd�3es�fخ;�!�{8[Zoj�U������sn�l�щ�s������,f�����1(X�H�>:]ފsx�訬S[��|��؋	mtZ���sD��Ge�j�&Y5�dw��`�����·���E���B��Buyq�Q/+<߄�	-,���/i�6MvV�_~��B�ּ�żty�������ʤ��_���q_��Ҝ��H���H��'�s���`����DaN���x�%	��%j|v)8�|��1H�`�c�v���.(hV`�؍��u��;��dJ�I�[��d�%9�X:{�J�Vo|1��}��0��<�/�"剛(�5�|�eԖ��`�i�����0��]l��2�K�Y��T���0�+$'"A��$E߼�`|��O���L��'��nc1��Z��bL�bL�`��G�9��g/�>B|�1��ȕ_�F����񑧵�7�0u��[gߘ�?�����O�����n�fo,G����]�΀cє���k0Q���?����ҡ�%���&�n�W�&��?�M�ɍ�D�*�cm*<���:+�n��Z�?kF�1���(�T��u},�T�FG*�����"���rվ)��;h��
��oĻ�6��L�bxSs���P7���u��+��Y�ꂻ"#FT7)88�-@��ʌ�*[J���z��rчo�"�0�=r�U7���A��l�j�u��͹(L�&���ͅh����5a72su����67#�R�
��ܳ�6��E?��!�;����[�f�X{�%�7�h�LG�"�͸�MG�[�wN�h$���B�E춨?�k"�mĵ7]-��g�\��ZS�;KQ�ׂ�Y�u|%PC��֙��#W
�L��9~���� =�uX��y�I�$	�{����6X�,�a�̙z��{3[�_�koO>0~�߰����`���^�Ӓr����_����e!�R�,��Y�;�{�����$��4eD.OMD� �g�z��r����uv�c|Vʸ�:N�$N�+YBh�MO4���H[E�tt�*cq>
���X�j���y:5桎N^2�B�����xY����J{0C�^y�'I���^�T������䥰/ª:�gT#�.0�e�gP�CA����*d`�o��>����אɉHxs��Q��B���^�ҼA���4ԃ��Bu&z?I)�U��
��	o�0��c�w����Mw�d�����dX^���Eס�x��c��ԇ2����`�3�V���Y�	�l��Ij��)>pR�:��I����{���52���u/Ǫ��?_��gѫ���o?#�=x�,���'�:�4ϖ��&#h�f��RoޗB2�D� ]&�޻x�a���o?�}��SX.�0�����RбaN��'�v4�;]1T��,/�f:[z�Gʺ�qNB�}oƘid	���g����P9㡳��6�-BP7Ԁ���@��qu^B�+c��@["�mԑn;tx��Oë�'%���Q~R� k<����H�	E���c�Կ,A��D	or�G%Z�m]��8t�7�#.O�qe�9_i����qEWK�����u]����K��<�/��)j?M����Ĺ������K���R�����p}̽�I��~)���s},��VAky/��~k��eq��-xu�+�g�3v    	5�10,�z����<�.�ׁwgO�u;yXs���
��j1~��V&E?�b��C���򭗉����ie�.�����m-7QS�e�����x�˫�{����l[�/�j���W��=̎�W�]&�1(�:��j��tʤ\T���Mp�U�n����� ��3�����쒼�.C���3��u�Uڲ��������Q�ec�����U��e��^�w������T�vb|�{Sc��*����ec�_��B�q�ݙ�W��v��{,I��_��r.[	l��Q�JP�M����˚uЀ���붬���Ua��s�u_�Y+[�i�Ƽ��"�c	�7� ���x������h_��;*��׃sʃ�"ɮF+���O��#:/����{)]��RPSvqUb��缢#��L�N�M{�����ի�wW���%�6�\)k2;.a^~�4��μx�j�̑1:�\��S!W%���,��^o�����L�������I��!�E��4W��#��3��c�m���	3|��$t��P���xx�`M��?��7/#`�m?G��ͺ��7��Ø�,0L�Ď�Bu����2���|�_��=^=�/e�'�����ד�o�k����D�z,��Q'�N��z��޹^�1���S��J�>wYO�jX���[�Z���j�f��Yo?'�l�H�d��P�����}�d�3q_඲E�0z�9wz ����7Y��8���������~�hͮԢ�\:����>�bu��dw�d�v��xBO5��l5�GN��p=Չ����5U�ͱS�c͚|��˥�u�ؐ�h��Z� "\%t�ko}/���9�#M�3����"C�1T'l��}���2�'z��c�N���0j��00(�a�2��}���������Su}�h�)����0��0�ֶZ!��꽛c�ރ����j��?��ߔX��򇡅�֗��j?]��R��<���ظ���'K!m��\�������o�����b��E����ռQbm��Di�D�7޺«W�<f��2M�M�ta���z�C�	�3 ���E�z�U{���N^z�S���0���f��Ƥp��
鹉�%XJ똮`g(r�`�$��(��q1;X{���Vh�f$���Gؗ�; �l��:�@3f�=�饼�R
yp�_z�`P�u>�ޔ�\#�
�a�H�T��8���J�����Zǯ��Nг^h��QQ��B����8��~�Xe�ک-��k�^������|�����M�����r!�0^Й[_:+����1�j�臗�4
��0���)E����u64
A��e`����Obϗ���0p��
�V���;��m��h���N&o�h������K�A0��ͣb��I���ы�Z|��[��uf��FJ�|�y�&N�x1=b�a���^%0�R�+��`�V���r�l�Y,o��:�i��=�lg����#Z������j��i���/A�W׋�\����W1��J8��xv��S�Yz�7(���-Px���&������7t��
(�t���rD<\�ߙ[����6�!M��[�nv3u��/t�q~a_q����i�l�.d��&:6_��wAo1�w�Y�{LƎ��nt�%��+j��'^����S�{��cj�y�ɓ5�(Y~�׾="�����o_���v���|yD������ھ;"��/�2���8�B���ؾi�+C���+\�X-���;�na���+�<���H>8"�:���>�YujϗP�:��S[.w��\���_�Y�Щ>X!���9�`���>�Yu�>x�-�<����|�Ծ� 2.������ec��8�+�7���˴�x���w��l���5G)�����]`�h߬(e6Zfr��,�/�eO^�]tm-=����.�x�3fI�u�p����������������0lI	W��!�g��x��aL�D���F�I#'F5)��_�/M�(#���xna����_���P��������K��:�������i@I������XJ��o�n&i�^w+��"��e@�X�y�])xQ��e��	��&h9	������mGP�K��r�h�Wd;I�b�fcO�Ȕ��o���x<���"��"h)����^�O�J��0�L��z	L2BL�v9<��=
�<]9�4#Ô��)���Sk89��b���e-���r�9��5���Uv��&&��`ߢD�������7�ҧ����K��|^�k�9����޾{�v3!�X��m7Τ1j4c����/�c���.q4�:`ԋ�+�u�q���Ĩ�1��#�|�叞�Y�~T���
���%۷8S^< �n�l!��|)�Ӆ��A�s�쑪o�g�/auO�C�D���l�8�O�q�Y�|�!c��s�UG6��:Z��->o&��E�QA�xF�O�;�=���	����_��`��W�7,��kN�+=�⑞��Ih����Iޔ2P����<����$A���&<Uޓ|�F��>�dH�o%�r"��S0��:9`.Y;��JԆ�8#�DL��r�[>4tmNM$!��r�oa� ��qW+��ì�62�����˺i�V��N�G��� ε��Y��"W^���Y����B��o�#��1���YZ��+/�l�oYz/�̛�6��+�����ެ��Mu���l�	��W��9p�Qg����ఞ�Kթc��t6�sNa�NQ���ĩ �Qs���S�&~a�:ֹ
BKG�n�l�ɱ�=4�+��L���2�S6� [�X�!ù�r�T�H&�Ŭl���nkͩ���&d,@�Zv�/��Vb���V_u�N�v�0��!�Mp�Vk�Shu�V pE&N�@�N��o�Uݩ���Ae̴R��+:bݩe�뛶ԝj��ϒ�|�N5�|@�f��č���h8մ�{�r���}^�/@��7j▮��Ш;xM]p�5V�c����tp:v�\#��#@+�2���v��N=�w���4>/�T�k��ŕHE�Y��y�����F�p�j~N{/�r�4�xh#�kų�����w�T,�ڨ�YM^7�- �z�΋�J��x�XU�Z�j�~Ϸ��V�\��:vS��Q��s�.��7����gKu� �ߚ��&%�1�.ެ���R�;�jPH��y���Dm�aڹ��m��2\f���뼱01xFU�u��u�����;6p�����QfY��M��h��0��'��X�$��lÐ��2��3����ifso��ѪJV�����KW��,��hi�RT&QV��#�y�j��p0jjy�M�QWj"��ưH��9�����in�9��^V	����(�nw��)e���눖�}t��r{;���M�M7�""�T���L�(G�0 g�_}�h�A�0[V���r����0�K��b�1�g�){��GX���A��E�)H�YBR���Y�_�h;):ꔬ0�:���3ew_��-�4�l��(�.�����?*oݩ��1�`� 3j��:��X|�h8����G,l-�t5�,�ț�<�k��6�H�?m:�v.�娖ƶ��P�QG�`x�8���R���.%�(�e��ٕO�NT5{a�ʷ_ld���貰kG=G̻�����bwAod�`.�h����%�"�H.c�%���ٕ��_
jB��kg\W�삣�h�އu��J8�7�F��KY�m>b�C���Ԕ�#��������*��G'O��h_]�O��E�M���ȯ&�1_ �83s���K����ބ6�RΗ�E�To6O?��Rٳ��'��:�r�\�b�N]�v[?�!M\.��];r{*-�~'ު�&}�X�"���M�3�~�§�_$��pJ�KE�B2�:����NZL�Y~���ܳ�d5��t��E|� ����p�Z߭V<�Θ��߄� ����{+d������K�fv7Kmެ��ܕ8�ppXz�`2������\T�5�bT�GϿʅ��Na�KG��η�`wq�    j�ӷ��q�{������X�����\�_-��?�vd|�KMd�ק���
e�����E����:������C�f���!+���
y!D1j�����a���j�W����v�v+��gO�pcR$�����(=g�O�j�}�-�M�\��5_H+�V��y�fֶA���T�8�lS�l�v��l�@D(��D���kٚ!��9���zނV��>��u��]�lAк��u@nK�[�����i���i�������}=��
�t�EƧ8=���~�)`�rQ���<}�XC2����,�j�^���ϻ���U5{4��q�-ȵ���$�a�_�������IPwpG/�\iÑ6�������Z���@U�����o7$�����[�G��k�&j;����?>�#�Sƌ���D]'���-�cU͞���5�}F��:X5;BƧ�ou	і�Z.gh3m��sѱ���:v���EgQ����oa�.��O���5t���	��ԠC�\��6v5q�����܃��Na6��0���7�j�Ш�r���0��[���-�=�?����|���8~%���*��K�������:t`Vr�}�_���x��:���+q����Α�����{���?��"��	���Ilxf����m�ƕ�}������j�Xn����ڻ���y�9s��H��_9bnG��
���\�#'<FL���;�����I��Q�Y��7N�q�I�3����&n{X����L&�e
0�+4Ջ*s_�UƱ����v�b���ʋ�G�Hs̘�Ĉ�l�"t��[��^m8pޅϷ�*A���8	ԛ���z��*�銁�$I�I�f��4q�uG��
��&h8	�v�;��RjIo̐B�����!<YŁ�}�I`_rOܟw)ٽ�ˮ#����"�L"BW?�.-Ŏ�ڌj���t��/&�y薺�h�� g~�`FN
Gmm;m?8�w������o��͢�D�/n�W�u�,��~8p��gz�(	����:���Ej�Ap�&~`�.'��C���O�2���@���:u)u���N|�Б:�c�'�.�ý�;)�1�S85n��9��e *�vʚ��.�`ES�׎���bGs�û�+Z�/+^w�J|̍}�U[�Q�8q���_9��;���MS�8��'3{�nuG{�˧��O���꩗�����nﯷ�Uu�~���L�vR0p|�� 'Mݦ��̔�8��N�F��i��+G�T���H���[���+=}�C�I�Ζ�^�Pw�p�x��e����˅�C��h�L��Qf�Q&��O?�/?�(�ʅY^�sD��$,�T�����E����w_\575���~k�lΦ�E�_ڂ���*��z�;�l:j������h��X����MG�|�r��p��t��3ࢎk��a}��ɕ:*��
�/&Ҧ��7����INI�r4�3�}�_4A�Q!�@=�;[�ָ���(&u/8
��L9rݞ�rTXc~v��(V�|��E���J�µi-Gwu����ҷ���\����٤����_���	mG}�/R<x>ת�$�y�a��~�e,��vTtϵ�mG��=���ڽ��?؝,���]Щ�GڎavF��>������EX�����;j��� RmG��8������8����/�~���7O��wί��ڌ0!��:E�8���=��[������`�
�5�C��ˋ:�kV�^���=��ʕ:RGwM.N�>�n�8ut�w v?u��u�K3�/Ml�Q �\��p���
�j�*"�p2p4c3^{� 쨸�h�����E��:Jl1FJd8�rG�-R���u�K3�uy0��u�K3IW���:�k�J:֝W-��I��V7��R���j��k����'��a!^L1U��sU�f�Gd��"|�
i��CTu��gum��E/�:�߷��L���W��]]���uu	�C�ˊ:���y���4Pu�>�Ur[up|�Z�Q��v(�z}��:����ޖ}5r<�g�a�\�-�)�S����������k�>���#������\�Ow�E,L�7�~N쒶�+�\ܴo�M��ˈO�������'cm�)ҵ�͓�����pf��ޛ��9?V$�@M����ج}��)��:��M��bF�gAlO)�]5��`�o=_�&��E�.'��N��|�������kqk;��U�XOy����-�Ō�{z���ͽ����-��̤+^���M�ٱ$�s�[f�ܛ0��mbu��eRIل���㉵���"���!��"m���v�"��}��}��h�d������y7�&�z�i�yy��Qv�I~����y�0��RO�z�?OYj��ut��6���%��f8�)�X������ y��ǟ�"���/{��퉹�T��&��CG�GR�"R�g\���~���s"�V'�
D�|���'I�bi�$_�,$�=R=��mɇNɫ\�K}/��&��U{�������NY-;�h���Qzco:�ԪM͌�A(L����~�H�ґ�GK��݀1$JQ�C�<��}�èk7	/p` {��г�W��\�ǅ~���/=��"p��,����A	s�?�f��^�>��n95|L��'J��Z���;ك����ݏ#��Ｌw���{k����6�#h�>�?��}��\��q�����r�>�exK��g|��3տr$]F̞�y\�^M�G(Ӂ��:W2���s,��Em~��������m~��ߑ�0�#?�r�����ݏ(��ֺ�߶�$��DG��+��W������*~�b��9�r���V'ۿfٷNNIG�j���=u�f�ص�,�B@��s/�G����Ʌ������Zri<{qL@Pn��^6r�����ￛid=r�n���EG��AV���[�.F�0��#c�W��	%6�O�~�����5��cgx4�s����0-PFo�㬟�������H̭*�!�i�cEH��{���/o�1@aV���	^d`��+�T|i5�3�7��=xa0���v���eDv��;(�3f̌�e��;5�����٩_�B�w�I,�[<��q|XDzn�^Uyzf{��Cv�WD5u�����m>
���h;�
�WK�cbf�T����Ƚݿ�ө��#��*�ST����\�8�R?}��=����>�5_�_̲Y������wj�:uq}��~�섛�|9����J�,Mڳk�6��?����=�&8�C�ך/iq�Q�q�P���lKI[�E:H�8d��RԱ�J��;9C�23�S�=�<�X�x9-D�;�rP�Q�{��l��cP�g�I�@i��đ�U�D���m�m�x�o*�~⁑�Y�-$v�΢uE�Ɛ�u�i:\�(��!�(=�p6f��n��]Nr4�9S�o�$��:l�8��_2�i������S�./�?�~B�Vu�ʳ�>-��ԞӰ�:5勬�ϟ+r**�=t	��:n!�[�O^e��=�e}y���<,���W)�i'R�v�n<3"Mց���H[�:`#g�v������	�S�;x8&�ʙ���Y����N��_i:�&�;>�]k9(�s���Q,�*��t��9��ٌ�0B�*�&A���EZ�脊��A�+�tlO
���[�u��h��z��>^�-u����Jݩp��)�{�]<z��X?�ȩq�ko��R{½�k<r݇ϟ�w���̋8#&+�r)b���}N}k��p{�R�ЬK7�ڢ��"�P	��5�E��\rଲ#�"l[a��ܐ��z��΢���-�Sm4��[��p���x��N��V��ɢN��<^�@c��e�	>�Uө|���6� ��1��_��D�Q&�P���7�D���>��tRg@�E�����Θ��<{�NPF+c�ݪ�h�w����ٛy��엑��8*hظz|�mƗ�K�|��{˩zÞE�m}[N}���F������Ϲ�u��KI�l%D|I��������-��\��'�ZNE> ���r*j�9#}ǗWK����-�~+    �o9��&W�h)�Ne����(d
 vl$pj͵L��EvQQЦE��Q۩3�.��<<"m��h���t�N�yP��q�v�m	&��^w,P>?e���?��ٕG�U���4ܟ�Sk4��Ox��h�ݟ2����o�q�q���Y�����a�(v��{�9[�����s�'���{���q��jۋ3<Gc	A+��}�ȩ@��I�_��T Gی����N��_^�h��BTS�2�S)(���lt��g2,($�qz/�:/(o��t�)#�ꍗ�z�1R��ų���]@���ZZ��� CG�:%b��h�
�I���<C!m%M�l;XDu� �6�����~���b�mE�k��l'V���z�wOC�Eن��p�8�-L�*8ܦ��˩���v���sm��:��va=���YЮ��}���U[���N�yT�I?PCv�Qpl��攡�G�0ϳ�A������~^4���}�#��Y;�1"�&��](���N��<v��Z�%ۥ�e��de{��/�V��#��#h�A΄r����NKGs;���m��:[�����Ejǖ���_�"���	}���{3���O��(2��h�gWC�#������*P0�����fX�K!t`,�<[Z$L�-0CHϳ��%�P����M��U���R����Td-+��v�
�����id��H:V�ס�Z�[��������^Gi`	��Uu�⽢�S�Z�F&��Z0���m;Ԝj�w�h�oP��SO�.�Zxo���<��Sj��j�~Ȯ�
fOp��Ri��Wӳ;����*�|뇫�%�"���NkͩY��}�@K�I���8>�(�TZP���Pw�G�AO��5QA[j3Zmݩ O�b�j˟�c���/u��<���h�S=.s�omR�j�O�hݩ��N�+(�3n�G$۟[�,(Cr�Y����Ǝg鲀-����=˓mg�v�ǹ��e�vr�P�IvETD�)��,O.0˜������pjj��)z�A`��Hl���@?�tO�(��nE��ѯx�޾��<YR��B���cA�y�A��7�MG�QV�����h�������g3�,�E�mkm���]>a>x�)h��?�󏾫��zPh�Q��ݍ���D��Z�,H�0���0QƖn���qŚ��jc�x��abr�ƤN���<�\Y�6������r��$	��r�)һ$��s�I=��4��K��ĳоY�2ݱb�L���[���=�ʆN��t/�Ke*|�nH"{�q�y��O�������c��;ɚ��F�޻7v�^�&=�`��l�[~ܞ�3饄�ė�;�u1���>�܍�F�e��~��a����G:��L b��i��_�5�7��1�u>�À8o�!���#��?����),��m�?����Y�k�q�Ա��/{�Z�6��,����2�/�v$��2�-�e0�>w��-��*~q�w���e6槀�[1������>/��������e��o5sQ�+^�Q}5���e����iΈ��,B~�[�o��y�kye��`��J�ƾ{{o��O����L����ON	�x1�=�4�
΀�H���E��K�w��u���g���OP�9	��kd���g�~�
�����B��e�;�G���2t�	&S���O���g�u����{����z���o$��a@��tx�wD5>�g�0�xt�Zv�z���J���S����a��s�'YS]�u���_o���L���+7u�D����՛"���,ͬ������O��C�ƧeǱ�'q*�%��I�x�+58M�7�� d���w5�*SMeNz�^g�Cޥ`�����m��og����`�܄.1��'u}�4�]:�	������m`$�X�﹒�z.�p��� ô���Z�!�;�~���� �>�X��@k\�2�W�(��g7�D����d�C�6І>�K�ޤ�D!�/��U�@`� �h�>h�N��n��
�k-��&��QH��2W��`#[dz�7�N}���ǈ���%�Z�	V�,E;�_����h�����z�������$Y����_�ߪXy*��$?�z/�K���Z� �"SLf��L��O[^�{`/.`�������[�ܻ3w���gv�J��1����<'2#�T���
������8q�<p��E��,��)�9�Wꋶ"��m0�V�9.(���4 '�����-��P�X\�p�`� �/��w�]ǒ1�C����J���ܨ&��
����d�+cn�D_��ݱ'K��7"v3^p�v�!�8���o6��|�ݢ�^@_[��P^��[���Q��ʗ�,꫓�Uz�&�+lĝ����YH+��Qonx�>9x�F���haQ��R�"�{��8�#���P�u���6D>�h¢��w�-*���%��,��q,�).bZW93��	��,����i#kO�6h�.x��õJ�,W/�5�SZ����B0S�5T�o	�0�Iݒ�:J|��8٤�Ec/�^J�\�A|��X7{�<�8��`G#IU�D��;�c��:��2��ea�O�R|�E���̛z�(M֑�u$[m���]Q?2�v�P�ukBb<��jWԌ̳�(g3�:Zi�����a���E2����E��P;\�P�rPU��8d��C�bSt�S�:�Dx%ZwDmނ���;�eDp�)������SnDs�0}����8�(��vM���p� ���2H+	�v"( �H�ޔ�@'����@NzC`,��>�5%{- ���$�U���憫��jQ��;8q����CF�9Ģ�z��kz-S�hy�Vy#�V�h�8�����z��$�7�-��	�B0ݼ,��]j��5[�8���z(���'��2#�P�%�hW<�,',�Xm�T�>u�$]!��"{\"a�����H�q�<�r|BV�6�=���ٲ�&\!�5�ݡ ls�B ��0�+�+~��x�%�R���S�x/1�^:�̥v��n�3��>���^�/�
�VX�	��v��f�|ItU�5����;MoL>��U��,��3�Լ�����tO����ø�.��L���'�edΣň��
+EțtX����� +y��&�� �ӥo*���z�N�S3��մ*�b��i�=�������&4�/߈�@L'������7��?,W�il�փF��T3��c�d#�����,��o�dRX�&C���	��E��w>a���5'�K�x�=�L�M��v�=��@-cB�d� �W
��嘓٤ DuqS"�&^:�������iy2!6��B$8MK���Eei��5�6��&�S�q-]5�8�U��9ѦT���U�i��nA��Q�p;UD�q.y�cD���hgc0��p��sހ��h��:p�0�<�l�����@��M��������٘#r��H��GdU�Z!e�Qk��ӌ�"	�]i�d-�����}HJ�/R���ŶTOP�BoA��������	��niT
΄ɧ�j����:A��Oi��ܿ�Ϣ�8
~�6�b˷��[v��0u,�/�@�@dF\{9+�s\��VQ��|���潺������/�yo��n2����uEL~y�.So��\���eF����s^�c�mc�����>�|��c��N�e���mѬԆ�lI��[�q��k��XW���p�� ��a��mM�&�c�Ti΀���l�w���j{j�����l�|YGQl�B�q�
����sAꐰ�mY��z�'����y���8b��	Yt�hPȠ��RP��t�-��C	��.'z�u��r��o�LB��F�\�B|x,o�eacU���v�_bY�KQ�ؼ8y%�:>Tj�~{ �@�#t��ʲ�T4.3Ғ+4��Q�nr���{��4���R�Db���d�đ:�ᖡ:��v������nKy��8Ч�o�������MP/#�z�tf�v�E� 7����6�&�Ax��&� Ǘj�Q�h��$�h٥�<�L�32��]���C�1���TX%%G��{�+�ul�Mf�u�    ���~�U.G�窷�#~H���a@�w(�\)FLI���������r×Mz�� Y[t�s����������Ⱥ��~�|W�	�/l<U�Ņ̢�)�E_�[wO�Lt
��s1V�t�.�/�>g�&�y�nE�W�)+"e���qN��H��U��
�4�)Ο��d����y�ߕ�Y"�=���H�im�K��M���`lp!F�F��(Y�vu��9�c6�o��׍�7$:��)�/ڼǟ�ӳ}��䞎��9���a"�!�h����H�4��Ɍn��&i�,��Q)�e-Daۧ��s6��O(�N��3��'�(�'F��&,s�b�}���A����v�}����|�����m���vۧ'��L�y���6�}�MD!4�1� >���h�űc�GP-��옱�|8�w��$�� �����l��l�'�٭VG}��&œ,���d�W\,�B>��׶��,�x�,Q�%kA��J�'��N�1�����(y�`�
j�F\�Q)��L�BX�������x���䎉Ap�06�8އ��1s<�&ۻ�6
�L�T�VD�OND�H����D_ B��ή5gƓH�!�qYM�J��������t�ݭ����/[�K����-���mHf_n2��48㹭���G���g�$�R�
��8G_��p.TgH�k�R0p��2o�
�<��.�e��?�VB�n=ÃNO�p5��x�_��ݮ`h���P����8�� �מR���*JGV��_�E�TG���V�(�Y�בp�Xbp�{�o�H���(����W�B81�o2F�O;��u".��I���e���8p�l���G�i
����6�]~�y�ښU���Hh���T��,X1`��Μ�Y�l0�(qJ�7��)Oc���9�x'S��!ez��ELN������,�ǽ� �Ƣ�����IŢ������g�E\x�Bp�B�:,c�!��Ek���k��)\m~K�CF�-��+Z����G@S\q�Æ pQf��`Ca�|�z4em~Csr^z��w0�x�o7,�&C|�*������!˕��5�m�6%�L�6�B�q����@�pE�U:Jq+��Y�����4�M�K�E��G��8l�a��c�8��A$N�_���"�" a�[���M:W� rD��ñWDnԌ=D��[9��}渏��3p)h�8�>�it�}��x<Y�}�L�*+I�ɒj+�rvىi2��v��[�y�U���	����KΩ��'M���0\@����K��U=֢��0�%8�Z�5�����&�D�h�4}��+�t��\��^�4�c}�q�Z��׺pB�(�ek[)Y@8�(�����n4{G���j��ה\��W���PK"��2B>��Y{U\�l�e�a&O�{j���2؃���f��p+p����of�:�
NXn�b�[?΋��28��q�r�mB�>"�-J�}Z����V�������)�HQǵ�����NG<����U���jGg(�����Fu����;.�����Wj����]���9���ϷDH�3|�,������e���q��	��L-����Nn����hB\�M�+�#
��0�b�U�U�؈5�싂"�f�gS���E��TJ�I�#��A@�7�Π�r �r�Ԕ�w�`��/�Ї�Ȏ6;��-X2�&Q�BvŻ��L/��nW0�O2�ȩ7���?��h[2�N��[���W���y��G�$���C������Ȣ�X��
Y��M5��!��ě$��,��P���rL5Y��C�4�E��hlD����s9��T��)��h"8�2���\���M͕p���A���n4ߏ#[;71�-���,�L�-�7a�牾q�/�o�K��H�d�=|�C�J$���Y#<zDU�� ����:hx�3Y~��5�&���Q�H���l����������ׂO�2M닦kA��ὬVE�\RMױ|n�5��d�ď+���K����U������-ڼR4��.q������.i�b��Mʷ	�OA��d=����&\^�8�ǐ֋"	z�8��H�0	�dko�iCݤy�:2ȠJ@V�3���M�]z�	����I��#��!�;��I��x���TfsX���6!u�0��E4y�]gWTIи~����HRC4�5u�'�����z��"'��6�BZ���'��>���A�Ϲ?�=}�J�z]���d��4k�>�L�����&�MF�1�!��Y�j+�s�T�:���*z\�C�2qK�7���9�O�������#����a��$Ŧ�\g�U��l�:��Q�됾j�l.?�ɶ�	.[ӄmQ�G����,<��Ѯ,*�s���|��Q�}��]�l������� U��e:e���w�Zou)��>��{���|
��Q�*��^H4�$ؑC�����H��*�L�X�?K$>�*^G��͞<�X�JhK���8��c£Q!]<��F6�&Қ�iad��ݟdr*2��������Z�:Y��᏾��]��jP�WO��El�Mq��8Q��M��Ө$��ju�@Q��7ƟԽ+�����k��6�p���~y!`\���g�ik욄��XՓM����G��޾Ȑ���n�X��7"]���/�X|�f{�j��8y�}N�����,L���$թhiZn�d��6<9�Ξ��{���Vb���IS�{�F��r�y�{��-���E����g�z��T�lZ��B7�IQNeg��	�b٫��y�1��O��M[5i㧓ڠ-K��9��=M#������-I�^�%Hq��j����G0�>+�4~����|�<_m��U��K֠/�@`+��Naʔ�h0mA���m�YW������F�����7�e�㌆���F�tp��5,y�^�3�mA	>��S<*m���']aH6�O�PJ�����&�>-��&d0�>����,I봳���s��X<��m�)Yx�����b���yL���Q��X46Vui�N��8��2+Z�Ѡ��O'���?�F 8N�����m1.�r�5M����8�ײ����ux��k����Qzh�����2�Wsͽ�
��J�i�	�5�w���}���x��U)(�d��ō��k4�'Pw�񾽥��~D��,k��_�\�ƽe����~y��Yd$�,�P����s޹�(������ǉ����0��x�l�"��G���(�K�2hDcil�f�5�F��-��w{����z��^B�ϯ	ԧ&����ؙ��(n�le��+��[:�\��� ���Ǒ��.��
�B��i�O����K��hI6L��"To)Y
V�r���w|����d#f�>Ы�Տ��_؊��5��W�6�_�D�*�������!}ؾ��7_-_-�bz�RZ�V�^�N\��h��P=�J~`��?��C�i�4W�SY8\�N8�!�����=���x����/ިm�R�_� z��V48I�]�
_}�#���}��D|�ɟ����6��O���U�������+�dW$����m2�����n��	��:�)�
v_�/tf��  �|�����s|*�;ͳ����L�1�4:бȱ'8�4t��}���ND*���8,;,+�	�������7��H��ر�����j�˛8��	�t��#	���k��I/�ٜo۲�9�G��G�pn<; &f��c���)�i<x��dʋ��75�������c�$�p$��(���5AqO���:5hW�(�< ��1bH����,����� ��Vǎ��0c_Vn�ɬ0�J��+Z>=����6�T�VA�Ҋ���9�%��#EeAm���O7-�{#��6���Jnn�0ƒSm��A�W���d�]j��W2����C�/U��!^�6Ǫ���pDS_T����0��%�� l��r.���MU�T�*��;��L�FE��uu�?SV�9��HY. ������y�h
2ّ$]Py���e�j�:��r�%pO�F��L���z�,�6�\+�A����~����Z*��    ��Ic�:���aH��hF���x�#�\�%LL%�E�P��q�D�� �6do���4:a(c8ś���(Ehġl�&�Ћ7/�"چ�j���S=����DdM3q��,����3a��2��u�y�.��hݪh���A�d��hDׂ�ªh�ʮ�E��R~�q�,�C���F���u85a�,�D�H���9�D�TE����M����.ox�"d�ޥ�����DS-B��KD���&��,��y�5���h�~'׷&��
&�_��
F���1ɒM��H#f!�8��F��V,�7S�Ä�?��Ǖ�0d
}���:�~�M�ȄN��§wȭ�:P�_�"ЪA����^,՝�j��%�q�x���	gfq�y~��FZɢu��L��N��,�daD�fA���o��,j��o~��+U�����	�f�
3�Qoİ��WԼ�	�f��:N�+`��Y��;�MҘ{} jN�"�P�q$K"L��r,5�R��y1e��*����;��k%S�^���#�#\��&��&�������F���U�W���`l���Ji#��U7��m눏tʸ�� ��-�a�f��P� ׿!�@]�2���_jC��v� ��#7D+ do{�t�}�)��rEC���wؚ�������h�j���1�)��Z7�K4��F��R�:�d&�sS� �y'�"}��Q$�pS�,!�ɏ���T�,pQ��a��'���(Y�'�/�%ꍘ^鄚~��0[�D��+�܄1�HTAQ�Cy��D�9.j8���q!K��ʯ���q=d�rs�D�9�ik/�##d)����UZ����#+�'�8�xO`���Ʊ�Q�|ńk��8д0��t�o��y���O��Ȅ�#ĞN9�/O��0��d(tN�s�?�(4 ���/H�;�"2�Q�(Y���#T¸����#4���r�Aa<B�i��W�����M�~4��~��S�$��"C�>V_���pB�Y�:_��o2liҍ��/�G�6=|ÒT����&+�+�/�GH41qE��hD c�	�α�����|a3B�	�%Y\���sJLL}G�az�f�q��͗P��8+�=u�f���}=G�t�0�M9J��;ͲJ�CU4
��4^ ܢ���4�F��!��[^3�RF�x_؊�bf4ȣW	bLÜ,v,����V�ڍ�ߙ�����o~&ڠ	w�	G�o���ֶ/D(-�G<����Û���7aB`�F(���J��³�� d��󻰈E/j݂��4��2�!D�uv����X�(�pқ�*_X�PIB����Jq�[G�����6��m�N���h�R��� �T~�\���k�K;��������G2��c��	�G��1�+7kK�$�?����D��<Ì���udjT����/I�����N���
�~��_؄�=:�W�>�c�G���qT���(���A:�o�'�k�|aB��^{s��� ��i\�ES���8��]�O3\�9L���%=�1�9BX���7dM�1����*��.Iv���/�4��Q7�������1����C�_8�����
s2H'�q�2-&F(!�VJ8�K���A���]��Y��L�n���d��7��%a(B�T���6L���A��p��0!�4�fS�0�fHV��b}a7Bi���?�G��PG���6:��!�T2��w��`4+��_�p?��.�qB�u���
a^BEi�a��°���03�i�=`�bG����~aXB!��_�U̳��/!�t�@�yR���I�$wpa^B&��_t�@�J�!w&�/LK�$a<+6�|aYB+��_rz2BNS?�%$��ț5X��;v&��ך�/aeB>i;��y���	�$�˅	�t�_avBF��9��/LN($u�96ϧ[�.�s�̺�҉�L��0?��t
�%�:O���-�سd.�	�u׊0C��4X�g!`�h&D�7�R ?��*�,�������2Ta�BW�0Y�ȋ���BK��*ڍgZC�oʋ�0P��tJ�K9Ii�Ԡ���`�:�ߨ��b���vĎ���K�L5ύ�Ϳ�C��6��IĞ�Ȝ���"�����G��E:�$p�b�'i^��w����C���ۀUF�Ff?��o�bO���o��[�=~�SK߰rz��W����)(�.�4�UcU�����	���"ld��u#�`=��^WO�a���w��w�F�poA;czF�.T�(�1M��yF_%����_ɹ��ΑiDߣ�>��=���H_^f&8j��& ́�/6&i>Mss� S
����'��}�`Lbr Ցr�Qm����f��h��d�-�.���������Y��OK5<���D�<JƸ�F�Uqױ;z�ya��?�w:�|�&Y�^4��B��ٓ�ݷ������m��ET	v�"E`$R�g4��4��a�^��6��R	�U�ڍ���2P����Z�������V����,�k�5��x3n5������8��Aд�# n���9&��pep�uL�8\ȡ��N�G�=8G��;�vvh��'�e �Ds�"s�K���4V��'�&�@�7zB}g0�	�~�L��\P5����z����e���Lf��Y:����������t1Jq���ܙ��Ჵ���3�>ݲz�ȧ�������;�����`�@��G�z_$�i��c6��r�������#�O�Fb�lwD��:L����w{��W���w�:�� �4��Jg�h���8utCݿK�V-"�Vk��o���>�}��5�FT�cQ�H�)��:�®)=w��16�]�[{8]�.ѸФu) |�n���;��8!�xFwW��}�ҕ�+ˋ w����iQJ��P3�vDA�dB�!P��q�(������4������P�4�R����g钨�pvD�p��ɽGE��̫��$X�d�g��B����i2��s�3��I��j���~FS��8�����9�yV�|Aa	���՟e����k���f�=�q�PJܝ�O�4Ф׈hŪ ��ӂh8��CG��n�8�g/QS���+^�dT����ks�W�<��v��v@�8��pI�a���Xa2]�7t��U6� �&#�h��a��a���t�B5�����'�zE��a���B0T�9D/ �p��r\x���`6��pMG����>d�o�*j�-q�� �T5
�%�������л_�">K!�'ki6~�c�ן�Pq<�N�	b�X�lϳ	�O�D}ЪYW�a�#*"�BQeuO}g>�����6 -y�+(�8��0��TB�0	s~�xKPq\�|w}*n��^�#�O?� �7�B�� �T�.�.��D,�5t���y]ԝ��3��I��<�#����q �T���0��}|Ѭ��Р,ީfQ�`�zhp���
�8���jt�ZdU��m�w�����H5�^0�6�>���9=������9�R �@���,1}x��'Y�D������Q�_���87A�wCT��90)8Y�C�F��"-�O�ӣ~�pU�ؕ���5j��K�}>�)W�.芫�jF�\_�����[D��sIjʍ��np�_A
�%a��Q�;br��@f͊�i`��sz�MY=4�[�������MQ)3AN��ڢ)jdLNj�X��(#[��pi�2�d6���j����X����y2d�͖(!M]�s�%ˇ��*4�n��Z���2�5´;�x��bۄ��N	�%���%�UL>
�*�Ogȁ8�ZF��Q��cL��h]��u:��Ԏ��7�˱����֪+ ���B8	�0�� �,�J� q�5�`]�h!`���9�:�}I��0&,���Q��<s[�&S�TOxڶxMu����+2���l>\i�*- rτ�X�y�j!���J�R��b�QU��Q����q�L/�!��D�hM"���wф�'K�    �%��z�V��A�b��Hoq��M"V�rh].�W<�ZZ�K��j�ޅy�c�E��PN���Ȣ�Fa;�)r�I�B��j�y��Ֆ4gBd�8`���9@�����#��%j�}I&T�f�h��%��U�����׼�dQ-�\��Ca���@�M��F�$�$Ywu���C�b�M�b���z.#
�Z�Eq8�)��,MZ2t�'鋪�+(r���G��|%�P�Ĉ�9�t�Zl���Sk�缵.�Hf�����~��&�j��O3��|QMl��k���Mm��!0i�d>ϒ���I�a?[T��ݘ�ſ���|�%^W�8|�c�m@��.Gq*��4[�.����!�`lL[���dч�lN[�:p���S_Յ��������滨4��j��/h
��Z79*�^�����p	��b$)a�;e����4���
nN#Ԫ��4����򪢺���%[��+�H��-lK`8Zc؁��aQ�;��|K�mnK�L�Y5mas�񃚨k�%��ڌj%XSG�?����+�5`k�*�Xr�zlMԔ�(�3�i�b�۲��8���m����_C(��bS��o	�W��g��  p���vK��N�C3Cn��a�.4n�aO��5+�9�:\�.P\ �����̒��lV[Kb��E��6�G�D�Tu�1f��iZD�h�!kgtGD *#(O�x����2�Q'4�吃D����5lnQAj�aҋ���:��jcQ[��ސ���� ��#<�(�Գp�e^�t]A���>���,���;�cf�k������zVPO�\��4�t����D���,���4�R����u���5|�5��e�y�@�0����q�?¨���a�d��U֐�n��h����84sp�Vaf-��P!ԗAy_c
�2h���0X��ނ���<Z������C�.��=�s�lE��N�'Ȇ��#Q�O��=go턣P�ww�2���7�F�������?${i.)�["OE�����^�%��Y�3��i|K��GK��vW$0��{�3���(p�c�M��cY�P�w�hD�BD��g�Mְ�:�7�MF=p��X�A��D_ӟ�~�3���<����h�ْ��OM�d^�Y;�x_,�ko�ۯe�����L��'7�:H�Z���`�F��C�b���L>���Nvx,��l��(���� 1���e�h��[��hbd�f�S����a�A���\��=��{�`��$LKb��VȽ�'�J�kX�����q�
.��Þ̬^p���XVG�aюþ�=e�#X��	�K5䯯�q2�;)�j��c/,K�Ȏ��y���g��4��GI�^-�͵wR\f�U����x�<N�	j�8GX�G	Z"A]�$�u�^���G���-��?W�%���f�^��u�8MS��Es ����Z�iQ��4�����4�r��	'��q�٪,�̳���I�����<l��*"Q�KU�G��fIg���(�xd1B��W�0`������<G�za����'���Z4Tw=Oc���5ѲdW�L�Gt]4j�=UV�quQ24O��$|�S�-�_,��#^�$�:��y��e���8FM����$d����N%��+6�E?{�m�IZ�)��G)�0N�D�'�i�~�j�n�t����Ș}��z���^�q��R��Y���F�[�K�a�²|��ڥ��Vԅ���j	
f�<�J�)3��?�lٚ`���n"��۔O�ـ�\�d��0�TM�Ȇ�#z��s5��fI�E"Dd�Ԡ�tN6˂��Y1���$Kh��
�W�0��"Ր�rlVHT���qo�oqo�i�����'�تI]�|�P��
�H s�~�/�շ�-�4 y�o�pgW�M�GO�X���,�b�4�R.��p���B�	��[E��P�u��ju(MKW�oSu�#���4��d���ar�Lx�'`���;8��q��U>�#���q
�GK��X����ԶW�%�d��&���uEQq�1i>	�`�Uu����������Z�VOW� G��r�bü+^p�.t4ohگ����v��]_G����&��]�?��R%��U���=�e���9��5�E�p�QtTOT׸�[�@/��3���Ya�%$Rת�R0Uf�!�����v�f�޹@��u��UO�V�lNfQ
O�5��<֐���Û��4����h�&�rӼL��/^?Y��<�V�w�b���pIg�N��v*^x�*k��<�\//��<��*��*�0$CO��
�п`��@����0����;�W�'�e�9�K&��JϠ��&�j������9��Z�1|f�e�\d������"� ��1͍P@�9-��B�y2�/���S��9�����k�b�]z_�_����=���,A��G���_i����aK�5��d�&�@[tv�3����8���%� �͊�bn�0$�D���UI��1̲�;���������+�(~�@Q\�U7~���0=uo к:6��W�pX�$�'4KѬӕ�Qh�f�*Zz�5$�6?�ϧ$
��^8�Ҹ�&�gZ��|�`YNB��3���"�YY�L����$ǈ�*���i�Ӕ�m~�N1��ckqqo��NXY����
�P�Z7U'�*�Zu��Bx��3L�{m��}�2���_A6ӡ����ITo_�8{�I�5"�8R��[��:U�d�5�����:�N��"6�վ�ԫS��n¡�eI8�K���C�Y�M�J���m���r6��V�����q��K�.ԗ�ށ�b���C�jP�"��)��|Nc�j����H�
�VPl��|Tc�z��5;Z�Ԓ���B���Q��X�Q�U4Z/8��6
�:w���*D@��`Z�"�m�����;ġNa�lW��jo��љ�p����Q��{񊊷T�S���pf<(�o�g��^
���S@MՅX4+��{8P��Ym���W�1���r���iŉ�*�7�O�pIs� ��8��;͎��c���(���ʯ�8N�P�80��_�3�BB4�D'0�����KSH�/D"��㦪}�@�Y>��z��;��7�PG��l󋜻{�EAT���HlD��-Nˡ�7�>a��[�����ï��C���C��;�����?'^g�>��m	��A���)������ц�������_�~���^����r��F��l�O0�pd�>��/�|�hq2	)��M��{�Q�
ǁ��w?�����o4��X2�O��{>�@���O��w�L��i�S<I�e�a������$�г>j��9�:����7tl�5��*���8�J�!�E��P���n����В5E=�ް9(�0|�����Je�*TE� R�l�N��D�h(J��?�=z��<�C�5�5>7�1n�����ł����TE�`�os8�*|��A��|��o:MU4Y�E^�F���Rբbe�5Q� �-�Gm�aa4�7�)���:��W��&�-,�&@�6�q�D݂�-
��5�Z���������ʵ��@I�ꑩw~�����1�eh���� �cBK�8��p�����AEv�1����
o<KՐ��#|��Sf�zA���E���#�=u*}���j��V�%�ϼ��?��F�)�&Z�U��ٟ~����8�cŒ%p�*��9��Y���󑷓��Q�8���Nd��W���[�t�h���B ����)��o�Y&(�ޔ�D>�d�x����-դC���i|���}2K��6�z��������C���y�N�j����wpA��{���4Ƨ�o��NOPU�L�~��HH�V4-��Џ������i�{,#g��6�D�>���싔��<þV�j��LK��h+��^��e�$�hE�N{(0���4���R\{.7�F�'�Y�и��s1K�LE�i�
��>M�;�B,\e��k�����R������%J0<D�&�gz+��K�t��=A�:Zb�'���#�嶾��P-(�����Ь�y)f�9嫐��~��hq�^��X¾�^���2w%#�C�    �{��~Ր[����l@���s^g؄5{8ș\�L���V��q���+����io?��Q�N҉��n�MeL������9+/�f+4%�Z1��Y���g��˦L@ft�;V#2����28yZj!#кz־Z xh�l���a�����/�h��M{�{;3=�~ʛ�EZ>�#�^�z�����^~e���9�����?_���L�P�;*��")���5��%嫳�?{�׷z���W��<YUU�`ʕ��%^.��!�Z���*�ȹ%�8�K�Q�(����%�Ģg�OX����$�~	�؅sJ����,0����;�g�����Z��AUm�;��R�s��mz9|�m�傫nI��ʭ׳`����z(W�FI�U��]Mf�βK����c�s� M�ǸYd~�2�������4��;vy׫���L!�ylQHc�^k��K�1?F#*�]�l�=���p�b���7mW�&��q�Mr���47_�_���Z�5����8xa���pk�D��D�$�Q&��L�dNr8�VR�|�_|I���tH�h�]nu�=���\C�C�zS5UW#u�%t�,�[5��xY�瓢���1>��;�U)�9���*_��L{�9��
�K�#
U��h��YB�ԁu���ߥ��X�ԑ�Q�B���C7hM�
�i� �8B��r$P�.��"�]� �E��H���K��d�;���X��;Ӌ�5�g��{G���Ȍ���(쒕X]��|�w�\G�H��Ǔi��s��^�@1�"�1UJ�Ei��YEP�o��TDqC<�K�%�۳1�m1;19����e
���o��5��l	C\#1[�%��|�aA��əCeoT}W�<�r�F����E�{�eN}������_̶ñ��ͣ�k�#�x���{�*\�=A�!'�&�*]n���N	�=�m�D��)q��p�͡��]���7X�C�Al�Fzҷ��}v���T���Y掱;�Wqw��M�O�<�Uyҳ-G#M��WT�T{��K�m�Vۮ���Mo��;:���%�,]B7ВƦ4Nb������}Ǔ!�U�K�����8��yM��sM��[�e��v8�o�Q��S�WU�������^U�	�f�X�ǋl�E6p�M�Yz����8yXB�u5�P�i>�'�]�_y��^\Ͻ�Jy�iڼ�ڼZƥ.Z��Z�̨�|��;u��"��tj�4�,W�����R�2��-������!�o �|vw�RdO]Ïa��w�8�����\��t��"D�3�IW���є���� ���
��c5��4�ݒ��¡��@磴�xd]X�X�X"0Mb~1�hXs���������U�B�^}d�-��4K�a�ͱ�}�`,y:���� ��NhD��'����IL6����jP���N�L�V�z
>z4��Ka�@m��D�2��+��eqŋ���C��^G['4����xX;N�rF	�zP����7�1���W�����ؘ�-ʋ���Qt��ޑ��n����5�o8�@$�ӄ����m��,���9nm��8�{	��C��;�{�a�DTf�*U��1-��J��1��luG邦�c��7p��i�'dG-F����֑�l>l�Y\r�&C�Ku����*�tK�����G�=���Oh�3��
����>c��}v��S,�-��}	1e	�&aɦi�~�L`��q���$��$ǂ��5j��v.@9�!l8,��q�xӔ-[�����h�zi�|�=c�t�V��Nӡ��x�a��h�=�G�QL�H�sJ�{���qV�NkB͋,	�rGP���7�3�ys�*Y7SZ�-�/N7�Q�x�py�M�V���^5������s�qlJ,�o��Vui��Ǜ�~�AC�L��خ��`\�	�0�t�����.�G=v���H	��S�?K�(@k����ɳ�.�b��-�r	+��5%6~Zt���TUջ��V�9w�2	��iZl>�Ǵ�_q��<.�X[�U�*PP{K�i�$Uͥjp^��#$��dd�N�͇Q��`Ϟ㆜MEf���w��|\�S��elfOҸ��.���ı~��5�Ϸ:�Y���ʂ�M�
'3��5�/���1_,n"�݁��t:�afuXZk>�y����[�Iߦi�ق�M	����=,��'���&2�ۧ8b0��~b�3�aZ��v��,��Ρ�j犖��*����i|�c�:�
erEV���������_>�E���CI!F�c7���y1X��hǮ�����g��-U���swD�m���m["x�*�r\C�R��<!�zt��2A�z��4�K&8��;*b��G;G6u��2?���e|����rF�b�����X��|��=cq�9��jӿ��xv���8�1����v�-�C{��ة��uu���}��%-��O�D�1O�D�Q�'����>z�uGԞ���qu�un]b�ʙ޷M�.34�g^{<��P�Y)�v�����c����[홾L��2bmҷ(�,���E����h �;�ZR�1�l��������u��D�0_D�� F��E�6���+Y�i���:�\�Rns�:%�h3\�3G���Xf����7�3=���w-X�� ��w� 2�q��@��F�#���lOT��p��XQ���@��l�Z^~�q�<*ي�/B�tE���_��0Y�1}�����K�Bo]h��i#�����:O"2��tF�@4:���d��"� ��ή����u�l�C�r��j��j�Vos�ʎof�2kL�6uC�*r�d�&��y�����9�¨�u<.��p�����6��e[e��u*q���E�!�R�Ǘ5���MJk�(F�>�A�s8zÒ!,��cA!dI&�W��Zw�7� {��\�޿�I����M��S��?��9 ���9��L;w������?y_t>����sHu�D�d{�e��C���7�J�2��۟���d�f�&�C��w�N����=����G	F�|��F]�*_|���&r�1�d��ERXf\lݱE��`�����c9ۆ��YL�De�MA7]d�tK�����"HmI��߸��y_��UDݕ�=�њ�f����Ng������GI��pH��o�B��RU�����9hM���n(��� F�'�g�~�46��O
Ȧ��Fd$���7����r_$�ח���;�p/eT7�K&D�M�#C�	�7ʤ�[=������uF���t�C�4�O�T���k8��ߪ�+��U�����+�;0�-��d������F3����Hd<�w@���/4t���RE�*W�����/��-]�7P�Q5�Q��^s���bSG��F����@��Ƹ��ܿ�e!�7�O���P��3X�q4��uE��^��:4UU�r|Z������d������c\���Q���@|Hd�4�����cꅀ���?���#�a�CO���j�����ߧc�+�u�H�`cQg=Mch,
�>=O��ӡM�b��8�C���Z���-HF玞��pE�\OfX�bS �+L,J�IMh���!�#�je��{.�^�X�֒.
?^�`l
�z>��+��Gۂrg$�RV#���p�/�l��;,�Ft��{	��%�vB����(}�	�J���(�c�.��X�#�dxD�i.�����섗a��C�L�E:1/�2�{�^)j�ë���b-(da/��j�%s����Vd]��Q� o�
\�ÄE�-HUJq�fB�u���g�C��|��W .*��<�
���e��|�=>K�70?D�	>L��\f�M����^z8AL��8K�,�>���{|��qS	'KK�pE�"�?%��
�
8�q���ׂ�9�淣p��OQUH[���	-�n!��fIC�p�m��j�>-8�gF�2�6eê�����e�5Y/�Tf�b��5FHbK��Z�C.�/ �}���7�N������w�(�Q�&���n!YWS�1�U|�d �J�%T3���p ��%(�Ȩ��|�Ѵ}����=�9��;G���Γ b  (3���0��z�,�5�xD#����$�"�&�%�j�9p3���Q�-��q���u�2��{�w~��;�,y��K"IV-=zʾl�^>�T��Dy�>�S��@���(�a��|�@<1	ES��(��M9Dv��(k:����J��.ҷi��<j4�t�.$]�ǈ�850>�4Z"n����j[_G����1G�4[{_�b[��ï�%m�Z1u�1�S�	��i:cu8p(��q#�{$P���"\�=p�	5�w���u�I�E�E���PԬRskp	cѳ=����}�g�C��Q�dJ�a��H��T�P&t>>%�2�i�f�׺��PG���F��Q��x�z�$	��}�CnX�N#��(ٗTg�^;ʌ�}	�>Y� ��B����Hٗ0�,�#Мh�j��B�:���LA�nJ����G6�/��W�h2�v�i��q���֨�|���(_�z�/��8���#<���� �& �$��E�]�i����M�!�;�8� �rkռ�h�̩�h��_��>K&qE4���OUDc���k�Tn�	Xz�"�Wx�a����cS9=�v�B>&���V�"U�|��:����A��*X,���
�]�|F�D��nTj�Å�4~F�yG8�2)�Y��QQ�X&x��䶘	���q!9P��G��~��²f����P��qt���E���
�6��n�
��Չ��v�-�ge6	\g����j��x�z��<S�T28	Oiax ��3�V���`��]"JC�8J�kx�1�oy�v,��+�Wd>�WL�Wg���n˧�Wu]ze[�ʧA~��z=��L�ْB��l���{��(�+����G���Qq��&������!�8Z�*~���iw_$�=J�G���$�N4���|XlSAb�%p~��R%
��|Lt,
��Qʩ�h�}B7��X�K�%A���{2���,����j�T�p��W�_�E�3�6�6�i�V�8Nd��R�"��8{z�U�J9��u���2R'��P��<���̾����E��b�m��㙾..J0�Qzl|�Z�R�L�J_�&jkI��Ko�Yn�R�hU�Q��A�ǳ

�I�J�4�LK�|�_Һ�2{�	��uH�u,(����V=�go��z�}��(����C���{�8^T��������h�f�V0�l�8����-W�D� ^7]��*=�Pn�El�i��nK��˹�����S�aoK�!�d�_�oKN�S.@S�-UH�q�~Ρ�

q��{��-9��'��h�=Ɓ�	V�U�*0�pK���(,D&,H��
9w�t��%2!qK�PY:�ű�>\W��QiHE߲��/*MV^��E0Duɾ;��ڄ�-A8*�ఱ"*��&Q��NT���0�M\䮈zB��}�D�-QL�D��@u�zTD��qh�*mJ�â�G�G	���θj���5\�p��/���o>$�m췻����Q�l>\�jW����惦�C�����IG�d���|�h�@ilBlixV8�E�"�]���������g<�[���	��w��G�,����ӝ���;��\U�u��`�ܮԁ(�_ ��0��x]�hB��f������ߧ�}��x�0 �Q�7��%�2[�3���SG\m*J>�>3��%Y��Sn�?��������}�!���?�g�h j/DZ��ס,\����ރ���<����t�0Z#0�ڄ���;�yJ�uL+���r��K�`X�.g49�Kx�m@^�&�%�i���<&EħC�WY���!��x� ��MQ{��8� 4�M��yy�O�{.��Q��T������W�W�LN9*      �   �  x�}�K��`���)r�Q��"'�u���$��L�˛�>C� �p�6�/�/�_��	~�����g����%��z��bZ��.��E�`��S��<�HBdb�Y8�� Uק�Jx�G<��� �|�h2t,$��%�#�멣���Y$�tSQ�)+!kb0��^�H7�F3N�bX�A��������[_�r�-nJ$$�JLW���������/�cH/
FJF��kR���5,
�䴰�HM�PQh��aƲ�8?���K��:�N��2k��PyK������'k��.V�����T�1BhƟ�u ����_�E�u�q�������-�Ut�:*4]����ȣ���-��� ����G>���_b��;UHi�f?�~,%"o��Oĝj�h�#ej|�<���Z�oѕv�{���P�f�$
���[d��Z��Ƴp�4=�NXy�E������j"_I�.�s���C�yq~���p
o|      �   b   x�3�LIMK,�)�4204�54�54U04�2��2��3�04�4�'���Z��[���\R��Z����YR�il``�q���8%@� %\1z\\\ 	�V      �   �  x�}�;n#1@k�)���(Q��)��M
q�N`8MN�L�� ���G?�'�9��fh'��ȃe�fB�!���i�h�E�Gh�P�h���M�i��gch�h�h�J��M�)�S�6MKH��P��kmIX"M�~{mm�(�km5`<�2�?&C��!�FM"dLѨ��!�P�z�s��o�!Ө$yo�'�1dN�YA^sClNU;2�jZ���ڑyZ���EnͫjG��4��%��m��L���jil���y�;���&j2t-<@�4�~߱R�{�;2��qԝ*������g��ֹ��C��ř>P���|�G{<}��t�2O�<�Q��p`Y	���|�/�1^ޮ�.�G������A��Xoy�,1]F'1��V�
�:&V�g�߉�(8r�-ւ$Bf|�<>﷿��������q}�%XH��o �Y��"�c����eY����k      �      x������ � �      �   4   x�3�tIMK,�)�4204�54�54U04�2��26�3�433��#����� h      �      x������ � �      �      x������ � �      �      x������ � �      �   V   x�3�.(JMUpI��W�,I�L�H�-�I�K����b�"4)� g	��������������������������!)�=... o�!&      �      x������ � �      �      x������ � �      �   l   x�3�t��/���K���LF�溆����
�V��V�&z&�&���b���8���S�cTm�O
h�1�KjZbiN	'g	�AFV��V�zƦ&����b���� $).C      �   k   x�}�1
�0�zs
/`ؿ������*�������`e#S<[Vf&!�B��%PBpP��Z�����q^k���M#]����WO_X4��ڶqk���K�s��"�      �   F   x�3�t*J�K)�4204�54�54U04�2��20�3�43��DH�)XZ�[�뙛��Xqr��qqq h�      �   �  x����N�0���S�1��?�;`=h$X�	SD+� �j^��vh:��Rl%_��q0;r�~����9��uJ�Cu��A��G�1\ ���+&�H� �0)�۱Cj���y��=�i��9���ʠ�%��B��$�è^V9{\5fwϡ��\ | Ҭ�BA����]�<�}���hљv6F�	,��9Ci�����r�~> �~���E��P�p�(����&J�:��[�>�����:�|�
��5�)Z�"=�:���b��a\X�6f��"&�贩\s ����V�f�����m0l���9&2<
�㘋��L:q����߃�kE\����b�є��N#�T�,�ǝ��x?�_�C�qA5�E��F�1ʉ$��z"�4�<���� rM��      �      x������ � �      �      x������ � �      �      x������ � �      �   [  x��U�nTG�}��@V�3��6�AE\�
!���"����Z
l.U��=�sf�>��i)��ܤk�E|r���!�;���b5'�n��(Jgl��}�@�2T�goq����[�l�h���<��ϓxkΙ�-��������~+���e}��q���/ng��u�˫��W��w�$�)��r������$���+��Kl"\���\�-(ǃr�jY�O�<�����-�h)�4�D��*8fw15���9�n���M��4����x�"��r�Z���� �j�[s�M��QW+�\�'�y.yj��(5l+���UN��T�W�� t�5��Շs��<�S>��ѓ�͓���?_�·�on#	w8
�YCZ1���J�����_Z��q����^�)��5�+ح����D�8aY�c��� >�lz��y�ӷ��K-u�da *ٛJ��c?��� FC�m�i�n*6���O1r��-q8�R#

���.�
��9,���pe0ښn����ϟ7/�^�9;8����g.���G���T岒�I�Q%k�+���r'U�U�F�p'@bJ7w$X5�
���4+.�trTᏭ�kms�U��g���U^j�9�P�(�} {�tk�2���T"J��$�<)�]��pCfj��b�Aä̞��ֈ�Rtu�ja�@�{��8)����s{p�n��������Η��;Ľ�{â[6H�]�p�U�b)7���Ϊ7��k�U�^�77�S�m��Q[�U�fܦ�`���9-��+#�J�u����I������×� u$�"��1F2�mb�;zX�֩c(y4kL7NwU��4�n�K���fލ�zc�3�e�h�M���헫q����᳓��G_�|�\���6�`�M�;��/�.+NA�����^6��4`I���:	�G�an��f1�f邁�u��,����!�<	�K�%Z����R�i�à�B��s���$i�ܿ����Ү.>=}�_��.�qsqv�緡P�K��c�F�m�v*k��pR�RuG�7ՕE�v
u��jh�~r���㸗��ل��Z��q�GDH�a�]�^������Oe�      �   �  x���Mn�0���)r��'�]�슦A���	z�3�qЉd�� ^I�?>�=J�����# �h �����S��i˯���Q�G�G��0$)(��,�|����Kg,-��(b�cg���9uB�)抲�,)�;, �z��}%�ԥW������)�
��`rl�I8u�9*E�tx�
p���LR���l+P��H�WM<�#� hJ���B�Ts�.��m߀���`c�U��U(�
���s�H���+]J�5�܁z�@֑ohWbZ�e���}�ܗ�Ch�5Q�1R�X7�����ك���oX�ACU/�_j�U�O�K��3�1 �'`�J��i�g1���-Z��LZT/O��։����!>�g�\|���Z�<=��Qv�!3Ǎ����l#��i��7�~I���e���F�)l%�)g���/S��p5��Xnsj�Jvuf�xי�vj����˙�!ӡ[:�Q:��d�t�t�ܥ�l5�a���UyJ�J����5�\����J@>/m%�6�/�L��t��� z%�j�=p�֐�Tz��9�'C�*�=�����Yr�Eyi1�0V�k��5�O���ԥ�]��-r�16��l�d񒕝M�d$��z���+��$G�M4/����6+]N���Vk���E�      �   �  x�}�;��0c���N�C���=�S��ڮ-;�����1n�	�9�����8��_���wH�Ce�o"o�߄O��=l��kXg���r�a(j4ϱA�j�@af�A�a�A�p���(�r�%#�o�׬�[���D�T��KJS�;DY������D��h��®�� )i0�k�ugLDR�?P�]ݬ�C$� �O���OBRP��"�"�d�4�6�jNDRC�&�ځ�H��9Ւ�F$E��Lז]�BMDR%04�4���='"-8,Zo� �F��k(m8'��H���(-������X�ht�50i��:׮���MH��jf�Y@֍H����]�9iq��%ý�_s"�������ڛ��9h�\��k`"�b���Tv���~ؗ_��v�><_��BV��y�uV���Џ���@      �   �   x�}ͱ�0������^KA�apqQ�LL5C1X}zQäa���_�#(��1?@1LΏ���o���\-N�y�XV8_�sp�����$$
I#�L'mx���Z�?/L�n}�yoǮ6P�s�0�4���1R.H�8^K�`��|g0�?��(ʴ�:U�ZZ�g�� �3H�     