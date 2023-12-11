function StartPayCheck()
  CreateThread(function()
    while true do
      Wait(Config.PaycheckInterval)

      for player, xPlayer in pairs(ESX.Players) do
        local job = xPlayer.job.grade_name
        local salary = xPlayer.job.grade_salary
        
        print("DEBUG paycheck xPlayer.job2")
        print(xPlayer.job2)
        if xPlayer.job2 ~= nil then
          local job2 = xPlayer.job2.grade_name 
          local salary2 = xPlayer.job2.grade_salary
        end

        if job ~= nil then
          if salary > 0 then
            if job == 'unemployed' then -- unemployed
              xPlayer.addAccountMoney('bank', salary, "Welfare Check")
              TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), TranslateCap('received_paycheck'), TranslateCap('received_help', salary),
                'CHAR_BANK_MAZE', 9)
            elseif Config.EnableSocietyPayouts then -- possibly a society
              TriggerEvent('metaverse_society:getSociety', xPlayer.job.name, function(society)
                if society ~= nil then -- verified society
                  TriggerEvent('metaverse_addonaccount:getSharedAccount', society.account, function(account)
                    if account.money >= salary then -- does the society money to pay its employees?
                      xPlayer.addAccountMoney('bank', salary, "Paycheck")
                      account.removeMoney(salary)

                      TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), TranslateCap('received_paycheck'),
                        TranslateCap('received_salary', salary), 'CHAR_BANK_MAZE', 9)
                    else
                      TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), '', TranslateCap('company_nomoney'), 'CHAR_BANK_MAZE', 1)
                    end
                  end)
                else -- not a society
                  xPlayer.addAccountMoney('bank', salary, "Paycheck")
                  TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), TranslateCap('received_paycheck'), TranslateCap('received_salary', salary),
                    'CHAR_BANK_MAZE', 9)
                end
              end)
            else -- generic job
              xPlayer.addAccountMoney('bank', salary, "Paycheck")
              TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), TranslateCap('received_paycheck'), TranslateCap('received_salary', salary),
                'CHAR_BANK_MAZE', 9)
            end
          end
        end
        if job2 ~= nil then
          if salary2 > 0 then
            if job2 == 'unemployed2' then -- unemployed
              TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), TranslateCap('received_paycheck'), TranslateCap('received_help', salary2),
              'CHAR_BANK_MAZE', 9)
            elseif Config.EnableSocietyPayouts then -- possibly a society
              TriggerEvent('metaverse_society:getSociety', xPlayer.job2.name, function(society)
                if society ~= nil then -- verified society
                  TriggerEvent('metaverse_addonaccount:getSharedAccount', society.account, function (account)
                    if account.money >= salary2 then -- does the society money to pay its employees?
                      xPlayer.addAccountMoney('bank',salary2, "Paycheck")
                      account.removeMoney(salary2)
    
                      TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), TranslateCap('received_paycheck'),
                      TranslateCap('received_salary', salary2), 'CHAR_BANK_MAZE', 9)
                    end
                  end)
                else -- not a society
                  xPlayer.addAccountMoney('bank',salary2, "Paycheck")
                  TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), TranslateCap('received_paycheck'), TranslateCap('received_salary', salary2),
                  'CHAR_BANK_MAZE', 9)
                end
              end)
            else -- generic job
              xPlayer.addAccountMoney('bank',salary2, "Paycheck")
              TriggerClientEvent('esx:showAdvancedNotification', player, TranslateCap('bank'), TranslateCap('received_paycheck'), TranslateCap('received_salary', salary2),
              'CHAR_BANK_MAZE', 9)
            end
          end 
        end 
      end
    end
  end)
end
