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

      java_package 'com.ning.billing.util.entity'
      class Entity

        include com.ning.billing.util.entity.Entity

        attr_accessor :id, :created_date, :updated_date

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
          self
        end

      end
    end
  end
end
