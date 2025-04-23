# frozen_string_literal: true

module LinksHelper
  def sidebar_links
    items = [{ path: root_path, icon: 'squares-2x2', menu_text: 'Dashboard' }]

    items.push(
      {
        path: '',
        icon: 'user',
        menu_text: 'Profile',
        children: [
          { path: edit_user_registration_path, icon: 'pencil-square', menu_text: 'Edit' },
          { path: destroy_user_session_path, icon: 'arrow-left-on-rectangle', menu_text: 'Logout', type: 'button', method: :delete },
          { path: registration_path('user'), icon: 'trash', menu_text: 'Delete account', type: 'button', method: :delete, class: 'mt-10' }
        ]
      }
)
  end
end
