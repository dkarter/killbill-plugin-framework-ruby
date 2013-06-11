###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                                                                                 #
#      Ning licenses this file to you under the Apache License, version 2.0       #
#      (the "License"); you may not use this file except in compliance with the   #
#      License.  You may obtain a copy of the License at:                         #
#                                                                                 #
#          http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                                 #
#      Unless required by applicable law or agreed to in writing, software        #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  #
#      License for the specific language governing permissions and limitations    #
#      under the License.                                                         #
#                                                                                 #
###################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'com.ning.billing.catalog.api'
      class MigrationPlan

        include com.ning.billing.catalog.api.MigrationPlan

        attr_accessor :initial_phases, :product, :name, :is_retired, :initial_phase_iterator, :final_phase, :billing_period, :plans_allowed_in_bundle, :all_phases, :effective_date_for_existing_subscriptons

        def initialize()
        end

        def to_java()
          # conversion for initial_phases [type = com.ning.billing.catalog.api.PlanPhase]
          initial_phases = initial_phases.to_java if !initial_phases.nil?

          # conversion for product [type = com.ning.billing.catalog.api.Product]
          product = product.to_java if !product.nil?

          # conversion for name [type = java.lang.String]
          name = name.to_s if !name.nil?

          # conversion for is_retired [type = boolean]
          is_retired = is_retired.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(is_retired)

          # conversion for initial_phase_iterator [type = java.util.Iterator]
          tmp = java.util.ArrayList.new
          initial_phase_iterator.each do |m|
            # conversion for m [type = com.ning.billing.catalog.api.PlanPhase]
            m = m.to_java if !m.nil?
            tmp.add(m)
          end
          initial_phase_iterator = tmp

          # conversion for final_phase [type = com.ning.billing.catalog.api.PlanPhase]
          final_phase = final_phase.to_java if !final_phase.nil?

          # conversion for billing_period [type = com.ning.billing.catalog.api.BillingPeriod]
          billing_period = "Java::com.ning.billing.catalog.api.BillingPeriod::#{billing_period.to_s}" if !billing_period.nil?

          # conversion for plans_allowed_in_bundle [type = int]
          plans_allowed_in_bundle = plans_allowed_in_bundle

          # conversion for all_phases [type = com.ning.billing.catalog.api.PlanPhase]
          all_phases = all_phases.to_java if !all_phases.nil?

          # conversion for effective_date_for_existing_subscriptons [type = java.util.Date]
          if !effective_date_for_existing_subscriptons.nil?
            effective_date_for_existing_subscriptons =  (effective_date_for_existing_subscriptons.kind_of? Time) ? DateTime.parse(effective_date_for_existing_subscriptons.to_s) : effective_date_for_existing_subscriptons
            effective_date_for_existing_subscriptons = Java::org.joda.time.DateTime.new(effective_date_for_existing_subscriptons.to_s, Java::org.joda.time.DateTimeZone::UTC)
            effective_date_for_existing_subscriptons = effective_date_for_existing_subscriptons.to_date
          end
        end

        def self.to_ruby(j_obj)
          # conversion for initial_phases [type = com.ning.billing.catalog.api.PlanPhase]
          initial_phases = j_obj.initial_phases
          initial_phases = Killbill::Plugin::Model::PlanPhase.to_ruby(initial_phases) if !initial_phases.nil?

          # conversion for product [type = com.ning.billing.catalog.api.Product]
          product = j_obj.product
          product = Killbill::Plugin::Model::Product.to_ruby(product) if !product.nil?

          # conversion for name [type = java.lang.String]
          name = j_obj.name

          # conversion for is_retired [type = boolean]
          is_retired = j_obj.is_retired
          if is_retired.nil?
            return false
          end
          b_value = (is_retired.java_kind_of? java.lang.Boolean) ? is_retired.boolean_value : is_retired
          return b_value ? true : false

          # conversion for initial_phase_iterator [type = java.util.Iterator]
          initial_phase_iterator = j_obj.initial_phase_iterator
          tmp = []
          initial_phase_iterator.each do |m|
            # conversion for m [type = com.ning.billing.catalog.api.PlanPhase]
            m = j_obj.m
            m = Killbill::Plugin::Model::PlanPhase.to_ruby(m) if !m.nil?
            tmp << m
          end
          initial_phase_iterator = tmp

          # conversion for final_phase [type = com.ning.billing.catalog.api.PlanPhase]
          final_phase = j_obj.final_phase
          final_phase = Killbill::Plugin::Model::PlanPhase.to_ruby(final_phase) if !final_phase.nil?

          # conversion for billing_period [type = com.ning.billing.catalog.api.BillingPeriod]
          billing_period = j_obj.billing_period
          billing_period = billing_period.to_s if !billing_period.nil?

          # conversion for plans_allowed_in_bundle [type = int]
          plans_allowed_in_bundle = j_obj.plans_allowed_in_bundle

          # conversion for all_phases [type = com.ning.billing.catalog.api.PlanPhase]
          all_phases = j_obj.all_phases
          all_phases = Killbill::Plugin::Model::PlanPhase.to_ruby(all_phases) if !all_phases.nil?

          # conversion for effective_date_for_existing_subscriptons [type = java.util.Date]
          effective_date_for_existing_subscriptons = j_obj.effective_date_for_existing_subscriptons
          if !effective_date_for_existing_subscriptons.nil?
            effective_date_for_existing_subscriptons = Java::org.joda.time.DateTime.new(effective_date_for_existing_subscriptons)
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(effective_date_for_existing_subscriptons)
            effective_date_for_existing_subscriptons = DateTime.iso8601(str)
          end
        end

      end
    end
  end
end
