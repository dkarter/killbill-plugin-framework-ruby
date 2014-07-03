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

      java_package 'org.killbill.billing.payment.plugin.api'
      class GatewayNotification

        include org.killbill.billing.payment.plugin.api.GatewayNotification

        attr_accessor :kb_payment_id, :status, :entity, :headers, :properties

        def initialize()
        end

        def to_java()
          # conversion for kb_payment_id [type = java.util.UUID]
          @kb_payment_id = java.util.UUID.fromString(@kb_payment_id.to_s) unless @kb_payment_id.nil?

          # conversion for status [type = int]
          @status = @status

          # conversion for entity [type = java.lang.String]
          @entity = @entity.to_s unless @entity.nil?

          # conversion for headers [type = java.util.Map]
          tmp = java.util.HashMap.new
          (@headers || {}).each do |k,v|
            # conversion for k [type = java.lang.String]
            k = k.to_s unless k.nil?
              # conversion for v [type = java.util.List]
              tmp1 = java.util.ArrayList.new
              (v || []).each do |m|
                # conversion for m [type = java.lang.String]
                m = m.to_s unless m.nil?
                tmp1.add(m)
              end
              v = tmp1
              tmp.put(k, v)
            end
          @headers = tmp

          # conversion for properties [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @properties = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for kb_payment_id [type = java.util.UUID]
          @kb_payment_id = j_obj.kb_payment_id
          @kb_payment_id = @kb_payment_id.nil? ? nil : @kb_payment_id.to_s

          # conversion for status [type = int]
          @status = j_obj.status

          # conversion for entity [type = java.lang.String]
          @entity = j_obj.entity

          # conversion for headers [type = java.util.Map]
          @headers = j_obj.headers
          tmp = {}
          jtmp0 = @headers || java.util.HashMap.new
          jtmp0.key_set.each do |k|
            # conversion for k [type = java.lang.String]
            v = jtmp0.get(k)
              # conversion for v [type = java.util.List]
              tmp1 = []
              (v || []).each do |m|
                # conversion for m [type = java.lang.String]
                tmp1 << m
              end
              v = tmp1
              tmp[k] = v
            end
          @headers = tmp

          # conversion for properties [type = java.util.List]
          @properties = j_obj.properties
          tmp = []
          (@properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @properties = tmp
          self
        end

      end
    end
  end
end
