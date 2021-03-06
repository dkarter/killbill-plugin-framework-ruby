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

      java_package 'org.killbill.billing.entitlement.api'
      class Subscription

        include org.killbill.billing.entitlement.api.Subscription

        attr_accessor :base_entitlement_id, :bundle_id, :account_id, :external_key, :state, :source_type, :effective_start_date, :effective_end_date, :last_active_product, :last_active_plan, :last_active_phase, :last_active_price_list, :last_active_product_category, :id, :created_date, :updated_date, :billing_start_date, :billing_end_date, :charged_through_date, :subscription_events

        def initialize()
        end

        def to_java()
          # conversion for base_entitlement_id [type = java.util.UUID]
          @base_entitlement_id = java.util.UUID.fromString(@base_entitlement_id.to_s) unless @base_entitlement_id.nil?

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = java.util.UUID.fromString(@bundle_id.to_s) unless @bundle_id.nil?

          # conversion for account_id [type = java.util.UUID]
          @account_id = java.util.UUID.fromString(@account_id.to_s) unless @account_id.nil?

          # conversion for external_key [type = java.lang.String]
          @external_key = @external_key.to_s unless @external_key.nil?

          # conversion for state [type = org.killbill.billing.entitlement.api.EntitlementState]
          @state = Java::org.killbill.billing.entitlement.api.EntitlementState.value_of( @state.to_s ) unless @state.nil?

          # conversion for source_type [type = org.killbill.billing.entitlement.api.EntitlementSourceType]
          @source_type = Java::org.killbill.billing.entitlement.api.EntitlementSourceType.value_of( @source_type.to_s ) unless @source_type.nil?

          # conversion for effective_start_date [type = org.joda.time.LocalDate]
          if !@effective_start_date.nil?
            @effective_start_date = Java::org.joda.time.LocalDate.parse(@effective_start_date.to_s)
          end

          # conversion for effective_end_date [type = org.joda.time.LocalDate]
          if !@effective_end_date.nil?
            @effective_end_date = Java::org.joda.time.LocalDate.parse(@effective_end_date.to_s)
          end

          # conversion for last_active_product [type = org.killbill.billing.catalog.api.Product]
          @last_active_product = @last_active_product.to_java unless @last_active_product.nil?

          # conversion for last_active_plan [type = org.killbill.billing.catalog.api.Plan]
          @last_active_plan = @last_active_plan.to_java unless @last_active_plan.nil?

          # conversion for last_active_phase [type = org.killbill.billing.catalog.api.PlanPhase]
          @last_active_phase = @last_active_phase.to_java unless @last_active_phase.nil?

          # conversion for last_active_price_list [type = org.killbill.billing.catalog.api.PriceList]
          @last_active_price_list = @last_active_price_list.to_java unless @last_active_price_list.nil?

          # conversion for last_active_product_category [type = org.killbill.billing.catalog.api.ProductCategory]
          @last_active_product_category = Java::org.killbill.billing.catalog.api.ProductCategory.value_of( @last_active_product_category.to_s ) unless @last_active_product_category.nil?

          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for billing_start_date [type = org.joda.time.LocalDate]
          if !@billing_start_date.nil?
            @billing_start_date = Java::org.joda.time.LocalDate.parse(@billing_start_date.to_s)
          end

          # conversion for billing_end_date [type = org.joda.time.LocalDate]
          if !@billing_end_date.nil?
            @billing_end_date = Java::org.joda.time.LocalDate.parse(@billing_end_date.to_s)
          end

          # conversion for charged_through_date [type = org.joda.time.LocalDate]
          if !@charged_through_date.nil?
            @charged_through_date = Java::org.joda.time.LocalDate.parse(@charged_through_date.to_s)
          end

          # conversion for subscription_events [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@subscription_events || []).each do |m|
            # conversion for m [type = org.killbill.billing.entitlement.api.SubscriptionEvent]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @subscription_events = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for base_entitlement_id [type = java.util.UUID]
          @base_entitlement_id = j_obj.base_entitlement_id
          @base_entitlement_id = @base_entitlement_id.nil? ? nil : @base_entitlement_id.to_s

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = j_obj.bundle_id
          @bundle_id = @bundle_id.nil? ? nil : @bundle_id.to_s

          # conversion for account_id [type = java.util.UUID]
          @account_id = j_obj.account_id
          @account_id = @account_id.nil? ? nil : @account_id.to_s

          # conversion for external_key [type = java.lang.String]
          @external_key = j_obj.external_key

          # conversion for state [type = org.killbill.billing.entitlement.api.EntitlementState]
          @state = j_obj.state
          @state = @state.to_s.to_sym unless @state.nil?

          # conversion for source_type [type = org.killbill.billing.entitlement.api.EntitlementSourceType]
          @source_type = j_obj.source_type
          @source_type = @source_type.to_s.to_sym unless @source_type.nil?

          # conversion for effective_start_date [type = org.joda.time.LocalDate]
          @effective_start_date = j_obj.effective_start_date
          if !@effective_start_date.nil?
            @effective_start_date = @effective_start_date.to_s
          end

          # conversion for effective_end_date [type = org.joda.time.LocalDate]
          @effective_end_date = j_obj.effective_end_date
          if !@effective_end_date.nil?
            @effective_end_date = @effective_end_date.to_s
          end

          # conversion for last_active_product [type = org.killbill.billing.catalog.api.Product]
          @last_active_product = j_obj.last_active_product
          @last_active_product = Killbill::Plugin::Model::Product.new.to_ruby(@last_active_product) unless @last_active_product.nil?

          # conversion for last_active_plan [type = org.killbill.billing.catalog.api.Plan]
          @last_active_plan = j_obj.last_active_plan
          @last_active_plan = Killbill::Plugin::Model::Plan.new.to_ruby(@last_active_plan) unless @last_active_plan.nil?

          # conversion for last_active_phase [type = org.killbill.billing.catalog.api.PlanPhase]
          @last_active_phase = j_obj.last_active_phase
          @last_active_phase = Killbill::Plugin::Model::PlanPhase.new.to_ruby(@last_active_phase) unless @last_active_phase.nil?

          # conversion for last_active_price_list [type = org.killbill.billing.catalog.api.PriceList]
          @last_active_price_list = j_obj.last_active_price_list
          @last_active_price_list = Killbill::Plugin::Model::PriceList.new.to_ruby(@last_active_price_list) unless @last_active_price_list.nil?

          # conversion for last_active_product_category [type = org.killbill.billing.catalog.api.ProductCategory]
          @last_active_product_category = j_obj.last_active_product_category
          @last_active_product_category = @last_active_product_category.to_s.to_sym unless @last_active_product_category.nil?

          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for billing_start_date [type = org.joda.time.LocalDate]
          @billing_start_date = j_obj.billing_start_date
          if !@billing_start_date.nil?
            @billing_start_date = @billing_start_date.to_s
          end

          # conversion for billing_end_date [type = org.joda.time.LocalDate]
          @billing_end_date = j_obj.billing_end_date
          if !@billing_end_date.nil?
            @billing_end_date = @billing_end_date.to_s
          end

          # conversion for charged_through_date [type = org.joda.time.LocalDate]
          @charged_through_date = j_obj.charged_through_date
          if !@charged_through_date.nil?
            @charged_through_date = @charged_through_date.to_s
          end

          # conversion for subscription_events [type = java.util.List]
          @subscription_events = j_obj.subscription_events
          tmp = []
          (@subscription_events || []).each do |m|
            # conversion for m [type = org.killbill.billing.entitlement.api.SubscriptionEvent]
            m = Killbill::Plugin::Model::SubscriptionEvent.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @subscription_events = tmp
          self
        end

      end
    end
  end
end
