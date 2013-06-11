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

      java_package 'com.ning.billing.account.api'
      class AccountUserApi

        include com.ning.billing.account.api.AccountUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::com.ning.billing.account.api.Account createAccount(Java::com.ning.billing.account.api.AccountData, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_account(data, context)
          if !data.nil? && data.respond_to? :to_java
            data = data.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.create_account(data, context)
            # conversion for res [type = com.ning.billing.account.api.Account]
            res = Killbill::Plugin::Model::Account.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.account.api.Account migrateAccount(Java::com.ning.billing.account.api.MigrationAccountData, Java::com.ning.billing.util.callcontext.CallContext)'
        def migrate_account(data, context)
          if !data.nil? && data.respond_to? :to_java
            data = data.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.migrate_account(data, context)
            # conversion for res [type = com.ning.billing.account.api.Account]
            res = Killbill::Plugin::Model::Account.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.to_ruby(e)
          end
        end

        java_signature 'Java::void updateAccount(Java::com.ning.billing.account.api.Account, Java::com.ning.billing.util.callcontext.CallContext)'
        def update_account(account, context)
          if !account.nil? && account.respond_to? :to_java
            account = account.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          @real_java_api.update_account(account, context)
        end

        java_signature 'Java::com.ning.billing.account.api.Account getAccountByKey(Java::java.lang.String, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_account_by_key(key, context)
          if !key.nil? && key.respond_to? :to_java
            key = key.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_account_by_key(key, context)
            # conversion for res [type = com.ning.billing.account.api.Account]
            res = Killbill::Plugin::Model::Account.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.account.api.Account getAccountById(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_account_by_id(accountId, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_account_by_id(accountId, context)
            # conversion for res [type = com.ning.billing.account.api.Account]
            res = Killbill::Plugin::Model::Account.to_ruby(res) if !res.nil?
            return res
          rescue Java::com.ning.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getAccounts(Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_accounts(context)
          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_accounts(context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.account.api.Account]
            m = Killbill::Plugin::Model::Account.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::java.util.UUID getIdFromKey(Java::java.lang.String, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_id_from_key(externalKey, context)
          if !externalKey.nil? && externalKey.respond_to? :to_java
            externalKey = externalKey.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          begin
            res = @real_java_api.get_id_from_key(externalKey, context)
            # conversion for res [type = java.util.UUID]
            res = res.nil? ? nil : uuid.to_s
            return res
          rescue Java::com.ning.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getEmails(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_emails(accountId, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          res = @real_java_api.get_emails(accountId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.account.api.AccountEmail]
            m = Killbill::Plugin::Model::AccountEmail.to_ruby(m) if !m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::void addEmail(Java::java.util.UUID, Java::com.ning.billing.account.api.AccountEmail, Java::com.ning.billing.util.callcontext.CallContext)'
        def add_email(accountId, email, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !email.nil? && email.respond_to? :to_java
            email = email.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          @real_java_api.add_email(accountId, email, context)
        end

        java_signature 'Java::void removeEmail(Java::java.util.UUID, Java::com.ning.billing.account.api.AccountEmail, Java::com.ning.billing.util.callcontext.CallContext)'
        def remove_email(accountId, email, context)
          if !accountId.nil? && accountId.respond_to? :to_java
            accountId = accountId.to_java
          end

          if !email.nil? && email.respond_to? :to_java
            email = email.to_java
          end

          if !context.nil? && context.respond_to? :to_java
            context = context.to_java
          end

          @real_java_api.remove_email(accountId, email, context)
        end
      end
    end
  end
end
