<!-- BEGIN MUNGE: UNVERSIONED_WARNING -->


<!-- END MUNGE: UNVERSIONED_WARNING -->

## kube-controller-manager



### Synopsis


The Kubernetes controller manager is a daemon that embeds
the core control loops shipped with Kubernetes. In applications of robotics and
automation, a control loop is a non-terminating loop that regulates the state of
the system. In Kubernetes, a controller is a control loop that watches the shared
state of the cluster through the apiserver and makes changes attempting to move the
current state towards the desired state. Examples of controllers that ship with
Kubernetes today are the replication controller, endpoints controller, namespace
controller, and serviceaccounts controller.


### Options

```
      --address=<nil>: The IP address to serve on (set to 0.0.0.0 for all interfaces)
      --allocate-node-cidrs=false: Should CIDRs for Pods be allocated and set on the cloud provider.
      --cloud-config="": The path to the cloud provider configuration file.  Empty string for no configuration file.
      --cloud-provider="": The provider for cloud services.  Empty string for no provider.
      --cluster-cidr=<nil>: CIDR Range for Pods in cluster.
      --cluster-name="": The instance prefix for the cluster
      --concurrent-endpoint-syncs=0: The number of endpoint syncing operations that will be done concurrently. Larger number = faster endpoint updating, but more CPU (and network) load
      --concurrent_rc_syncs=0: The number of replication controllers that are allowed to sync concurrently. Larger number = more responsive replica management, but more CPU (and network) load
      --deleting-pods-burst=10: Number of nodes on which pods are bursty deleted in case of node failure. For more details look into RateLimiter.
      --deleting-pods-qps=0.1: Number of nodes per second on which pods are deleted in case of node failure.
  -h, --help=false: help for kube-controller-manager
      --kubeconfig="": Path to kubeconfig file with authorization and master location information.
      --master="": The address of the Kubernetes API server (overrides any value in kubeconfig)
      --namespace-sync-period=0: The period for syncing namespace life-cycle updates
      --node-monitor-grace-period=40s: Amount of time which we allow running Node to be unresponsive before marking it unhealthy. Must be N times more than kubelet's nodeStatusUpdateFrequency, where N means number of retries allowed for kubelet to post node status.
      --node-monitor-period=5s: The period for syncing NodeStatus in NodeController.
      --node-startup-grace-period=1m0s: Amount of time which we allow starting Node to be unresponsive before marking it unhealthy.
      --node-sync-period=0: The period for syncing nodes from cloudprovider. Longer periods will result in fewer calls to cloud provider, but may delay addition of new nodes to cluster.
      --pod-eviction-timeout=0: The grace period for deleting pods on failed nodes.
      --port=0: The port that the controller-manager's http service runs on
      --profiling=true: Enable profiling via web interface host:port/debug/pprof/
      --pvclaimbinder-sync-period=0: The period for syncing persistent volumes and persistent volume claims
      --register-retry-count=0: The number of retries for initial node registration.  Retry interval equals node-sync-period.
      --resource-quota-sync-period=0: The period for syncing quota usage status in the system
      --root-ca-file="": If set, this root certificate authority will be included in service account's token secret. This must be a valid PEM-encoded CA bundle.
      --service-account-private-key-file="": Filename containing a PEM-encoded private RSA key used to sign service account tokens.
```

###### Auto generated by spf13/cobra at 2015-07-06 18:03:31.507732064 +0000 UTC


<!-- BEGIN MUNGE: IS_VERSIONED -->
<!-- TAG IS_VERSIONED -->
<!-- END MUNGE: IS_VERSIONED -->


<!-- BEGIN MUNGE: GENERATED_ANALYTICS -->
[![Analytics](https://kubernetes-site.appspot.com/UA-36037335-10/GitHub/docs/admin/kube-controller-manager.md?pixel)]()
<!-- END MUNGE: GENERATED_ANALYTICS -->
