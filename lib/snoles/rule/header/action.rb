# alert, log, pass, activate, and dynamic
# drop, reject, and sdrop.

module Snoles
  
  class Action
  
    # 
    # Rule Actions
    # 
    # Listed below are all of the avalabile 
    # rule actions. The drop, reject, and sdrop 
    # actions are only avaliable in inline mode.
    # 
    ACTIONS = [
      :alert,
      :log,
      :pass,
      :activate,
      :dynamic,
      :drop,
      :reject,
      :sdrop
    ]
  
    def initialize(action)
      @actions = action
    end
  
  end
  
end