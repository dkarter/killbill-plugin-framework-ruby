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

      java_package 'com.ning.billing.payment.plugin.api'
      class PaymentInfoPlugin

        include com.ning.billing.payment.plugin.api.PaymentInfoPlugin

        attr_accessor :kb_payment_id, :amount, :currency, :created_date, :effective_date, :status, :gateway_error, :gateway_error_code, :first_payment_reference_id, :second_payment_reference_id

        def initialize()
        end

        def to_java()
          # conversion for kb_payment_id [type = java.util.UUID]
          @kb_payment_id = java.util.UUID.fromString(@kb_payment_id.to_s) unless @kb_payment_id.nil?

          # conversion for amount [type = java.math.BigDecimal]
          if @amount.nil?
            @amount = java.math.BigDecimal::ZERO
          else
            @amount = java.math.BigDecimal.new(@amount.to_s)
          end

          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          @currency = Java::com.ning.billing.catalog.api.Currency.value_of("#{@currency.to_s}") unless @currency.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for effective_date [type = org.joda.time.DateTime]
          if !@effective_date.nil?
            @effective_date =  (@effective_date.kind_of? Time) ? DateTime.parse(@effective_date.to_s) : @effective_date
            @effective_date = Java::org.joda.time.DateTime.new(@effective_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for status [type = com.ning.billing.payment.plugin.api.PaymentPluginStatus]
          @status = Java::com.ning.billing.payment.plugin.api.PaymentPluginStatus.value_of("#{@status.to_s}") unless @status.nil?

          # conversion for gateway_error [type = java.lang.String]
          @gateway_error = @gateway_error.to_s unless @gateway_error.nil?

          # conversion for gateway_error_code [type = java.lang.String]
          @gateway_error_code = @gateway_error_code.to_s unless @gateway_error_code.nil?

          # conversion for first_payment_reference_id [type = java.lang.String]
          @first_payment_reference_id = @first_payment_reference_id.to_s unless @first_payment_reference_id.nil?

          # conversion for second_payment_reference_id [type = java.lang.String]
          @second_payment_reference_id = @second_payment_reference_id.to_s unless @second_payment_reference_id.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for kb_payment_id [type = java.util.UUID]
          @kb_payment_id = j_obj.kb_payment_id
          @kb_payment_id = @kb_payment_id.nil? ? nil : @kb_payment_id.to_s

          # conversion for amount [type = java.math.BigDecimal]
          @amount = j_obj.amount
          @amount = @amount.nil? ? 0 : BigDecimal.new(@amount.to_s)

          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for effective_date [type = org.joda.time.DateTime]
          @effective_date = j_obj.effective_date
          if !@effective_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@effective_date)
            @effective_date = DateTime.iso8601(str)
          end

          # conversion for status [type = com.ning.billing.payment.plugin.api.PaymentPluginStatus]
          @status = j_obj.status
          @status = @status.to_s.to_sym unless @status.nil?

          # conversion for gateway_error [type = java.lang.String]
          @gateway_error = j_obj.gateway_error

          # conversion for gateway_error_code [type = java.lang.String]
          @gateway_error_code = j_obj.gateway_error_code

          # conversion for first_payment_reference_id [type = java.lang.String]
          @first_payment_reference_id = j_obj.first_payment_reference_id

          # conversion for second_payment_reference_id [type = java.lang.String]
          @second_payment_reference_id = j_obj.second_payment_reference_id
          self
        end

      end
    end
  end
end
