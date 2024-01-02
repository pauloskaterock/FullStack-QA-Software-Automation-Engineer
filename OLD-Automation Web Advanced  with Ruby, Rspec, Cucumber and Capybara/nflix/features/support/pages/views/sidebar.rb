Class SideBarView
include Capybara::DSL
    def logget_user
    
        find('.sidebar-wrapper .user .info span')
    end

end