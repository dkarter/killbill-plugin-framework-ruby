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

      java_package 'com.ning.billing.payment.api'
      class PaymentApi

        include com.ning.billing.payment.api.PaymentApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::com.ning.billing.payment.api.Payment createPayment(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_payment(account, invoiceId, amount, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !invoiceId.nil? && invoiceId.respond_to? :to_java
            invoiceId = invoiceId.to_java
          end

          if !amount.nil? && amount.respond_to? :to_java
            amount = amount.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_payment(account, invoiceId, amount, context)
            # conversion for res [type = com.ning.billing.payment.api.Payment]
            res = Killbill::Plugin::Model::Payment.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Payment createExternalPayment(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_external_payment(account, invoiceId, amount, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !invoiceId.nil? && invoiceId.respond_to? :to_java
            invoiceId = invoiceId.to_java
          end

          if !amount.nil? && amount.respond_to? :to_java
            amount = amount.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_external_payment(account, invoiceId, amount, context)
            # conversion for res [type = com.ning.billing.payment.api.Payment]
            res = Killbill::Plugin::Model::Payment.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Payment retryPayment(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::com.ning.billing.util.callcontext.CallContext)'
        def retry_payment(account, paymentId, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.retry_payment(account, paymentId, context)
            # conversion for res [type = com.ning.billing.payment.api.Payment]
            res = Killbill::Plugin::Model::Payment.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Refund createRefund(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_refund(account, paymentId, refundAmount, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !refundAmount.nil? && refundAmount.respond_to? :to_java
            refundAmount = refundAmount.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_refund(account, paymentId, refundAmount, context)
            # conversion for res [type = com.ning.billing.payment.api.Refund]
            res = Killbill::Plugin::Model::Refund.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Refund getRefund(Java::java.util.UUID, Java::boolean, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_refund(refundId, withPluginInfo, context)
          if !refundId.nil? && refundId.respond_to? :to_java
            refundId = refundId.to_java
          end

          if !withPluginInfo.nil? && withPluginInfo.respond_to? :to_java
            withPluginInfo = withPluginInfo.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_refund(refundId, withPluginInfo, context)
            # conversion for res [type = com.ning.billing.payment.api.Refund]
            res = Killbill::Plugin::Model::Refund.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Refund createRefundWithAdjustment(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_refund_with_adjustment(account, paymentId, refundAmount, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !refundAmount.nil? && refundAmount.respond_to? :to_java
            refundAmount = refundAmount.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_refund_with_adjustment(account, paymentId, refundAmount, context)
            # conversion for res [type = com.ning.billing.payment.api.Refund]
            res = Killbill::Plugin::Model::Refund.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Refund createRefundWithItemsAdjustments(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.util.Set, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_refund_with_items_adjustments(account, paymentId, invoiceItemIds, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !invoiceItemIds.nil? && invoiceItemIds.respond_to? :to_java
            invoiceItemIds = invoiceItemIds.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_refund_with_items_adjustments(account, paymentId, invoiceItemIds, context)
            # conversion for res [type = com.ning.billing.payment.api.Refund]
            res = Killbill::Plugin::Model::Refund.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getAccountRefunds(Java::com.ning.billing.account.api.Account, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_account_refunds(account, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_account_refunds(account, context)
            # conversion for res [type = java.util.List]
            tmp = []
            res.each do |m|
              # conversion for m [type = com.ning.billing.payment.api.Refund]
              m = Killbill::Plugin::Model::Refund.to_ruby(m) if !m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getPaymentRefunds(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_payment_refunds(paymentId, context)
          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_payment_refunds(paymentId, context)
            # conversion for res [type = java.util.List]
            tmp = []
            res.each do |m|
              # conversion for m [type = com.ning.billing.payment.api.Refund]
              m = Killbill::Plugin::Model::Refund.to_ruby(m) if !m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getInvoicePayments(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_invoice_payments(invoiceId, context)
          if !invoiceId.nil? && invoiceId.respond_to? :to_java
            invoiceId = invoiceId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_invoice_payments(invoiceId, context)
            # conversion for res [type = java.util.List]
            tmp = []
            res.each do |m|
              # conversion for m [type = com.ning.billing.payment.api.Payment]
              m = Killbill::Plugin::Model::Payment.to_ruby(m) if !m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getAccountPayments(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_account_payments(accountId, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_account_payments(accountId, context)
            # conversion for res [type = java.util.List]
            tmp = []
            res.each do |m|
              # conversion for m [type = com.ning.billing.payment.api.Payment]
              m = Killbill::Plugin::Model::Payment.to_ruby(m) if !m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Payment getPayment(Java::java.util.UUID, Java::boolean, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_payment(paymentId, withPluginInfo, context)
          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !withPluginInfo.nil? && withPluginInfo.respond_to? :to_java
            withPluginInfo = withPluginInfo.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_payment(paymentId, withPluginInfo, context)
            # conversion for res [type = com.ning.billing.payment.api.Payment]
            res = Killbill::Plugin::Model::Payment.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.Set getAvailablePlugins()'
        def get_available_plugins()
        res = @real_java_api.get_available_plugins()
        # conversion for res [type = java.util.Set]
        tmp = []
        res.each do |m|
          # conversion for m [type = java.lang.String]
          tmp << m
        end
        res = tmp
        return res
      end

      java_signature 'Java::java.util.UUID addPaymentMethod(Java::java.lang.String, Java::com.ning.billing.account.api.Account, Java::boolean, Java::com.ning.billing.payment.api.PaymentMethodPlugin, Java::com.ning.billing.util.callcontext.CallContext)'
      def add_payment_method(pluginName, account, setDefault, paymentMethodInfo, context)
        if !pluginName.nil? && pluginName.respond_to? :to_java
          pluginName = pluginName.to_java
        end

        if !account.nil? && account.respond_to? :to_java
          account = account.to_java
        end

        if !setDefault.nil? && setDefault.respond_to? :to_java
          setDefault = setDefault.to_java
        end

        if !paymentMethodInfo.nil? && paymentMethodInfo.respond_to? :to_java
          paymentMethodInfo = paymentMethodInfo.to_java
        end

        if !context.nil? && context.respond_to? :to_java
          context = context.to_java
        end

        begin
          res = @real_java_api.add_payment_method(pluginName, account, setDefault, paymentMethodInfo, context)
          # conversion for res [type = java.util.UUID]
          res = res.nil? ? nil : uuid.to_s
          return res
        rescue Java::com.ning.billing.payment.api.PaymentApiException => e
          raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
        end
      end

      java_signature 'Java::java.util.List getPaymentMethods(Java::com.ning.billing.account.api.Account, Java::boolean, Java::com.ning.billing.util.callcontext.TenantContext)'
      def get_payment_methods(account, withPluginInfo, context)
        if !account.nil? && account.respond_to? :to_java
          account = account.to_java
        end

        if !withPluginInfo.nil? && withPluginInfo.respond_to? :to_java
          withPluginInfo = withPluginInfo.to_java
        end

        if !context.nil? && context.respond_to? :to_java
          context = context.to_java
        end

        begin
          res = @real_java_api.get_payment_methods(account, withPluginInfo, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.payment.api.PaymentMethod]
            m = Killbill::Plugin::Model::PaymentMethod.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        rescue Java::com.ning.billing.payment.api.PaymentApiException => e
          raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
        end
      end

      java_signature 'Java::com.ning.billing.payment.api.PaymentMethod getPaymentMethodById(Java::java.util.UUID, Java::boolean, Java::boolean, Java::com.ning.billing.util.callcontext.TenantContext)'
      def get_payment_method_by_id(paymentMethodId, includedInactive, withPluginInfo, context)
        if !paymentMethodId.nil? && paymentMethodId.respond_to? :to_java
          paymentMethodId = paymentMethodId.to_java
        end

        if !includedInactive.nil? && includedInactive.respond_to? :to_java
          includedInactive = includedInactive.to_java
        end

        if !withPluginInfo.nil? && withPluginInfo.respond_to? :to_java
          withPluginInfo = withPluginInfo.to_java
        end

        if !context.nil? && context.respond_to? :to_java
          context = context.to_java
        end

        begin
          res = @real_java_api.get_payment_method_by_id(paymentMethodId, includedInactive, withPluginInfo, context)
          # conversion for res [type = com.ning.billing.payment.api.PaymentMethod]
          res = Killbill::Plugin::Model::PaymentMethod.to_ruby(res) if !res.nil?
          return res
        rescue Java::com.ning.billing.payment.api.PaymentApiException => e
          raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
        end
      end

      java_signature 'Java::void deletedPaymentMethod(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::boolean, Java::com.ning.billing.util.callcontext.CallContext)'
      def deleted_payment_method(account, paymentMethodId, deleteDefaultPaymentMethodWithAutoPayOff, context)
        if !account.nil? && account.respond_to? :to_java
          account = account.to_java
        end

        if !paymentMethodId.nil? && paymentMethodId.respond_to? :to_java
          paymentMethodId = paymentMethodId.to_java
        end

        if !deleteDefaultPaymentMethodWithAutoPayOff.nil? && deleteDefaultPaymentMethodWithAutoPayOff.respond_to? :to_java
          deleteDefaultPaymentMethodWithAutoPayOff = deleteDefaultPaymentMethodWithAutoPayOff.to_java
        end

        if !context.nil? && context.respond_to? :to_java
          context = context.to_java
        end

        @real_java_api.deleted_payment_method(account, paymentMethodId, deleteDefaultPaymentMethodWithAutoPayOff, context)
      end

      java_signature 'Java::void setDefaultPaymentMethod(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::com.ning.billing.util.callcontext.CallContext)'
      def set_default_payment_method(account, paymentMethodId, context)
        if !account.nil? && account.respond_to? :to_java
          account = account.to_java
        end

        if !paymentMethodId.nil? && paymentMethodId.respond_to? :to_java
          paymentMethodId = paymentMethodId.to_java
        end

        if !context.nil? && context.respond_to? :to_java
          context = context.to_java
        end

        @real_java_api.set_default_payment_method(account, paymentMethodId, context)
      end

      java_signature 'Java::java.util.List refreshPaymentMethods(Java::java.lang.String, Java::com.ning.billing.account.api.Account, Java::com.ning.billing.util.callcontext.CallContext)'
      def refresh_payment_methods(pluginName, account, context)
        if !pluginName.nil? && pluginName.respond_to? :to_java
          pluginName = pluginName.to_java
        end

        if !account.nil? && account.respond_to? :to_java
          account = account.to_java
        end

        if !context.nil? && context.respond_to? :to_java
          context = context.to_java
        end

        begin
          res = @real_java_api.refresh_payment_methods(pluginName, account, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.payment.api.PaymentMethod]
            m = Killbill::Plugin::Model::PaymentMethod.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        rescue Java::com.ning.billing.payment.api.PaymentApiException => e
          raise Killbill::Plugin::Model::PaymentApiException.to_ruby(e)
        end
      end
    end
  end
end
end
