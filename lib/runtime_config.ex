defmodule Bonfire.Me.RuntimeConfig do

  def config_module, do: true

  def config do
    import Config

    config :bonfire_me, Bonfire.Me.Identity.Mails,
      confirm_email:  [subject: "Confirm your email - Bonfire"],
      forgot_password: [subject: "Reset your password - Bonfire"]

    #### Pointer class configuration

    config :bonfire_me, Bonfire.Me.Accounts,
      epics: [
        delete: [
        ]
      ]

    config :bonfire_me, Bonfire.Me.Users,
      discoverable: true, # whether profiles should be dicoverable by search engines (can be overriden in user settings)
      # TODO: not hooked up yet
      max_per_account: 5 # Maximum number of users that an account may create

  end
end
