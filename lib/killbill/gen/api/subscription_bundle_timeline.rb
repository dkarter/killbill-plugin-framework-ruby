###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                   Copyright 2014 The Billing Project, LLC                       #
#                                                                                 #
#      The Billing Project licenses this file to you under the Apache License,    #
#      version 2.0 (the "License"); you may not use this file except in           #
#      compliance with the License.  You may obtain a copy of the License at:     #
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

      java_package 'org.killbill.billing.entitlement.api'
      class SubscriptionBundleTimeline

        include org.killbill.billing.entitlement.api.SubscriptionBundleTimeline

        attr_accessor :account_id, :bundle_id, :external_key, :subscription_events

        def initialize()
        end

        def to_java()
          # conversion for account_id [type = java.util.UUID]
          @account_id = java.util.UUID.fromString(@account_id.to_s) unless @account_id.nil?

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = java.util.UUID.fromString(@bundle_id.to_s) unless @bundle_id.nil?

          # conversion for external_key [type = java.lang.String]
          @external_key = @external_key.to_s unless @external_key.nil?

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
          # conversion for account_id [type = java.util.UUID]
          @account_id = j_obj.account_id
          @account_id = @account_id.nil? ? nil : @account_id.to_s

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = j_obj.bundle_id
          @bundle_id = @bundle_id.nil? ? nil : @bundle_id.to_s

          # conversion for external_key [type = java.lang.String]
          @external_key = j_obj.external_key

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
