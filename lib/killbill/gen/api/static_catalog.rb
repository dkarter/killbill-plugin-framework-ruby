#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.catalog.api'
      class StaticCatalog

        include org.killbill.billing.catalog.api.StaticCatalog

        attr_accessor :catalog_name, :recurring_billing_mode, :effective_date, :current_supported_currencies, :current_products, :current_units, :current_plans, :available_base_plan_listings

        def initialize()
        end

        def to_java()
          # conversion for catalog_name [type = java.lang.String]
          @catalog_name = @catalog_name.to_s unless @catalog_name.nil?

          # conversion for recurring_billing_mode [type = org.killbill.billing.catalog.api.BillingMode]
          @recurring_billing_mode = Java::org.killbill.billing.catalog.api.BillingMode.value_of( @recurring_billing_mode.to_s ) unless @recurring_billing_mode.nil?

          # conversion for effective_date [type = java.util.Date]
          if !@effective_date.nil?
            @effective_date =  (@effective_date.kind_of? Time) ? DateTime.parse(@effective_date.to_s) : @effective_date
            @effective_date = Java::org.joda.time.DateTime.new(@effective_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
            @effective_date = @effective_date.to_date
          end

          # conversion for current_supported_currencies [type = org.killbill.billing.catalog.api.Currency[]]
          tmp = java.util.ArrayList.new
          (@current_supported_currencies || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Currency]
            m = Java::org.killbill.billing.catalog.api.Currency.value_of( m.to_s ) unless m.nil?
            tmp.add(m)
          end
          @current_supported_currencies = tmp.toArray

          # conversion for current_products [type = org.killbill.billing.catalog.api.Product[]]
          tmp = java.util.ArrayList.new
          (@current_products || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Product]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @current_products = tmp.toArray

          # conversion for current_units [type = org.killbill.billing.catalog.api.Unit[]]
          tmp = java.util.ArrayList.new
          (@current_units || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Unit]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @current_units = tmp.toArray

          # conversion for current_plans [type = org.killbill.billing.catalog.api.Plan[]]
          tmp = java.util.ArrayList.new
          (@current_plans || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Plan]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @current_plans = tmp.toArray

          # conversion for available_base_plan_listings [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@available_base_plan_listings || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Listing]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @available_base_plan_listings = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for catalog_name [type = java.lang.String]
          @catalog_name = j_obj.catalog_name

          # conversion for recurring_billing_mode [type = org.killbill.billing.catalog.api.BillingMode]
          @recurring_billing_mode = j_obj.recurring_billing_mode
          @recurring_billing_mode = @recurring_billing_mode.to_s.to_sym unless @recurring_billing_mode.nil?

          # conversion for effective_date [type = java.util.Date]
          @effective_date = j_obj.effective_date
          if !@effective_date.nil?
            @effective_date = Java::org.joda.time.DateTime.new(@effective_date)
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@effective_date)
            @effective_date = DateTime.iso8601(str)
          end

          # conversion for current_supported_currencies [type = org.killbill.billing.catalog.api.Currency[]]
          @current_supported_currencies = j_obj.current_supported_currencies
          tmp = []
          (@current_supported_currencies || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Currency]
            m = m.to_s.to_sym unless m.nil?
            tmp << m
          end
          @current_supported_currencies = tmp

          # conversion for current_products [type = org.killbill.billing.catalog.api.Product[]]
          @current_products = j_obj.current_products
          tmp = []
          (@current_products || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Product]
            m = Killbill::Plugin::Model::Product.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @current_products = tmp

          # conversion for current_units [type = org.killbill.billing.catalog.api.Unit[]]
          @current_units = j_obj.current_units
          tmp = []
          (@current_units || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Unit]
            m = Killbill::Plugin::Model::Unit.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @current_units = tmp

          # conversion for current_plans [type = org.killbill.billing.catalog.api.Plan[]]
          @current_plans = j_obj.current_plans
          tmp = []
          (@current_plans || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Plan]
            m = Killbill::Plugin::Model::Plan.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @current_plans = tmp

          # conversion for available_base_plan_listings [type = java.util.List]
          @available_base_plan_listings = j_obj.available_base_plan_listings
          tmp = []
          (@available_base_plan_listings || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Listing]
            m = Killbill::Plugin::Model::Listing.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @available_base_plan_listings = tmp
          self
        end

      end
    end
  end
end
