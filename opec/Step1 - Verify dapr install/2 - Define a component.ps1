# Define a component

# Step 1: Create a JSON secret store
# ----------------------------------

# Save JSON contents into a file named mysecrets.json:
cd "/home/thierry/opec/Step1 - Verify dapr install"
'{"my-secret": "I am Batman"}' | Out-File -Path "mysecrets.json" -force


# Step 2: Create a secret store Dapr component
# --------------------------------------------

# Create a new directory named my-components to hold the new component file:

cd "/home/thierry/opec/Step1 - Verify dapr install"
mkdir my-components

# Inside this directory create a new file localSecretStore.yaml with the following contents:
cd "/home/thierry/opec/Step1 - Verify dapr install/my-components"

$localSecretStore = @"
apiVersion: dapr.io/v1alpha1
kind: Component
metadata:
  name: my-secret-store
  namespace: default
spec:
  type: secretstores.local.file
  version: v1
  metadata:
  - name: secretsFile
    value: '/home/thierry/opec/Step1 - Verify dapr install/mysecrets.json'
  - name: nestedSeparator
    value: ":"
"@
$localSecretStore | Out-File -Path "localSecretStore.yaml" -force


# Step 3: Run the Dapr sidecar
# ----------------------------

# Run the following command to launch a Dapr sidecar that will listen on port 3500 for a blank application named myapp:

# --> pwsh1
dapr run --app-id myapp --dapr-http-port 3500 --components-path '/home/thierry/opec/Step1 - Verify dapr install/my-components'


# Step 4: Get a secret
# --------------------

# --> pwsh2
curl http://localhost:3500/v1.0/secrets/my-secret-store/my-secret
Invoke-RestMethod -Uri 'http://localhost:3500/v1.0/secrets/my-secret-store/my-secret'

    # my-secret
    # ---------
    # I am Batman

    