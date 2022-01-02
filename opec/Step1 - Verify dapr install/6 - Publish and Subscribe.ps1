# file: /home/thierry/opec/Step1 - Verify dapr install/5 - Publish and Subscribe.ps1

#######################
# PUBLISH & SUBSCRIBE #
#######################

https://docs.dapr.io/developing-applications/building-blocks/pubsub/pubsub-overview/

#region -- Publish & Subscribe
#+++++++++++++++++++++++++++++
https://docs.dapr.io/developing-applications/building-blocks/pubsub/howto-publish-subscribe/

# Step 1: Setup the Pub/Sub component
# -----------------------------------
$pubsub = @"
apiVersion: dapr.io/v1alpha1
kind: Component
metadata:
  name: pubsub
spec:
  type: pubsub.redis
  version: v1
  metadata:
  - name: redisHost
    value: localhost:6379
  - name: redisPassword
    value: ""
"@
$pubsub | Out-File -Path "/home/thierry/opec/Step1 - Verify dapr install/myComponents/pubsub.yaml" -force


# Step 2: Subscribe to topics
# ----------------------------
$subscription = @"
apiVersion: dapr.io/v1alpha1
kind: Subscription
metadata:
  name: order_pub_sub
spec:
  topic: orders
  route: /checkout
  pubsubname: order_pub_sub
scopes:
- orderprocessing
- checkout
"@
$subscription | Out-File -Path "/home/thierry/opec/Step1 - Verify dapr install/myComponents/subscription.yaml" -force


# Step 3: Publish a topic
# -----------------------

# Start an instance of Dapr with an app-id called orderprocessing:
dapr run --app-id orderprocessing: --components-path "/home/thierry/opec/Step1 - Verify dapr install/myComponents" --dapr-http-port 3601

# Then publish a message to the orders topic (dapr CLI | pwsh)
dapr publish --publish-app-id orderprocessing --pubsub order_pub_sub --topic orders --data '{"orderId": "100"}'
Invoke-RestMethod -Method Post -ContentType 'application/json' -Body '{"orderId": "100"}' -Uri 'http://localhost:3601/v1.0/publish/order_pub_sub/orders'


# Step 4: ACK-ing a message
# -------------------------
# In order to tell Dapr that a message was processed successfully, return a 200 OK response. If Dapr receives any other return
# status code than 200, or if your app crashes, Dapr will attempt to redeliver the message following at-least-once semantics.

# IMPORTANT: If you want to use your own custom CloudEvent, make sure to specify the content type as application/cloudevents+json

dapr publish --publish-app-id orderprocessing --pubsub order_pub_sub --topic orders --data '{"specversion" : "1.0", "type" : "com.dapr.cloudevent.sent", "source" : "testcloudeventspubsub", "subject" : "Cloud Events Test", "id" : "someCloudEventId", "time" : "2021-08-02T09:00:00Z", "datacontenttype" : "application/cloudevents+json", "data" : {"orderId": "100"}}'
Invoke-RestMethod -Method Post -ContentType 'application/cloudevents+json' -Body '{"specversion" : "1.0", "type" : "com.dapr.cloudevent.sent", "source" : "testcloudeventspubsub", "subject" : "Cloud Events Test", "id" : "someCloudEventId", "time" : "2021-08-02T09:00:00Z", "datacontenttype" : "application/cloudevents+json", "data" : {"orderId": "100"}}' -Uri 'http://localhost:3601/v1.0/publish/order_pub_sub/orders'


#endregion

#region -- Route messages to different event handlers
#++++++++++++++++++++++++++++++++++++++++++++++++++++
https://docs.dapr.io/developing-applications/building-blocks/pubsub/howto-route-messages/

# NOTE: review extensive details at URL above

#endregion


#region -- Scope Pub/Sub topic access
#++++++++++++++++++++++++++++++++++++
https://docs.dapr.io/developing-applications/building-blocks/pubsub/pubsub-scopes/

# NOTE: review extensive details at URL above

#endregion


