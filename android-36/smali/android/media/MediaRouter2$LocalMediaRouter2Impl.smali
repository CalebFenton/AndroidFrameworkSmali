.class Landroid/media/MediaRouter2$LocalMediaRouter2Impl;
.super Ljava/lang/Object;
.source "MediaRouter2.java"

# interfaces
.implements Landroid/media/MediaRouter2$MediaRouter2Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalMediaRouter2Impl"
.end annotation


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method public static synthetic blacklist $r8$lambda$aFJoGEHxImSXiMb3VG6bbcwxYBs(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRouter2;Ljava/lang/String;)V
    .registers 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3630
    iput-object p1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3631
    iput-object p2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    .line 3632
    return-void
.end method

.method private blacklist registerRouterStubIfNeededLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3970
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 3971
    new-instance v0, Landroid/media/MediaRouter2$MediaRouter2Stub;

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter2$MediaRouter2Stub;-><init>(Landroid/media/MediaRouter2;)V

    .line 3972
    .local v0, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/media/IMediaRouterService;->registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 3973
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, v0}, Landroid/media/MediaRouter2;->-$$Nest$fputmStub(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$MediaRouter2Stub;)V

    .line 3975
    .end local v0    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :cond_1f
    return-void
.end method

.method private blacklist unregisterRouterStubIfNeededLocked(Z)V
    .registers 4
    .param p1, "isScanningStopping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3980
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 3981
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    .line 3982
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmScanRequestsMap(Landroid/media/MediaRouter2;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3983
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_43

    .line 3984
    :cond_2e
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->unregisterRouter2(Landroid/media/IMediaRouter2;)V

    .line 3985
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$fputmStub(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$MediaRouter2Stub;)V

    .line 3987
    :cond_43
    return-void
.end method


# virtual methods
.method public blacklist createRouteCallbackRecord(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)Landroid/media/MediaRouter2$RouteCallbackRecord;
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "routeCallback"    # Landroid/media/MediaRouter2$RouteCallback;
    .param p3, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 3699
    new-instance v0, Landroid/media/MediaRouter2$RouteCallbackRecord;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    return-object v0
.end method

.method public blacklist deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3918
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3919
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    .line 3920
    .local v1, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_27

    .line 3921
    if-eqz v1, :cond_26

    .line 3923
    :try_start_10
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroid/media/IMediaRouterService;->deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 3926
    goto :goto_26

    .line 3924
    :catch_1e
    move-exception v0

    .line 3925
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2"

    const-string v3, "Unable to deselect route from session."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3928
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    return-void

    .line 3920
    .end local v1    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 8
    .param p2, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RouteDiscoveryPreference;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 3883
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3884
    .local v0, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 3885
    .local v2, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 3886
    goto :goto_9

    .line 3888
    :cond_20
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3889
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 3891
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v3

    .line 3892
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3893
    goto :goto_9

    .line 3895
    :cond_3f
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3896
    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_9

    .line 3897
    :cond_43
    return-object v0
.end method

.method public blacklist getAllRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 3799
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 3674
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getControllers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation

    .line 3847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3849
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter2$RoutingController;>;"
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3850
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3851
    :try_start_16
    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3852
    monitor-exit v1

    .line 3853
    return-object v0

    .line 3852
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public blacklist getDeviceSuggestions()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation

    .line 3772
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3774
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;)Ljava/util/Map;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_1b
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    :try_start_17
    monitor-exit v0

    return-object v1

    .line 3778
    :catchall_19
    move-exception v1

    goto :goto_21

    .line 3775
    :catch_1b
    move-exception v1

    .line 3776
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/media/MediaRouter2$LocalMediaRouter2Impl;
    throw v2

    .line 3778
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/MediaRouter2$LocalMediaRouter2Impl;
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_19

    throw v1
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 3679
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 4

    .line 3684
    const/4 v0, 0x0

    .line 3686
    .local v0, "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    .line 3687
    invoke-interface {v1}, Landroid/media/IMediaRouterService;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3686
    invoke-static {v1, v2}, Landroid/media/MediaRouter2;->-$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1b

    move-object v0, v1

    .line 3690
    goto :goto_1f

    .line 3688
    :catch_1b
    move-exception v1

    .line 3689
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3691
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-object v0
.end method

