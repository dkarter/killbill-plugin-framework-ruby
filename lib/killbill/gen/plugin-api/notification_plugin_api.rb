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
    module Api

      java_package 'org.killbill.billing.notification.plugin.api'
      class NotificationPluginApi < JPlugin

        include org.killbill.billing.notification.plugin.api.NotificationPluginApi

        def initialize(real_class_name, services = {})
          super(real_class_name, services)
        end


        java_signature 'Java::void onEvent(Java::org.killbill.billing.notification.plugin.api.ExtBusEvent)'
        def on_event(killbillEvent)

          # conversion for killbillEvent [type = org.killbill.billing.notification.plugin.api.ExtBusEvent]
          killbillEvent = Killbill::Plugin::Model::ExtBusEvent.new.to_ruby(killbillEvent) unless killbillEvent.nil?
          begin
            @delegate_plugin.on_event(killbillEvent)
          rescue Exception => e
            message = "Failure in on_event: #{e}"
            unless e.backtrace.nil?
              message = "#{message}\n#{e.backtrace.join("\n")}"
            end
            logger.warn message
            raise Java::org.killbill.billing.payment.plugin.api.PaymentPluginApiException.new("on_event failure", e.message)
          ensure
            @delegate_plugin.after_request
          end
        end
      end
    end
  end
end
