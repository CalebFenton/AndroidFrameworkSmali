.class Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;
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
    name = "ProxyMediaRouter2Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;
    }
.end annotation


# instance fields
.field private final blacklist mClient:Landroid/media/IMediaRouter2Manager$Stub;

.field private final blacklist mClientPackageName:Ljava/lang/String;

.field private final blacklist mClientUser:Landroid/os/UserHandle;

.field private final blacklist mInstanceInvalidatedCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2Manager$TransferRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method public static synthetic blacklist $r8$lambda$vvAWVdtRyR4iRKnRpoJQkMnb_ZA(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDeviceSuggestionsChangeHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onDeviceSuggestionsChangeHandler(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDiscoveryPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onDiscoveryPreferenceChangedOnHandler(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInvalidateInstanceOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onInvalidateInstanceOnHandler()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRequestFailedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onRequestFailedOnHandler(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRouteListingPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onRouteListingPreferenceChangedOnHandler(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSessionCreatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;ILandroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onSessionCreatedOnHandler(ILandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSessionReleasedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onSessionReleasedOnHandler(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSessionUpdatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onSessionUpdatedOnHandler(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "clientPackageName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2705
    iput-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2689
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2691
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2696
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mInstanceInvalidatedCallbackRecords:Ljava/util/List;

    .line 2706
    iput-object p4, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    .line 2707
    iput-object p3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 2708
    new-instance v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;-><init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/MediaRouter2-IA;)V

    iput-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 2709
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-static {p1, v0}, Landroid/media/MediaRouter2;->-$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 2710
    return-void
.end method

.method private blacklist createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I
    .registers 9
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 3254
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3255
    .local v0, "requestId":I
    new-instance v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    invoke-direct {v1, v0, p1, p2}, Landroid/media/MediaRouter2Manager$TransferRequest;-><init>(ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 3257
    .local v1, "transferRequest":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3259
    new-instance v2, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda1;-><init>()V

    .line 3260
    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3262
    .local v2, "timeoutMessage":Landroid/os/Message;
    iget-object v3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3263
    return v0
.end method

.method private blacklist getRoutingSessions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 3282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3283
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3287
    :try_start_c
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_3a

    .line 3290
    .local v1, "remoteSessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    nop

    .line 3292
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 3293
    .local v3, "sessionInfo":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 3294
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3296
    .end local v3    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :cond_38
    goto :goto_1d

    .line 3297
    :cond_39
    return-object v0

    .line 3288
    .end local v1    # "remoteSessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :catch_3a
    move-exception v1

    .line 3289
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getSystemSessionInfoImpl(Landroid/media/IMediaRouterService;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 5
    .param p0, "service"    # Landroid/media/IMediaRouterService;
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "clientPackageName"    # Ljava/lang/String;

    .line 3228
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/media/IMediaRouterService;->getSystemSessionInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 3229
    :catch_5
    move-exception v0

    .line 3230
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 3267
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3268
    .local v0, "removed":Z
    if-eqz v0, :cond_f

    .line 3269
    iget-object v1, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object v2, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {p0, v1, v2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 3271
    :cond_f
    return-void
.end method

.method private blacklist isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z
    .registers 4
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 3357
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3358
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 3357
    :goto_18
    return v0
.end method

.method static synthetic blacklist lambda$stopScan$0(I)I
    .registers 3
    .param p0, "count"    # I

    .line 2763
    if-eqz p0, :cond_5

    .line 2767
    add-int/lit8 p0, p0, -0x1

    return p0

    .line 2764
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No active scan requests to unregister."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist onDeviceSuggestionsChangeHandler(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "suggestingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 3474
    .local p3, "suggestedDeviceInfo":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3475
    return-void

    .line 3477
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3478
    :try_start_12
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSuggestedDeviceInfo(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v1

    .line 3479
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3478
    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3480
    monitor-exit v0

    return-void

    .line 3482
    :cond_24
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSuggestedDeviceInfo(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_34

    .line 3484
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p2, p3}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyDeviceSuggestionsUpdated(Landroid/media/MediaRouter2;Ljava/lang/String;Ljava/util/List;)V

    .line 3485
    return-void

    .line 3483
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private blacklist onDiscoveryPreferenceChangedOnHandler(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 3435
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3436
    return-void

    .line 3439
    :cond_b
    if-nez p2, :cond_e

    .line 3440
    return-void

    .line 3442
    :cond_e
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3443
    :try_start_15
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3444
    monitor-exit v0

    return-void

    .line 3446
    :cond_23
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p2}, Landroid/media/MediaRouter2;->-$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 3447
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-virtual {v1}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 3448
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_38

    .line 3449
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyPreferredFeaturesChanged(Landroid/media/MediaRouter2;Ljava/util/List;)V

    .line 3450
    return-void

    .line 3448
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private blacklist onInvalidateInstanceOnHandler()V
    .registers 6

    .line 3505
    const-string v0, "MR2"

    const-string v1, "MEDIA_ROUTING_CONTROL has been revoked for this package. Invalidating instance."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsSystemRouterLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3512
    :try_start_c
    new-instance v1, Landroid/media/MediaRouter2$PackageNameUserHandlePair;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaRouter2$PackageNameUserHandlePair;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/MediaRouter2-IA;)V

    .line 3514
    .local v1, "key":Landroid/media/MediaRouter2$PackageNameUserHandlePair;
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsAppToProxyRouterMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    nop

    .end local v1    # "key":Landroid/media/MediaRouter2$PackageNameUserHandlePair;
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_64

    .line 3517
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3519
    :try_start_26
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mInstanceInvalidatedCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;

    .line 3520
    .local v2, "record":Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;
    invoke-static {v2}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->-$$Nest$fgetexecutor(Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v2}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->-$$Nest$fgetrunnable(Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3521
    .end local v2    # "record":Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;
    goto :goto_2c

    .line 3522
    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_61

    .line 3523
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3524
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmControllerCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3525
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmTransferCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3526
    return-void

    .line 3522
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0

    .line 3515
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private blacklist onRequestFailedOnHandler(II)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "reason"    # I

    .line 3488
    const/4 v0, 0x0

    .line 3489
    .local v0, "matchingRequest":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 3490
    .local v2, "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget v3, v2, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v3, p1, :cond_19

    .line 3491
    move-object v0, v2

    .line 3492
    goto :goto_1a

    .line 3494
    .end local v2    # "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    :cond_19
    goto :goto_7

    .line 3496
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_29

    .line 3497
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3498
    iget-object v1, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {p0, v1, v2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_2e

    .line 3500
    :cond_29
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyRequestFailed(Landroid/media/MediaRouter2;I)V

    .line 3502
    :goto_2e
    return-void
.end method

.method private blacklist onRouteListingPreferenceChangedOnHandler(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "routeListingPreference"    # Landroid/media/RouteListingPreference;

    .line 3455
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3456
    return-void

    .line 3459
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3460
    :try_start_12
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3461
    monitor-exit v0

    return-void

    .line 3464
    :cond_20
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p2}, Landroid/media/MediaRouter2;->-$$Nest$fputmRouteListingPreference(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 3465
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2c

    .line 3467
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyRouteListingPreferenceUpdated(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 3468
    return-void

    .line 3465
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private blacklist onSessionCreatedOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3363
    const/4 v0, 0x0

    .line 3364
    .local v0, "matchingRequest":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 3365
    .local v2, "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget v3, v2, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v3, p1, :cond_19

    .line 3366
    move-object v0, v2

    .line 3367
    goto :goto_1a

    .line 3369
    .end local v2    # "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    :cond_19
    goto :goto_7

    .line 3371
    :cond_1a
    :goto_1a
    if-nez v0, :cond_1d

    .line 3372
    return-void

    .line 3375
    :cond_1d
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3377
    iget-object v1, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    .line 3379
    .local v1, "requestedRoute":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ")"

    const-string v4, "MR2"

    if-nez v2, :cond_68

    .line 3380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The session does not contain the requested route. (requestedRouteId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3384
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", actualRoutes="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3386
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3380
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-direct {p0, v2, v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_ae

    .line 3389
    :cond_68
    nop

    .line 3390
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    .line 3389
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 3391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3395
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", actual providerId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3397
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3391
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-direct {p0, v2, v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_ae

    .line 3401
    :cond_a9
    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-direct {p0, v2, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    .line 3403
    :goto_ae
    return-void
.end method

.method private blacklist onSessionReleasedOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 3421
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3422
    const-string v0, "MR2"

    const-string v1, "onSessionReleasedOnHandler: Called on system session. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    return-void

    .line 3426
    :cond_e
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3427
    return-void

    .line 3430
    :cond_1d
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    const/4 v3, 0x3

    invoke-direct {v1, v2, p1, v3}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;I)V

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    .line 3431
    return-void
.end method

.method private blacklist onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 3337
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3338
    return-void

    .line 3342
    :cond_7
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3343
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3344
    invoke-static {p1, v1}, Landroid/media/MediaRouter2;->-$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 3343
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 3345
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .local v0, "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_2a

    .line 3347
    .end local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_23
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 3349
    .restart local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :goto_2a
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, v0}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyControllerUpdated(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    .line 3350
    return-void
.end method

.method private blacklist onSessionUpdatedOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "updatedSession"    # Landroid/media/RoutingSessionInfo;

    .line 3406
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 3407
    .local v1, "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3408
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 3409
    goto :goto_6

    .line 3412
    :cond_23
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 3413
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3414
    goto :goto_3a

    .line 3416
    .end local v1    # "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    .end local v2    # "sessionId":Ljava/lang/String;
    :cond_39
    goto :goto_6

    .line 3417
    :cond_3a
    :goto_3a
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onSessionUpdated(Landroid/media/RoutingSessionInfo;)V

    .line 3418
    return-void
.end method

.method private blacklist onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 3330
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3331
    return-void

    .line 3333
    :cond_7
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 3334
    return-void
.end method

.method private blacklist onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 3302
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3303
    invoke-direct {p0, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_59

    .line 3308
    :cond_d
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3309
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3310
    invoke-static {p1, v1}, Landroid/media/MediaRouter2;->-$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 3309
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 3311
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .local v0, "oldController":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_30

    .line 3313
    .end local v0    # "oldController":Landroid/media/MediaRouter2$RoutingController;
    :cond_29
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 3317
    .restart local v0    # "oldController":Landroid/media/MediaRouter2$RoutingController;
    :goto_30
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3318
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3319
    invoke-static {p2, v2}, Landroid/media/MediaRouter2;->-$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 3318
    invoke-virtual {v1, v2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 3320
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    .local v1, "newController":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_53

    .line 3322
    .end local v1    # "newController":Landroid/media/MediaRouter2$RoutingController;
    :cond_4c
    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v1, v2, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 3325
    .restart local v1    # "newController":Landroid/media/MediaRouter2$RoutingController;
    :goto_53
    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2, v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransfer(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    .line 3326
    return-void

    .line 3304
    .end local v0    # "oldController":Landroid/media/MediaRouter2$RoutingController;
    .end local v1    # "newController":Landroid/media/MediaRouter2$RoutingController;
    :cond_59
    :goto_59
    return-void
.end method

.method private blacklist releaseSession(Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3241
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3244
    :try_start_5
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3245
    .local v0, "requestId":I
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3246
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 3245
    invoke-interface {v1, v2, v0, v3}, Landroid/media/IMediaRouterService;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1e} :catch_20

    .line 3249
    .end local v0    # "requestId":I
    nop

    .line 3250
    return-void

    .line 3247
    :catch_20
    move-exception v0

    .line 3248
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 6
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 3017
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3018
    const-string v0, "MR2"

    const-string v1, "requestCreateSession: Can\'t create a session without package name."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 3020
    return-void

    .line 3023
    :cond_15
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v0

    .line 3026
    .local v0, "requestId":I
    :try_start_19
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/media/IMediaRouterService;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_26

    .line 3030
    nop

    .line 3031
    return-void

    .line 3028
    :catch_26
    move-exception v1

    .line 3029
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 12
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "transferInitiatorUserHandle"    # Landroid/os/UserHandle;
    .param p4, "transferInitiatorPackageName"    # Ljava/lang/String;

    .line 2986
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v2

    .line 2989
    .local v2, "requestId":I
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 2992
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_1b

    .line 2989
    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "route":Landroid/media/MediaRoute2Info;
    .end local p3    # "transferInitiatorUserHandle":Landroid/os/UserHandle;
    .end local p4    # "transferInitiatorPackageName":Ljava/lang/String;
    .local v4, "route":Landroid/media/MediaRoute2Info;
    .local v5, "transferInitiatorUserHandle":Landroid/os/UserHandle;
    .local v6, "transferInitiatorPackageName":Ljava/lang/String;
    :try_start_13
    invoke-interface/range {v0 .. v6}, Landroid/media/IMediaRouterService;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_18

    .line 2998
    nop

    .line 2999
    return-void

    .line 2996
    :catch_18
    move-exception v0

    move-object p2, v0

    goto :goto_20

    .end local v4    # "route":Landroid/media/MediaRoute2Info;
    .end local v5    # "transferInitiatorUserHandle":Landroid/os/UserHandle;
    .end local v6    # "transferInitiatorPackageName":Ljava/lang/String;
    .restart local p2    # "route":Landroid/media/MediaRoute2Info;
    .restart local p3    # "transferInitiatorUserHandle":Landroid/os/UserHandle;
    .restart local p4    # "transferInitiatorPackageName":Ljava/lang/String;
    :catch_1b
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p2, v0

    .line 2997
    .end local p3    # "transferInitiatorUserHandle":Landroid/os/UserHandle;
    .end local p4    # "transferInitiatorPackageName":Ljava/lang/String;
    .restart local v4    # "route":Landroid/media/MediaRoute2Info;
    .restart local v5    # "transferInitiatorUserHandle":Landroid/os/UserHandle;
    .restart local v6    # "transferInitiatorPackageName":Ljava/lang/String;
    .local p2, "ex":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method


# virtual methods
.method public blacklist createRouteCallbackRecord(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)Landroid/media/MediaRouter2$RouteCallbackRecord;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "routeCallback"    # Landroid/media/MediaRouter2$RouteCallback;
    .param p3, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 2811
    new-instance v0, Landroid/media/MediaRouter2$RouteCallbackRecord;

    sget-object v1, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-direct {v0, p1, p2, v1}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    return-object v0
.end method

.method public blacklist deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3177
    const-string v0, "sessionInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3178
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3180
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2"

    if-nez v0, :cond_31

    .line 3181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring deselecting a route that is not selected. route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    return-void

    .line 3185
    :cond_31
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 3186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring deselecting a non-deselectable route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    return-void

    .line 3191
    :cond_56
    :try_start_56
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3192
    .local v0, "requestId":I
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3193
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 3192
    invoke-interface {v1, v2, v0, v3, p1}, Landroid/media/IMediaRouterService;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_6f} :catch_71

    .line 3196
    .end local v0    # "requestId":I
    nop

    .line 3197
    return-void

    .line 3194
    :catch_71
    move-exception v0

    .line 3195
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 4
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

    .line 3116
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getAllRoutes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 2872
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2873
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2874
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 2783
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getControllers()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation

    .line 3035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3039
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter2$RoutingController;>;"
    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getRoutingSessions()Ljava/util/List;

    move-result-object v1

    .line 3040
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 3042
    .local v3, "session":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3043
    iget-object v4, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v4}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 3044
    iget-object v4, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v4}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v4

    .local v4, "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_36

    .line 3046
    .end local v4    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_2f
    new-instance v4, Landroid/media/MediaRouter2$RoutingController;

    iget-object v5, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v4, v5, v3}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 3048
    .restart local v4    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :goto_36
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3049
    .end local v3    # "session":Landroid/media/RoutingSessionInfo;
    .end local v4    # "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_d

    .line 3050
    :cond_3a
    return-object v0
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

    .line 2851
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2853
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;)Ljava/util/Map;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_17
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v0

    return-object v1

    .line 2857
    :catchall_15
    move-exception v1

    goto :goto_1d

    .line 2854
    :catch_17
    move-exception v1

    .line 2855
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;
    throw v2

    .line 2857
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_15

    throw v1
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 2792
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 4

    .line 2797
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;

    move-result-object v1

    .line 2798
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 2797
    invoke-static {v0, v1, v2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getSystemSessionInfoImpl(Landroid/media/IMediaRouterService;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerInstanceInvalidatedCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "onInstanceInvalidatedListener"    # Ljava/lang/Runnable;

    .line 2726
    if-eqz p1, :cond_24

    if-nez p2, :cond_5

    goto :goto_24

    .line 2730
    :cond_5
    new-instance v0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Landroid/media/MediaRouter2-IA;)V

    .line 2732
    .local v0, "record":Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2733
    :try_start_12
    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mInstanceInvalidatedCallbackRecords:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2734
    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mInstanceInvalidatedCallbackRecords:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2736
    :cond_1f
    monitor-exit v1

    .line 2737
    return-void

    .line 2736
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw v2

    .line 2727
    .end local v0    # "record":Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;
    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist registerProxyRouter()V
    .registers 6

    .line 2714
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;

    move-result-object v2

    .line 2716
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    .line 2714
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/IMediaRouterService;->registerProxyRouter(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 2721
    nop

    .line 2722
    return-void

    .line 2719
    :catch_1f
    move-exception v0

    .line 2720
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerRouteCallback()V
    .registers 1

    .line 2823
    return-void
.end method

.method public blacklist releaseSession(ZZLandroid/media/MediaRouter2$RoutingController;)V
    .registers 5
    .param p1, "shouldReleaseSession"    # Z
    .param p2, "shouldNotifyStop"    # Z
    .param p3, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 3204
    invoke-virtual {p3}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 3205
    return-void
.end method

.method public blacklist selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3142
    const-string v0, "sessionInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3143
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3145
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2"

    if-eqz v0, :cond_31

    .line 3146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring selecting a route that is already selected. route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    return-void

    .line 3150
    :cond_31
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 3151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring selecting a non-selectable route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    return-void

    .line 3156
    :cond_56
    :try_start_56
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3157
    .local v0, "requestId":I
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3158
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 3157
    invoke-interface {v1, v2, v0, v3, p1}, Landroid/media/IMediaRouterService;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_6f} :catch_71

    .line 3161
    .end local v0    # "requestId":I
    nop

    .line 3162
    return-void

    .line 3159
    :catch_71
    move-exception v0

    .line 3160
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

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

    .line 2839
    .local p1, "suggestedDeviceInfo":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2841
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2, p1}, Landroid/media/IMediaRouterService;->setDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;Ljava/util/List;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_15
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    .line 2845
    goto :goto_19

    .line 2846
    :catchall_13
    move-exception v1

    goto :goto_1b

    .line 2843
    :catch_15
    move-exception v1

    .line 2844
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_16
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2846
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_19
    monitor-exit v0

    .line 2847
    return-void

    .line 2846
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_13

    throw v1
.end method

.method public blacklist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    .line 2881
    return-void
.end method

.method public blacklist setRouteListingPreference(Landroid/media/RouteListingPreference;)V
    .registers 4
    .param p1, "preference"    # Landroid/media/RouteListingPreference;

    .line 2833
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RouteListingPreference cannot be set by a proxy MediaRouter2 instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "volume"    # I

    .line 3063
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2"

    if-nez v0, :cond_e

    .line 3064
    const-string v0, "setRouteVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    return-void

    .line 3067
    :cond_e
    if-ltz p2, :cond_34

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v0

    if-le p2, v0, :cond_17

    goto :goto_34

    .line 3073
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3074
    .local v0, "requestId":I
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/media/IMediaRouterService;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2c} :catch_2e

    .line 3077
    .end local v0    # "requestId":I
    nop

    .line 3078
    return-void

    .line 3075
    :catch_2e
    move-exception v0

    .line 3076
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3068
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_34
    :goto_34
    const-string v0, "setRouteVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    return-void
.end method

.method public blacklist setSessionVolume(ILandroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "volume"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3088
    const-string v0, "sessionInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3090
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2"

    if-nez v0, :cond_13

    .line 3091
    const-string v0, "setSessionVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    return-void

    .line 3094
    :cond_13
    if-ltz p1, :cond_3d

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v0

    if-le p1, v0, :cond_1c

    goto :goto_3d

    .line 3100
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3101
    .local v0, "requestId":I
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3102
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 3101
    invoke-interface {v1, v2, v0, v3, p1}, Landroid/media/IMediaRouterService;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_35} :catch_37

    .line 3105
    .end local v0    # "requestId":I
    nop

    .line 3106
    return-void

    .line 3103
    :catch_37
    move-exception v0

    .line 3104
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3095
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    const-string v0, "setSessionVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    return-void
.end method

.method public blacklist showSystemOutputSwitcher()Z
    .registers 3

    .line 2863
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->showMediaOutputSwitcherWithProxyRouter(Landroid/media/IMediaRouter2Manager;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 2864
    :catch_d
    move-exception v0

    .line 2865
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startScan()V
    .registers 4

    .line 2746
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2747
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_23

    .line 2749
    :try_start_11
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v2, v1}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1d

    .line 2753
    goto :goto_23

    .line 2751
    :catch_1d
    move-exception v0

    .line 2752
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2756
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist stop()V
    .registers 3

    .line 2905
    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getRoutingSessions()Ljava/util/List;

    move-result-object v0

    .line 2906
    .local v0, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 2907
    .local v1, "sessionToRelease":Landroid/media/RoutingSessionInfo;
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 2908
    return-void
.end method

.method public blacklist stopScan()V
    .registers 4

    .line 2760
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2761
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->updateAndGet(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    if-nez v0, :cond_28

    .line 2772
    :try_start_16
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v2, v1}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    .line 2776
    goto :goto_28

    .line 2774
    :catch_22
    move-exception v0

    .line 2775
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2779
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    return-void
.end method

.method public blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 2930
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2931
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2933
    const-string v0, "MR2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring routing session. session= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2939
    :try_start_33
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_47

    move v1, v2

    goto :goto_48

    :cond_47
    move v1, v3

    .line 2940
    .local v1, "isUnknownRoute":Z
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_aa

    .line 2942
    if-eqz v1, :cond_6b

    .line 2943
    const-string v0, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transfer: Ignoring an unknown route id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 2945
    return-void

    .line 2952
    :cond_6b
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2953
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2954
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2955
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    goto :goto_8d

    :cond_8c
    move v2, v3

    .line 2956
    .local v2, "isSystemRouteReselection":Z
    :goto_8d
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    if-eqz v2, :cond_9e

    goto :goto_a2

    .line 2960
    :cond_9e
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_a9

    .line 2958
    :cond_a2
    :goto_a2
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    iget-object v3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2962
    :goto_a9
    return-void

    .line 2940
    .end local v1    # "isUnknownRoute":Z
    .end local v2    # "isSystemRouteReselection":Z
    :catchall_aa
    move-exception v1

    :try_start_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method public blacklist transferTo(Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 2896
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2898
    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getRoutingSessions()Ljava/util/List;

    move-result-object v0

    .line 2899
    .local v0, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 2900
    .local v1, "targetSession":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p0, v1, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 2901
    return-void
.end method

.method public blacklist unregisterRouteCallback()V
    .registers 1

    .line 2829
    return-void
.end method

.method public blacklist updateScanningState(I)V
    .registers 4
    .param p1, "scanningState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2741
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V

    .line 2742
    return-void
.end method

.method public blacklist wasTransferredBySelf(Landroid/media/RoutingSessionInfo;)Z
    .registers 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3209
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 3210
    .local v0, "transferInitiatorUserHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3211
    .local v1, "transferInitiatorPackageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3212
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 3211
    :goto_1b
    return v2
.end method
