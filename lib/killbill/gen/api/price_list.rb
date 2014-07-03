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

      java_package 'org.killbill.billing.catalog.api'
      class PriceList

        include org.killbill.billing.catalog.api.PriceList

        attr_accessor :name, :is_retired, :plans

        def initialize()
        end

        def to_java()
          # conversion for name [type = java.lang.String]
          @name = @name.to_s unless @name.nil?

          # conversion for is_retired [type = boolean]
          @is_retired = @is_retired.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_retired)

          # conversion for plans [type = org.killbill.billing.catalog.api.Plan]
          @plans = @plans.to_java unless @plans.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for name [type = java.lang.String]
          @name = j_obj.name

          # conversion for is_retired [type = boolean]
          @is_retired = j_obj.is_retired
          if @is_retired.nil?
            @is_retired = false
          else
            tmp_bool = (@is_retired.java_kind_of? java.lang.Boolean) ? @is_retired.boolean_value : @is_retired
            @is_retired = tmp_bool ? true : false
          end

          # conversion for plans [type = org.killbill.billing.catalog.api.Plan]
          @plans = j_obj.plans
          @plans = Killbill::Plugin::Model::Plan.new.to_ruby(@plans) unless @plans.nil?
          self
        end

      end
    end
  end
end
