# file : /home/thierry/opec/Step1 - Verify dapr install/4 - State Management.ps1

####################
# STATE MANAGEMENT #
####################

https://docs.dapr.io/developing-applications/building-blocks/state-management


#region -- Save and Get State
#++++++++++++++++++++++++++++
https://docs.dapr.io/developing-applications/building-blocks/state-management/howto-get-save-state/


# Step 1: Setup a state store
# ---------------------------

When using dapr init in Standalone mode, the Dapr CLI automatically provisions a state store (Redis) and creates the relevant YAML in a components directory, which for Linux/MacOS is $HOME/.dapr/components and for Windows is %USERPROFILE%\.dapr\components

To optionally change the state store being used, replace the YAML file statestore.yaml under /components with the file of your choice


# Step 2: Save and retrieve a single state
# ----------------------------------------

# Begin by launching a Dapr sidecar only:
# dapr --app-id orderprocessing --app-port 3601 run
dapr run --app-id orderprocessing --dapr-http-port 3601

# Alternative -- specify components location instead of default
dapr run --app-id orderprocessing --dapr-http-port 3601 --components-path '/home/thierry/opec/Step1 - Verify dapr install/myComponents'


# Then in a separate terminal save a key/value pair into your statestore:
Invoke-RestMethod -Method Post -ContentType 'application/json' -Body '[{"key": "order_1", "value": "250"}]' -Uri 'http://localhost:3601/v1.0/state/statestore'

# Now get the state you just saved:
Invoke-RestMethod -Uri 'http://localhost:3601/v1.0/state/statestore/order_1'

# Restart your sidecar and try retrieving state again to observe that state persists separately from the app.
dapr stop --app-id orderprocessing

# Step 3: Delete state
# --------------------

# With the same Dapr instance running from above run:
Invoke-RestMethod -Method Delete -Uri 'http://localhost:3601/v1.0/state/statestore/order_1'


# Step 4: Save and retrieve multiple states
# -----------------------------------------

# With the same Dapr instance running from above save two key/value pairs into your statestore:
Invoke-RestMethod -Method Post -ContentType 'application/json' -Body '[{ "key": "order_1", "value": "250"}, { "key": "order_2", "value": "550"}]' -Uri 'http://localhost:3601/v1.0/state/statestore'

# Now get the states you just saved:
Invoke-RestMethod -Method Post -ContentType 'application/json' -Body '{"keys":["order_1", "order_2"]}' -Uri 'http://localhost:3601/v1.0/state/statestore/bulk'

#endregion

