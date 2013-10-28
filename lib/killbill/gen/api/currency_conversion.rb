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

      java_package 'com.ning.billing.currency.api'
      class CurrencyConversion

        include com.ning.billing.currency.api.CurrencyConversion

        attr_accessor :conversion_date, :base_currency, :rates

        def initialize()
        end

        def to_java()
          # conversion for conversion_date [type = org.joda.time.DateTime]
          if !@conversion_date.nil?
            @conversion_date =  (@conversion_date.kind_of? Time) ? DateTime.parse(@conversion_date.to_s) : @conversion_date
            @conversion_date = Java::org.joda.time.DateTime.new(@conversion_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for base_currency [type = com.ning.billing.catalog.api.Currency]
          @base_currency = Java::com.ning.billing.catalog.api.Currency.value_of("#{@base_currency.to_s}") unless @base_currency.nil?

          # conversion for rates [type = com.ning.billing.currency.api.Rates]
          @rates = @rates.to_java unless @rates.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for conversion_date [type = org.joda.time.DateTime]
          @conversion_date = j_obj.conversion_date
          if !@conversion_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@conversion_date)
            @conversion_date = DateTime.iso8601(str)
          end

          # conversion for base_currency [type = com.ning.billing.catalog.api.Currency]
          @base_currency = j_obj.base_currency
          @base_currency = @base_currency.to_s.to_sym unless @base_currency.nil?

          # conversion for rates [type = com.ning.billing.currency.api.Rates]
          @rates = j_obj.rates
          @rates = Killbill::Plugin::Model::Rates.new.to_ruby(@rates) unless @rates.nil?
          self
        end

      end
    end
  end
end
