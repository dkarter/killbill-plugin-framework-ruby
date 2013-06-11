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

      java_package 'com.ning.billing.account.api'
      class MigrationAccountData

        include com.ning.billing.account.api.MigrationAccountData

        attr_accessor :external_key, :name, :first_name_length, :email, :bill_cycle_day_local, :currency, :payment_method_id, :time_zone, :locale, :address1, :address2, :company_name, :city, :state_or_province, :postal_code, :country, :phone, :is_migrated, :is_notified_for_invoices, :created_date, :updated_date, :additional_contact_emails

        def initialize()
        end

        def to_java()
          # conversion for external_key [type = java.lang.String]
          external_key = external_key.to_s if !external_key.nil?

          # conversion for name [type = java.lang.String]
          name = name.to_s if !name.nil?

          # conversion for first_name_length [type = java.lang.Integer]
          first_name_length = first_name_length

          # conversion for email [type = java.lang.String]
          email = email.to_s if !email.nil?

          # conversion for bill_cycle_day_local [type = java.lang.Integer]
          bill_cycle_day_local = bill_cycle_day_local

          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          currency = "Java::com.ning.billing.catalog.api.Currency::#{currency.to_s}" if !currency.nil?

          # conversion for payment_method_id [type = java.util.UUID]
          payment_method_id = java.util.UUID.fromString(payment_method_id.to_s) if !payment_method_id.nil?

          # conversion for time_zone [type = org.joda.time.DateTimeZone]
          if !time_zone.nil?
            time_zone = Java::org.joda.time.DateTimeZone.forID(time_zone.respond_to?(:identifier) ? time_zone.identifier : time_zone.to_s)
          end

          # conversion for locale [type = java.lang.String]
          locale = locale.to_s if !locale.nil?

          # conversion for address1 [type = java.lang.String]
          address1 = address1.to_s if !address1.nil?

          # conversion for address2 [type = java.lang.String]
          address2 = address2.to_s if !address2.nil?

          # conversion for company_name [type = java.lang.String]
          company_name = company_name.to_s if !company_name.nil?

          # conversion for city [type = java.lang.String]
          city = city.to_s if !city.nil?

          # conversion for state_or_province [type = java.lang.String]
          state_or_province = state_or_province.to_s if !state_or_province.nil?

          # conversion for postal_code [type = java.lang.String]
          postal_code = postal_code.to_s if !postal_code.nil?

          # conversion for country [type = java.lang.String]
          country = country.to_s if !country.nil?

          # conversion for phone [type = java.lang.String]
          phone = phone.to_s if !phone.nil?

          # conversion for is_migrated [type = java.lang.Boolean]
          is_migrated = is_migrated.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(is_migrated)

          # conversion for is_notified_for_invoices [type = java.lang.Boolean]
          is_notified_for_invoices = is_notified_for_invoices.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(is_notified_for_invoices)

          # conversion for created_date [type = org.joda.time.DateTime]
          if !created_date.nil?
            created_date =  (created_date.kind_of? Time) ? DateTime.parse(created_date.to_s) : created_date
            created_date = Java::org.joda.time.DateTime.new(created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !updated_date.nil?
            updated_date =  (updated_date.kind_of? Time) ? DateTime.parse(updated_date.to_s) : updated_date
            updated_date = Java::org.joda.time.DateTime.new(updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for additional_contact_emails [type = java.util.List]
          tmp = java.util.ArrayList.new
          additional_contact_emails.each do |m|
            # conversion for m [type = java.lang.String]
            m = m.to_s if !m.nil?
            tmp.add(m)
          end
          additional_contact_emails = tmp
        end

        def self.to_ruby(j_obj)
          # conversion for external_key [type = java.lang.String]
          external_key = j_obj.external_key

          # conversion for name [type = java.lang.String]
          name = j_obj.name

          # conversion for first_name_length [type = java.lang.Integer]
          first_name_length = j_obj.first_name_length

          # conversion for email [type = java.lang.String]
          email = j_obj.email

          # conversion for bill_cycle_day_local [type = java.lang.Integer]
          bill_cycle_day_local = j_obj.bill_cycle_day_local

          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          currency = j_obj.currency
          currency = currency.to_s if !currency.nil?

          # conversion for payment_method_id [type = java.util.UUID]
          payment_method_id = j_obj.payment_method_id
          payment_method_id = payment_method_id.nil? ? nil : uuid.to_s

          # conversion for time_zone [type = org.joda.time.DateTimeZone]
          time_zone = j_obj.time_zone
          if !time_zone.nil?
            time_zone = TZInfo::Timezone.get(time_zone.get_id)
          end

          # conversion for locale [type = java.lang.String]
          locale = j_obj.locale

          # conversion for address1 [type = java.lang.String]
          address1 = j_obj.address1

          # conversion for address2 [type = java.lang.String]
          address2 = j_obj.address2

          # conversion for company_name [type = java.lang.String]
          company_name = j_obj.company_name

          # conversion for city [type = java.lang.String]
          city = j_obj.city

          # conversion for state_or_province [type = java.lang.String]
          state_or_province = j_obj.state_or_province

          # conversion for postal_code [type = java.lang.String]
          postal_code = j_obj.postal_code

          # conversion for country [type = java.lang.String]
          country = j_obj.country

          # conversion for phone [type = java.lang.String]
          phone = j_obj.phone

          # conversion for is_migrated [type = java.lang.Boolean]
          is_migrated = j_obj.is_migrated
          if is_migrated.nil?
            return false
          end
          b_value = (is_migrated.java_kind_of? java.lang.Boolean) ? is_migrated.boolean_value : is_migrated
          return b_value ? true : false

          # conversion for is_notified_for_invoices [type = java.lang.Boolean]
          is_notified_for_invoices = j_obj.is_notified_for_invoices
          if is_notified_for_invoices.nil?
            return false
          end
          b_value = (is_notified_for_invoices.java_kind_of? java.lang.Boolean) ? is_notified_for_invoices.boolean_value : is_notified_for_invoices
          return b_value ? true : false

          # conversion for created_date [type = org.joda.time.DateTime]
          created_date = j_obj.created_date
          if !created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(created_date)
            created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          updated_date = j_obj.updated_date
          if !updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(updated_date)
            updated_date = DateTime.iso8601(str)
          end

          # conversion for additional_contact_emails [type = java.util.List]
          additional_contact_emails = j_obj.additional_contact_emails
          tmp = []
          additional_contact_emails.each do |m|
            # conversion for m [type = java.lang.String]
            m = j_obj.m
            tmp << m
          end
          additional_contact_emails = tmp
        end

      end
    end
  end
end
