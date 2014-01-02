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

      java_package 'com.ning.billing.payment.api'
      class Payment

        include com.ning.billing.payment.api.Payment

        attr_accessor :id, :created_date, :updated_date, :account_id, :invoice_id, :payment_method_id, :payment_number, :amount, :paid_amount, :effective_date, :currency, :payment_status, :attempts, :payment_info_plugin

        def initialize()
        end

        def to_java()
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

          # conversion for account_id [type = java.util.UUID]
          @account_id = java.util.UUID.fromString(@account_id.to_s) unless @account_id.nil?

          # conversion for invoice_id [type = java.util.UUID]
          @invoice_id = java.util.UUID.fromString(@invoice_id.to_s) unless @invoice_id.nil?

          # conversion for payment_method_id [type = java.util.UUID]
          @payment_method_id = java.util.UUID.fromString(@payment_method_id.to_s) unless @payment_method_id.nil?

          # conversion for payment_number [type = java.lang.Integer]
          @payment_number = @payment_number

          # conversion for amount [type = java.math.BigDecimal]
          if @amount.nil?
            @amount = java.math.BigDecimal::ZERO
          else
            @amount = java.math.BigDecimal.new(@amount.to_s)
          end

          # conversion for paid_amount [type = java.math.BigDecimal]
          if @paid_amount.nil?
            @paid_amount = java.math.BigDecimal::ZERO
          else
            @paid_amount = java.math.BigDecimal.new(@paid_amount.to_s)
          end

          # conversion for effective_date [type = org.joda.time.DateTime]
          if !@effective_date.nil?
            @effective_date =  (@effective_date.kind_of? Time) ? DateTime.parse(@effective_date.to_s) : @effective_date
            @effective_date = Java::org.joda.time.DateTime.new(@effective_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          @currency = Java::com.ning.billing.catalog.api.Currency.value_of("#{@currency.to_s}") unless @currency.nil?

          # conversion for payment_status [type = com.ning.billing.payment.api.PaymentStatus]
          @payment_status = Java::com.ning.billing.payment.api.PaymentStatus.value_of("#{@payment_status.to_s}") unless @payment_status.nil?

          # conversion for attempts [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@attempts || []).each do |m|
            # conversion for m [type = com.ning.billing.payment.api.PaymentAttempt]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @attempts = tmp

          # conversion for payment_info_plugin [type = com.ning.billing.payment.plugin.api.PaymentInfoPlugin]
          @payment_info_plugin = @payment_info_plugin.to_java unless @payment_info_plugin.nil?
          self
        end

        def to_ruby(j_obj)
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

          # conversion for account_id [type = java.util.UUID]
          @account_id = j_obj.account_id
          @account_id = @account_id.nil? ? nil : @account_id.to_s

          # conversion for invoice_id [type = java.util.UUID]
          @invoice_id = j_obj.invoice_id
          @invoice_id = @invoice_id.nil? ? nil : @invoice_id.to_s

          # conversion for payment_method_id [type = java.util.UUID]
          @payment_method_id = j_obj.payment_method_id
          @payment_method_id = @payment_method_id.nil? ? nil : @payment_method_id.to_s

          # conversion for payment_number [type = java.lang.Integer]
          @payment_number = j_obj.payment_number

          # conversion for amount [type = java.math.BigDecimal]
          @amount = j_obj.amount
          @amount = @amount.nil? ? 0 : BigDecimal.new(@amount.to_s)

          # conversion for paid_amount [type = java.math.BigDecimal]
          @paid_amount = j_obj.paid_amount
          @paid_amount = @paid_amount.nil? ? 0 : BigDecimal.new(@paid_amount.to_s)

          # conversion for effective_date [type = org.joda.time.DateTime]
          @effective_date = j_obj.effective_date
          if !@effective_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@effective_date)
            @effective_date = DateTime.iso8601(str)
          end

          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for payment_status [type = com.ning.billing.payment.api.PaymentStatus]
          @payment_status = j_obj.payment_status
          @payment_status = @payment_status.to_s.to_sym unless @payment_status.nil?

          # conversion for attempts [type = java.util.List]
          @attempts = j_obj.attempts
          tmp = []
          (@attempts || []).each do |m|
            # conversion for m [type = com.ning.billing.payment.api.PaymentAttempt]
            m = Killbill::Plugin::Model::PaymentAttempt.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @attempts = tmp

          # conversion for payment_info_plugin [type = com.ning.billing.payment.plugin.api.PaymentInfoPlugin]
          @payment_info_plugin = j_obj.payment_info_plugin
          @payment_info_plugin = Killbill::Plugin::Model::PaymentInfoPlugin.new.to_ruby(@payment_info_plugin) unless @payment_info_plugin.nil?
          self
        end

      end
    end
  end
end
