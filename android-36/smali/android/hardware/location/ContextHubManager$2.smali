.class Landroid/hardware/location/ContextHubManager$2;
.super Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/location/ContextHubManager;->createDiscoveryCallback(Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/location/ContextHubManager;

.field final synthetic blacklist val$callback:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$service:Landroid/hardware/location/IContextHubService;

.field final synthetic blacklist val$serviceDescriptor:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$GzupSqFIFQSMQggN3e_AmpQUGws(Landroid/hardware/location/ContextHubManager$2;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Landroid/hardware/location/IContextHubService;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/location/ContextHubManager$2;->lambda$onEndpointsStarted$0([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Landroid/hardware/location/IContextHubService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dFDB5Akr_0QyNLei7kH6PYUaVP8(Landroid/hardware/location/ContextHubManager$2;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;ILandroid/hardware/location/IContextHubService;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/hardware/location/ContextHubManager$2;->lambda$onEndpointsStopped$1([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;ILandroid/hardware/location/IContextHubService;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;)V
    .registers 6
    .param p1, "this$0"    # Landroid/hardware/location/ContextHubManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 781
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$2;->this$0:Landroid/hardware/location/ContextHubManager;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$2;->val$service:Landroid/hardware/location/IContextHubService;

    iput-object p3, p0, Landroid/hardware/location/ContextHubManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/hardware/location/ContextHubManager$2;->val$serviceDescriptor:Ljava/lang/String;

    iput-object p5, p0, Landroid/hardware/location/ContextHubManager$2;->val$callback:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist invokeCallbackFinished(Landroid/hardware/location/IContextHubService;)V
    .registers 3
    .param p1, "service"    # Landroid/hardware/location/IContextHubService;

    .line 826
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/location/IContextHubService;->onDiscoveryCallbackFinished()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 829
    goto :goto_8

    .line 827
    :catch_4
    move-exception v0

    .line 828
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 830
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    return-void
.end method

.method private synthetic blacklist lambda$onEndpointsStarted$0([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Landroid/hardware/location/IContextHubService;)V
    .registers 8
    .param p1, "hubEndpointInfoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    .param p4, "service"    # Landroid/hardware/location/IContextHubService;

    .line 791
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$2;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 792
    invoke-static {v0, p1, p2}, Landroid/hardware/location/ContextHubManager;->-$$Nest$mgetMatchingEndpointDiscoveryList(Landroid/hardware/location/ContextHubManager;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 794
    .local v0, "discoveryList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubDiscoveryInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 795
    const-string v1, "ContextHubManager"

    const-string v2, "onEndpointsStarted: no matching service descriptor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 797
    :cond_14
    invoke-interface {p3, v0}, Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;->onEndpointsStarted(Ljava/util/List;)V

    .line 799
    :goto_17
    invoke-direct {p0, p4}, Landroid/hardware/location/ContextHubManager$2;->invokeCallbackFinished(Landroid/hardware/location/IContextHubService;)V

    .line 800
    return-void
.end method

.method private synthetic blacklist lambda$onEndpointsStopped$1([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;ILandroid/hardware/location/IContextHubService;)V
    .registers 9
    .param p1, "hubEndpointInfoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    .param p4, "reason"    # I
    .param p5, "service"    # Landroid/hardware/location/IContextHubService;

    .line 812
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$2;->this$0:Landroid/hardware/location/ContextHubManager;

    .line 813
    invoke-static {v0, p1, p2}, Landroid/hardware/location/ContextHubManager;->-$$Nest$mgetMatchingEndpointDiscoveryList(Landroid/hardware/location/ContextHubManager;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 815
    .local v0, "discoveryList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubDiscoveryInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 816
    const-string v1, "ContextHubManager"

    const-string v2, "onEndpointsStopped: no matching service descriptor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 818
    :cond_14
    invoke-interface {p3, v0, p4}, Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;->onEndpointsStopped(Ljava/util/List;I)V

    .line 820
    :goto_17
    invoke-direct {p0, p5}, Landroid/hardware/location/ContextHubManager$2;->invokeCallbackFinished(Landroid/hardware/location/IContextHubService;)V

    .line 821
    return-void
.end method


# virtual methods
.method public blacklist onEndpointsStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 9
    .param p1, "hubEndpointInfoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;

    .line 784
    array-length v0, p1

    if-nez v0, :cond_10

    .line 785
    const-string v0, "ContextHubManager"

    const-string v1, "onEndpointsStarted: received empty discovery list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$2;->val$service:Landroid/hardware/location/IContextHubService;

    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager$2;->invokeCallbackFinished(Landroid/hardware/location/IContextHubService;)V

    .line 787
    return-void

    .line 789
    :cond_10
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/location/ContextHubManager$2;->val$serviceDescriptor:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/location/ContextHubManager$2;->val$callback:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

    iget-object v6, p0, Landroid/hardware/location/ContextHubManager$2;->val$service:Landroid/hardware/location/IContextHubService;

    new-instance v1, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "hubEndpointInfoList":[Landroid/hardware/contexthub/HubEndpointInfo;
    .local v3, "hubEndpointInfoList":[Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/location/ContextHubManager$2;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Landroid/hardware/location/IContextHubService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 801
    return-void
.end method

.method public blacklist onEndpointsStopped([Landroid/hardware/contexthub/HubEndpointInfo;I)V
    .registers 11
    .param p1, "hubEndpointInfoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "reason"    # I

    .line 805
    array-length v0, p1

    if-nez v0, :cond_10

    .line 806
    const-string v0, "ContextHubManager"

    const-string v1, "onEndpointsStopped: received empty discovery list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$2;->val$service:Landroid/hardware/location/IContextHubService;

    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager$2;->invokeCallbackFinished(Landroid/hardware/location/IContextHubService;)V

    .line 808
    return-void

    .line 810
    :cond_10
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/location/ContextHubManager$2;->val$serviceDescriptor:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/location/ContextHubManager$2;->val$callback:Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

    iget-object v7, p0, Landroid/hardware/location/ContextHubManager$2;->val$service:Landroid/hardware/location/IContextHubService;

    new-instance v1, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    .end local p1    # "hubEndpointInfoList":[Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p2    # "reason":I
    .local v3, "hubEndpointInfoList":[Landroid/hardware/contexthub/HubEndpointInfo;
    .local v6, "reason":I
    invoke-direct/range {v1 .. v7}, Landroid/hardware/location/ContextHubManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/location/ContextHubManager$2;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;ILandroid/hardware/location/IContextHubService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 822
    return-void
.end method
