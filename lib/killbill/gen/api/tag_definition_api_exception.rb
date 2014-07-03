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

      class TagDefinitionApiException


        attr_accessor :message, :cause, :code

        def initialize()
        end

        def to_java()
          # conversion for message [type = java.lang.String]
          @message = @message.to_s unless @message.nil?

          # conversion for cause [type = java.lang.Throwable]
          @cause = @cause.to_s unless cause.nil?

          # conversion for code [type = int]
          @code = @code
          Java::org.killbill.billing.util.api.TagDefinitionApiException.new(@message, @cause, @code)
        end

        def to_ruby(j_obj)
          # conversion for message [type = java.lang.String]
          @message = j_obj.message

          # conversion for cause [type = java.lang.Throwable]
          @cause = j_obj.cause
          @cause = @cause.to_s unless @cause.nil?

          # conversion for code [type = int]
          @code = j_obj.code
          self
        end

      end
    end
  end
end
