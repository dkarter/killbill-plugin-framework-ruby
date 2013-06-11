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

      java_package 'com.ning.billing.invoice.api'
      class InvoicePaymentApi

        include com.ning.billing.invoice.api.InvoicePaymentApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.util.List getAllInvoicesByAccount(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_all_invoices_by_account(accountId, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_all_invoices_by_account(accountId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.invoice.api.Invoice]
            m = Killbill::Plugin::Model::Invoice.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::com.ning.billing.invoice.api.Invoice getInvoice(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_invoice(invoiceId, context)
          if !invoiceId.nil? && invoiceId.respond_to? :to_java
            invoiceId = invoiceId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_invoice(invoiceId, context)
            # conversion for res [type = com.ning.billing.invoice.api.Invoice]
            res = Killbill::Plugin::Model::Invoice.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getInvoicePayments(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_invoice_payments(paymentId, context)
          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_invoice_payments(paymentId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.invoice.api.InvoicePayment]
            m = Killbill::Plugin::Model::InvoicePayment.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::com.ning.billing.invoice.api.InvoicePayment getInvoicePaymentForAttempt(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_invoice_payment_for_attempt(paymentId, context)
          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_invoice_payment_for_attempt(paymentId, context)
          # conversion for res [type = com.ning.billing.invoice.api.InvoicePayment]
          res = Killbill::Plugin::Model::InvoicePayment.to_ruby(res) if !res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.invoice.api.InvoicePayment createChargeback(Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_chargeback(invoicePaymentId, amount, context)
          if !invoicePaymentId.nil? && invoicePaymentId.respond_to? :to_java
            invoicePaymentId = invoicePaymentId.to_java
          end

          if !amount.nil? && amount.respond_to? :to_java
            amount = amount.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_chargeback(invoicePaymentId, amount, context)
            # conversion for res [type = com.ning.billing.invoice.api.InvoicePayment]
            res = Killbill::Plugin::Model::InvoicePayment.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.math.BigDecimal getRemainingAmountPaid(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_remaining_amount_paid(invoicePaymentId, context)
          if !invoicePaymentId.nil? && invoicePaymentId.respond_to? :to_java
            invoicePaymentId = invoicePaymentId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_remaining_amount_paid(invoicePaymentId, context)
          # conversion for res [type = java.math.BigDecimal]
          res = res.nil? ? 0 : res.multiply(java.math.BigDecimal.valueOf(100)).to_s.to_i
          return res
        end

        java_signature 'Java::java.util.List getChargebacksByAccountId(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_chargebacks_by_account_id(accountId, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_chargebacks_by_account_id(accountId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.invoice.api.InvoicePayment]
            m = Killbill::Plugin::Model::InvoicePayment.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::java.util.UUID getAccountIdFromInvoicePaymentId(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_account_id_from_invoice_payment_id(uuid, context)
          if !uuid.nil? && uuid.respond_to? :to_java
            uuid = uuid.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_account_id_from_invoice_payment_id(uuid, context)
            # conversion for res [type = java.util.UUID]
            res = res.nil? ? nil : uuid.to_s
            return res
          rescue Java::com.ning.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getChargebacksByPaymentId(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_chargebacks_by_payment_id(paymentId, context)
          if !paymentId.nil? && paymentId.respond_to? :to_java
            paymentId = paymentId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_chargebacks_by_payment_id(paymentId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.invoice.api.InvoicePayment]
            m = Killbill::Plugin::Model::InvoicePayment.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::com.ning.billing.invoice.api.InvoicePayment getChargebackById(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_chargeback_by_id(chargebackId, context)
          if !chargebackId.nil? && chargebackId.respond_to? :to_java
            chargebackId = chargebackId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_chargeback_by_id(chargebackId, context)
            # conversion for res [type = com.ning.billing.invoice.api.InvoicePayment]
            res = Killbill::Plugin::Model::InvoicePayment.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.to_ruby(e)
          end
        end
      end
    end
  end
end