.method public blacklist registerRouteCallback()V
    .registers 5

    .line 3704
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3706
    :try_start_7
    invoke-direct {p0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->registerRouterStubIfNeededLocked()V

    .line 3708
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$mupdateDiscoveryPreferenceIfNeededLocked(Landroid/media/MediaRouter2;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3709
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_27} :catch_2a
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    .line 3714
    :cond_27
    goto :goto_2e

    .line 3715
    :catchall_28
    move-exception v1

    goto :goto_30

    .line 3712
    :catch_2a
    move-exception v1

    .line 3713
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3715
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2e
    monitor-exit v0

    .line 3716
    return-void

    .line 3715
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_28

    throw v1
.end method

.method public blacklist releaseSession(ZZLandroid/media/MediaRouter2$RoutingController;)V
    .registers 8
    .param p1, "shouldReleaseSession"    # Z
    .param p2, "shouldNotifyStop"    # Z
    .param p3, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 3935
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3936
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p3}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3938
    if-eqz p1, :cond_36

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_57

    if-eqz v1, :cond_36

    .line 3940
    :try_start_1e
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    invoke-virtual {p3}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IMediaRouterService;->releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_31} :catch_32
    .catchall {:try_start_1e .. :try_end_31} :catchall_57

    .line 3943
    goto :goto_36

    .line 3941
    :catch_32
    move-exception v1

    .line 3942
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3946
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_36
    :goto_36
    if-eqz p2, :cond_4c

    .line 3947
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$LocalMediaRouter2Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    .line 3948
    invoke-static {v2, v3, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3947
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_57

    .line 3952
    :cond_4c
    const/4 v1, 0x0

    :try_start_4d
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->unregisterRouterStubIfNeededLocked(Z)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_57

    .line 3955
    goto :goto_55

    .line 3953
    :catch_51
    move-exception v1

    .line 3954
    .restart local v1    # "ex":Landroid/os/RemoteException;
    :try_start_52
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3957
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_55
    monitor-exit v0

    .line 3958
    return-void

    .line 3957
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public blacklist selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3903
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3904
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    .line 3905
    .local v1, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_27

    .line 3906
    if-eqz v1, :cond_26

    .line 3908
    :try_start_10
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroid/media/IMediaRouterService;->selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 3911
    goto :goto_26

    .line 3909
    :catch_1e
    move-exception v0

    .line 3910
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2"

    const-string v3, "Unable to select route for session."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3913
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    return-void

    .line 3905
    .end local v1    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist setDeviceSuggestions(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 3759
    .local p1, "deviceSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3761
    :try_start_7
    invoke-direct {p0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->registerRouterStubIfNeededLocked()V

    .line 3762
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/media/IMediaRouterService;->setDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;Ljava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1c
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    .line 3765
    goto :goto_20

    .line 3766
    :catchall_1a
    move-exception v1

    goto :goto_22

    .line 3763
    :catch_1c
    move-exception v1

    .line 3764
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1d
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3766
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_20
    monitor-exit v0

    .line 3767
    return-void

    .line 3766
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_1a

    throw v1
.end method

.method public blacklist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    .line 3804
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2;->-$$Nest$fputmOnGetControllerHintsListener(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V

    .line 3805
    return-void
.end method

.method public blacklist setRouteListingPreference(Landroid/media/RouteListingPreference;)V
    .registers 6
    .param p1, "preference"    # Landroid/media/RouteListingPreference;

    .line 3741
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3742
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3744
    monitor-exit v0

    return-void

    .line 3746
    :cond_15
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p1}, Landroid/media/MediaRouter2;->-$$Nest$fputmRouteListingPreference(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_3e

    .line 3748
    :try_start_1a
    invoke-direct {p0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->registerRouterStubIfNeededLocked()V

    .line 3749
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IMediaRouterService;->setRouteListingPreference(Landroid/media/IMediaRouter2;Landroid/media/RouteListingPreference;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_33
    .catchall {:try_start_1a .. :try_end_32} :catchall_3e

    .line 3752
    goto :goto_37

    .line 3750
    :catch_33
    move-exception v1

    .line 3751
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_34
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3753
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_37
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyRouteListingPreferenceUpdated(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 3754
    monitor-exit v0

    .line 3755
    return-void

    .line 3754
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 5
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "volume"    # I

    .line 3859
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setRouteVolume is only supported by proxy routers. See javadoc."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSessionVolume(ILandroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "volume"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3867
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3868
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    .line 3869
    .local v1, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_27

    .line 3870
    if-eqz v1, :cond_26

    .line 3872
    :try_start_10
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    .line 3873
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3872
    invoke-interface {v0, v1, v2, p1}, Landroid/media/IMediaRouterService;->setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 3876
    goto :goto_26

    .line 3874
    :catch_1e
    move-exception v0

    .line 3875
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2"

    const-string v3, "setVolume: Failed to deliver request."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3878
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    return-void

    .line 3869
    .end local v1    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist showSystemOutputSwitcher()Z
    .registers 4

    .line 3783
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3785
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->showMediaOutputSwitcherWithRouter2(Ljava/lang/String;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_17
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v0

    return v1

    .line 3789
    :catchall_15
    move-exception v1

    goto :goto_1f

    .line 3786
    :catch_17
    move-exception v1

    .line 3787
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3789
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    monitor-exit v0

    .line 3790
    const/4 v0, 0x0

    return v0

    .line 3789
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_15

    throw v1
.end method

.method public blacklist startScan()V
    .registers 1

    .line 3643
    return-void
.end method

.method public blacklist stop()V
    .registers 2

    .line 3829
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mgetCurrentController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->release()V

    .line 3830
    return-void
.end method

.method public blacklist stopScan()V
    .registers 1

    .line 3654
    return-void
.end method

.method public blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 3843
    return-void
.end method

.method public blacklist transferTo(Landroid/media/MediaRoute2Info;)V
    .registers 7
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 3809
    const-string v0, "MR2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring to route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3814
    :try_start_1f
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 3815
    .local v1, "routeFound":Z
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_4a

    .line 3816
    if-nez v1, :cond_36

    .line 3817
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 3818
    return-void

    .line 3821
    :cond_36
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mgetCurrentController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .line 3822
    .local v0, "controller":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->tryTransferWithinProvider(Landroid/media/MediaRoute2Info;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 3823
    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/media/MediaRouter2;->requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;J)V

    .line 3825
    :cond_49
    return-void

    .line 3815
    .end local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    .end local v1    # "routeFound":Z
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public blacklist unregisterRouteCallback()V
    .registers 5

    .line 3720
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3721
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    if-nez v1, :cond_11

    .line 3722
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_3d

    return-void

    .line 3726
    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$mupdateDiscoveryPreferenceIfNeededLocked(Landroid/media/MediaRouter2;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3727
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 3731
    :cond_2e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->unregisterRouterStubIfNeededLocked(Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_32} :catch_33
    .catchall {:try_start_11 .. :try_end_32} :catchall_3d

    .line 3735
    goto :goto_3b

    .line 3733
    :catch_33
    move-exception v1

    .line 3734
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "MR2"

    const-string v3, "unregisterRouteCallback: Unable to set discovery request."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3736
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_3b
    monitor-exit v0

    .line 3737
    return-void

    .line 3736
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public blacklist updateScanningState(I)V
    .registers 4
    .param p1, "scanningState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3659
    if-eqz p1, :cond_5

    .line 3660
    invoke-direct {p0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->registerRouterStubIfNeededLocked()V

    .line 3662
    :cond_5
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->updateScanningStateWithRouter2(Landroid/media/IMediaRouter2;I)V

    .line 3663
    if-nez p1, :cond_1a

    .line 3664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->unregisterRouterStubIfNeededLocked(Z)V

    .line 3666
    :cond_1a
    return-void
.end method

.method public blacklist wasTransferredBySelf(Landroid/media/RoutingSessionInfo;)Z
    .registers 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3962
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 3963
    .local v0, "transferInitiatorUserHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3964
    .local v1, "transferInitiatorPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;

    move-result-object v2

    .line 3965
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 3964
    :goto_25
    return v2
.end method
