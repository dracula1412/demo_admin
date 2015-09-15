ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'User sign_ups from the last 18 months' do
          data_hash = User.all
          table_for data_hash do |t|
            t.column('id') { |m| m.id}
            t.column('email') { |m| m.email }
          end
        end
      end
    end

    columns do
      column do
        panel 'Last 10 orders' do
          data_hash = Order.last(10)
          table_for data_hash do |t|
            t.column('id') { |m| m.id}
            t.column('product') { |m| m.product.name }
            t.column('buyer') { |m| m.user.email }
            t.column('quantity') { |m| m.quantity }
            t.column('bought at') { |m| m.created_at }
          end
        end
      end
    end
#    div class: "blank_slate_container", id: "dashboard_default_message" do
#      span class: "blank_slate" do
#        span I18n.t("active_admin.dashboard_welcome.welcome")
#        small I18n.t("active_admin.dashboard_welcome.call_to_action")
#      end
#    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
