RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.authorize_with :cancan

  config.actions do
    dashboard do
      except [OrderLine]
    end
    index do
      except [OrderLine]
    end
    new do
      except [Customer, Order, OrderLine]
    end
    export
    bulk_delete
    show do
      except [OrderLine]
    end
    edit
    delete
    show_in_app do
      except [OrderLine]
    end

    ## With an audit adapter, you can add:
    history_index
    history_show
  end
end
