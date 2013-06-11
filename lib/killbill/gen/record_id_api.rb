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

      java_package 'com.ning.billing.util.api'
      class RecordIdApi

        include com.ning.billing.util.api.RecordIdApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.lang.Long getRecordId(Java::java.util.UUID, Java::com.ning.billing.ObjectType, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_record_id(objectId, objectType, tenantContext)
          if !objectId.nil? && objectId.respond_to? :to_java
            objectId = objectId.to_java
          end

          if !objectType.nil? && objectType.respond_to? :to_java
            objectType = objectType.to_java
          end

          if !tenantContext.nil? && tenantContext.respond_to? :to_java
            tenantContext = tenantContext.to_java
          end

          res = @real_java_api.get_record_id(objectId, objectType, tenantContext)
          # conversion for res [type = java.lang.Long]
          return res
        end
      end
    end
  end
end
