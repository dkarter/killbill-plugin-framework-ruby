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
    module Api

      java_package 'com.ning.billing.entitlement.api.user'
      class EntitlementUserApi

        include com.ning.billing.entitlement.api.user.EntitlementUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::com.ning.billing.entitlement.api.user.SubscriptionBundle getBundleFromId(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_bundle_from_id(id, context)
          if !id.nil? && id.respond_to? :to_java
            id = id.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_bundle_from_id(id, context)
            # conversion for res [type = com.ning.billing.entitlement.api.user.SubscriptionBundle]
            res = Killbill::Plugin::Model::SubscriptionBundle.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.entitlement.api.user.EntitlementUserApiException => e
            raise Killbill::Plugin::Model::EntitlementUserApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.entitlement.api.user.Subscription getSubscriptionFromId(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_subscription_from_id(id, context)
          if !id.nil? && id.respond_to? :to_java
            id = id.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_subscription_from_id(id, context)
            # conversion for res [type = com.ning.billing.entitlement.api.user.Subscription]
            res = Killbill::Plugin::Model::Subscription.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.entitlement.api.user.EntitlementUserApiException => e
            raise Killbill::Plugin::Model::EntitlementUserApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getBundlesForKey(Java::java.lang.String, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_bundles_for_key(bundleKey, context)
          if !bundleKey.nil? && bundleKey.respond_to? :to_java
            bundleKey = bundleKey.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_bundles_for_key(bundleKey, context)
            # conversion for res [type = java.util.List]
            tmp = []
            res.each do |m|
              # conversion for m [type = com.ning.billing.entitlement.api.user.SubscriptionBundle]
              m = Killbill::Plugin::Model::SubscriptionBundle.to_ruby(m) if !m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.entitlement.api.user.EntitlementUserApiException => e
            raise Killbill::Plugin::Model::EntitlementUserApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.entitlement.api.user.SubscriptionBundle getBundleForAccountAndKey(Java::java.util.UUID, Java::java.lang.String, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_bundle_for_account_and_key(accountId, bundleKey, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !bundleKey.nil? && bundleKey.respond_to? :to_java
            bundleKey = bundleKey.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_bundle_for_account_and_key(accountId, bundleKey, context)
            # conversion for res [type = com.ning.billing.entitlement.api.user.SubscriptionBundle]
            res = Killbill::Plugin::Model::SubscriptionBundle.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.entitlement.api.user.EntitlementUserApiException => e
            raise Killbill::Plugin::Model::EntitlementUserApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getBundlesForAccount(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_bundles_for_account(accountId, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_bundles_for_account(accountId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.entitlement.api.user.SubscriptionBundle]
            m = Killbill::Plugin::Model::SubscriptionBundle.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::java.util.List getSubscriptionsForBundle(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_subscriptions_for_bundle(bundleId, context)
          if !bundleId.nil? && bundleId.respond_to? :to_java
            bundleId = bundleId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_subscriptions_for_bundle(bundleId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.entitlement.api.user.Subscription]
            m = Killbill::Plugin::Model::Subscription.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::java.util.List getSubscriptionsForAccountAndKey(Java::java.util.UUID, Java::java.lang.String, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_subscriptions_for_account_and_key(accountId, bundleKey, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !bundleKey.nil? && bundleKey.respond_to? :to_java
            bundleKey = bundleKey.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_subscriptions_for_account_and_key(accountId, bundleKey, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.entitlement.api.user.Subscription]
            m = Killbill::Plugin::Model::Subscription.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::com.ning.billing.entitlement.api.user.Subscription getBaseSubscription(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_base_subscription(bundleId, context)
          if !bundleId.nil? && bundleId.respond_to? :to_java
            bundleId = bundleId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_base_subscription(bundleId, context)
            # conversion for res [type = com.ning.billing.entitlement.api.user.Subscription]
            res = Killbill::Plugin::Model::Subscription.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.entitlement.api.user.EntitlementUserApiException => e
            raise Killbill::Plugin::Model::EntitlementUserApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.entitlement.api.user.SubscriptionBundle createBundleForAccount(Java::java.util.UUID, Java::java.lang.String, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_bundle_for_account(accountId, bundleKey, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !bundleKey.nil? && bundleKey.respond_to? :to_java
            bundleKey = bundleKey.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_bundle_for_account(accountId, bundleKey, context)
            # conversion for res [type = com.ning.billing.entitlement.api.user.SubscriptionBundle]
            res = Killbill::Plugin::Model::SubscriptionBundle.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.entitlement.api.user.EntitlementUserApiException => e
            raise Killbill::Plugin::Model::EntitlementUserApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.entitlement.api.user.Subscription createSubscription(Java::java.util.UUID, Java::com.ning.billing.catalog.api.PlanPhaseSpecifier, Java::org.joda.time.DateTime, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_subscription(bundleId, spec, requestedDate, context)
          if !bundleId.nil? && bundleId.respond_to? :to_java
            bundleId = bundleId.to_java
          end

          if !spec.nil? && spec.respond_to? :to_java
            spec = spec.to_java
          end

          if !requestedDate.nil? && requestedDate.respond_to? :to_java
            requestedDate = requestedDate.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_subscription(bundleId, spec, requestedDate, context)
            # conversion for res [type = com.ning.billing.entitlement.api.user.Subscription]
            res = Killbill::Plugin::Model::Subscription.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.entitlement.api.user.EntitlementUserApiException => e
            raise Killbill::Plugin::Model::EntitlementUserApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getDryRunChangePlanStatus(Java::java.util.UUID, Java::java.lang.String, Java::org.joda.time.DateTime, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_dry_run_change_plan_status(subscriptionId, productName, requestedDate, context)
          if !subscriptionId.nil? && subscriptionId.respond_to? :to_java
            subscriptionId = subscriptionId.to_java
          end

          if !productName.nil? && productName.respond_to? :to_java
            productName = productName.to_java
          end

          if !requestedDate.nil? && requestedDate.respond_to? :to_java
            requestedDate = requestedDate.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_dry_run_change_plan_status(subscriptionId, productName, requestedDate, context)
            # conversion for res [type = java.util.List]
            tmp = []
            res.each do |m|
              # conversion for m [type = com.ning.billing.entitlement.api.user.SubscriptionStatusDryRun]
              m = Killbill::Plugin::Model::SubscriptionStatusDryRun.to_ruby(m) if !m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.entitlement.api.user.EntitlementUserApiException => e
            raise Killbill::Plugin::Model::EntitlementUserApiException.to_ruby(e)
          end
        end

        java_signature 'Java::org.joda.time.DateTime getNextBillingDate(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_next_billing_date(account, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_next_billing_date(account, context)
          # conversion for res [type = org.joda.time.DateTime]
          if !res.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(res)
            res = DateTime.iso8601(str)
          end
          return res
        end
      end
    end
  end
end
