.class public Landroid/hardware/contexthub/HubEndpoint;
.super Ljava/lang/Object;
.source "HubEndpoint.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubEndpoint$Builder;,
        Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;,
        Landroid/hardware/contexthub/HubEndpoint$Reason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_CLOSE_ENDPOINT_SESSION_REQUESTED:I = 0x4

.field public static final whitelist REASON_ENDPOINT_INVALID:I = 0x5

.field public static final whitelist REASON_ENDPOINT_STOPPED:I = 0x6

.field public static final whitelist REASON_FAILURE:I = 0x0

.field public static final whitelist REASON_OPEN_ENDPOINT_SESSION_REQUEST_REJECTED:I = 0x3

.field public static final whitelist REASON_PERMISSION_DENIED:I = 0x9

.field private static final blacklist TAG:Ljava/lang/String; = "HubEndpoint"


# instance fields
.field private final blacklist mActiveSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/contexthub/HubEndpointSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

.field private final blacklist mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

.field private final blacklist mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

.field private blacklist mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAssignedHubEndpointInfo(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceToken(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "pendingEndpointInfo"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "endpointLifecycleCallback"    # Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .param p3, "lifecycleCallbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "endpointMessageCallback"    # Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .param p5, "messageCallbackExecutor"    # Ljava/util/concurrent/Executor;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1;

    invoke-direct {v0, p0}, Landroid/hardware/contexthub/HubEndpoint$1;-><init>(Landroid/hardware/contexthub/HubEndpoint;)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    .line 346
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 347
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 348
    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 349
    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 350
    iput-object p5, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 351
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpoint-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/contexthub/HubEndpoint;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist closeSession(Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/contexthub/HubEndpointSession;

    .line 414
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_3
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 417
    monitor-exit v0

    return-void

    .line 419
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 420
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 421
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_46

    .line 424
    :try_start_1e
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/hardware/contexthub/IContextHubEndpoint;->closeSession(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    .line 428
    goto :goto_45

    .line 425
    :catch_29
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubEndpoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSession: failed to close session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_45
    return-void

    .line 421
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public whitelist getLifecycleCallback()Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .registers 2

    .line 459
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    return-object v0
.end method

.method public whitelist getMessageCallback()Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    return-object v0
.end method

.method public whitelist getServiceInfoCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 444
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getVersion()I

    move-result v0

    return v0
.end method

.method public blacklist openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 11
    .param p1, "destinationInfo"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;

    .line 391
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_28

    .line 393
    :try_start_3
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpoint;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 396
    .local v3, "sessionId":I
    new-instance v2, Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v6, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    .end local p1    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p2    # "serviceDescriptor":Ljava/lang/String;
    .local v5, "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .local v7, "serviceDescriptor":Ljava/lang/String;
    :try_start_11
    invoke-direct/range {v2 .. v7}, Landroid/hardware/contexthub/HubEndpointSession;-><init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 403
    .local v2, "newSession":Landroid/hardware/contexthub/HubEndpointSession;
    iget-object p1, v4, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    .end local v3    # "sessionId":I
    monitor-exit v1

    .line 409
    goto :goto_48

    .line 404
    .end local v2    # "newSession":Landroid/hardware/contexthub/HubEndpointSession;
    .end local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .restart local p1    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local p2    # "serviceDescriptor":Ljava/lang/String;
    :catchall_1b
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p2    # "serviceDescriptor":Ljava/lang/String;
    .restart local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local v7    # "serviceDescriptor":Ljava/lang/String;
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_25

    .end local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .end local p0    # "this":Landroid/hardware/contexthub/HubEndpoint;
    :try_start_21
    throw p1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_22} :catch_22

    .line 405
    .restart local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local v7    # "serviceDescriptor":Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/contexthub/HubEndpoint;
    :catch_22
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .line 404
    :catchall_25
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .line 405
    .end local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .restart local p1    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local p2    # "serviceDescriptor":Ljava/lang/String;
    :catch_28
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object p1, v0

    .line 407
    .end local p2    # "serviceDescriptor":Ljava/lang/String;
    .restart local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local v7    # "serviceDescriptor":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2d
    const-string p2, "HubEndpoint"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSession: failed to open session to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 410
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_48
    return-void
.end method

.method public blacklist register(Landroid/hardware/location/IContextHubService;)V
    .registers 6
    .param p1, "service"    # Landroid/hardware/location/IContextHubService;

    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 360
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 361
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/hardware/location/IContextHubService;->registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v0

    .line 362
    .local v0, "serviceToken":Landroid/hardware/contexthub/IContextHubEndpoint;
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 363
    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 367
    .end local v0    # "serviceToken":Landroid/hardware/contexthub/IContextHubEndpoint;
    goto :goto_28

    .line 364
    :catch_1d
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubEndpoint"

    const-string v2, "registerEndpoint: failed to register endpoint"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 368
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method blacklist sendMessage(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 7
    .param p1, "session"    # Landroid/hardware/contexthub/HubEndpointSession;
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p3, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 436
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Landroid/hardware/contexthub/IContextHubEndpoint;->sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 440
    goto :goto_26

    .line 437
    :catch_a
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage: failed to send message session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method public blacklist unregister()V
    .registers 5

    .line 373
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2f

    .line 375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 376
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointSession;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 378
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 379
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2c

    .line 380
    :try_start_26
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->unregister()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2f

    .line 384
    goto :goto_3a

    .line 379
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .end local p0    # "this":Landroid/hardware/contexthub/HubEndpoint;
    :try_start_2e
    throw v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 381
    .restart local p0    # "this":Landroid/hardware/contexthub/HubEndpoint;
    :catch_2f
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubEndpoint"

    const-string v2, "unregisterEndpoint: failed to unregister endpoint"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method
