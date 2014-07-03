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

      java_package 'org.killbill.billing.util.callcontext'
      class CallContext

        include org.killbill.billing.util.callcontext.CallContext

        attr_accessor :tenant_id, :user_token, :user_name, :call_origin, :user_type, :reason_code, :comments, :created_date, :updated_date

        def initialize()
        end

        def to_java()
          # conversion for tenant_id [type = java.util.UUID]
          @tenant_id = java.util.UUID.fromString(@tenant_id.to_s) unless @tenant_id.nil?

          # conversion for user_token [type = java.util.UUID]
          @user_token = java.util.UUID.fromString(@user_token.to_s) unless @user_token.nil?

          # conversion for user_name [type = java.lang.String]
          @user_name = @user_name.to_s unless @user_name.nil?

          # conversion for call_origin [type = org.killbill.billing.util.callcontext.CallOrigin]
          @call_origin = Java::org.killbill.billing.util.callcontext.CallOrigin.value_of("#{@call_origin.to_s}") unless @call_origin.nil?

          # conversion for user_type [type = org.killbill.billing.util.callcontext.UserType]
          @user_type = Java::org.killbill.billing.util.callcontext.UserType.value_of("#{@user_type.to_s}") unless @user_type.nil?

          # conversion for reason_code [type = java.lang.String]
          @reason_code = @reason_code.to_s unless @reason_code.nil?

          # conversion for comments [type = java.lang.String]
          @comments = @comments.to_s unless @comments.nil?

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
          self
        end

        def to_ruby(j_obj)
          # conversion for tenant_id [type = java.util.UUID]
          @tenant_id = j_obj.tenant_id
          @tenant_id = @tenant_id.nil? ? nil : @tenant_id.to_s

          # conversion for user_token [type = java.util.UUID]
          @user_token = j_obj.user_token
          @user_token = @user_token.nil? ? nil : @user_token.to_s

          # conversion for user_name [type = java.lang.String]
          @user_name = j_obj.user_name

          # conversion for call_origin [type = org.killbill.billing.util.callcontext.CallOrigin]
          @call_origin = j_obj.call_origin
          @call_origin = @call_origin.to_s.to_sym unless @call_origin.nil?

          # conversion for user_type [type = org.killbill.billing.util.callcontext.UserType]
          @user_type = j_obj.user_type
          @user_type = @user_type.to_s.to_sym unless @user_type.nil?

          # conversion for reason_code [type = java.lang.String]
          @reason_code = j_obj.reason_code

          # conversion for comments [type = java.lang.String]
          @comments = j_obj.comments

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
          self
        end

      end
    end
  end
end
