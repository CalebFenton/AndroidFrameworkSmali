.class public Landroid/net/wifi/usd/UsdManager;
.super Ljava/lang/Object;
.source "UsdManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;,
        Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/IBooleanListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/IBooleanListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/net/wifi/usd/IUsdManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/wifi/usd/UsdManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const-class v0, Landroid/net/wifi/usd/UsdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/usd/UsdManager;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/wifi/usd/IUsdManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/usd/IUsdManager;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/net/wifi/usd/UsdManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist cancelPublish(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/usd/IUsdManager;->cancelPublish(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 113
    nop

    .line 114
    return-void

    .line 111
    :catch_7
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist cancelSubscribe(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/usd/IUsdManager;->cancelSubscribe(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 104
    nop

    .line 105
    return-void

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCharacteristics()Landroid/net/wifi/usd/Characteristics;
    .registers 3

    .line 134
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 138
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    invoke-interface {v0}, Landroid/net/wifi/usd/IUsdManager;->getCharacteristics()Landroid/net/wifi/usd/Characteristics;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 139
    :catch_d
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist publish(Landroid/net/wifi/usd/PublishConfig;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/PublishSessionCallback;)V
    .registers 6
    .param p1, "publishConfig"    # Landroid/net/wifi/usd/PublishConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "publishSessionCallback"    # Landroid/net/wifi/usd/PublishSessionCallback;

    .line 220
    const-string v0, "publishConfig must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    const-string v0, "publishSessionCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 227
    :try_start_15
    new-instance v0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;-><init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/PublishSessionCallback;Landroid/net/wifi/usd/UsdManager-IA;)V

    .line 229
    .local v0, "publishSessionCallbackProxy":Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;
    iget-object v1, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    invoke-interface {v1, p1, v0}, Landroid/net/wifi/usd/IUsdManager;->publish(Landroid/net/wifi/usd/PublishConfig;Landroid/net/wifi/usd/IPublishSessionCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_22

    .line 232
    .end local v0    # "publishSessionCallbackProxy":Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;
    nop

    .line 233
    return-void

    .line 230
    :catch_22
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist registerPublisherStatusListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 412
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 413
    .local v0, "callbackHash":I
    sget-object v1, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 415
    :try_start_17
    new-instance v2, Landroid/net/wifi/usd/UsdManager$3;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/usd/UsdManager$3;-><init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 422
    .local v2, "listener":Landroid/net/wifi/IBooleanListener;
    sget-object v3, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    iget-object v3, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    invoke-interface {v3, v2}, Landroid/net/wifi/usd/IUsdManager;->registerPublisherStatusListener(Landroid/net/wifi/IBooleanListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_26} :catch_2b
    .catchall {:try_start_17 .. :try_end_26} :catchall_29

    .line 427
    .end local v2    # "listener":Landroid/net/wifi/IBooleanListener;
    nop

    .line 428
    :try_start_27
    monitor-exit v1

    .line 429
    return-void

    .line 428
    :catchall_29
    move-exception v2

    goto :goto_36

    .line 424
    :catch_2b
    move-exception v2

    .line 425
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 426
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "callbackHash":I
    .end local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    throw v3

    .line 428
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "callbackHash":I
    .restart local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_29

    throw v2

    .line 410
    .end local v0    # "callbackHash":I
    :cond_38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist registerSubscriberStatusListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 347
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 348
    .local v0, "callbackHash":I
    sget-object v1, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 350
    :try_start_17
    new-instance v2, Landroid/net/wifi/usd/UsdManager$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/usd/UsdManager$2;-><init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 357
    .local v2, "listener":Landroid/net/wifi/IBooleanListener;
    sget-object v3, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    iget-object v3, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    invoke-interface {v3, v2}, Landroid/net/wifi/usd/IUsdManager;->registerSubscriberStatusListener(Landroid/net/wifi/IBooleanListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_26} :catch_2b
    .catchall {:try_start_17 .. :try_end_26} :catchall_29

    .line 362
    .end local v2    # "listener":Landroid/net/wifi/IBooleanListener;
    nop

    .line 363
    :try_start_27
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_29
    move-exception v2

    goto :goto_36

    .line 359
    :catch_2b
    move-exception v2

    .line 360
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 361
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "callbackHash":I
    .end local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    throw v3

    .line 363
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "callbackHash":I
    .restart local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_29

    throw v2

    .line 345
    .end local v0    # "callbackHash":I
    :cond_38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist sendMessage(II[BLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "peerId"    # I
    .param p3, "message"    # [B
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p5, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$1;

    invoke-direct {v1, p0, p4, p5}, Landroid/net/wifi/usd/UsdManager$1;-><init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/net/wifi/usd/IUsdManager;->sendMessage(II[BLandroid/net/wifi/IBooleanListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 95
    nop

    .line 96
    return-void

    .line 93
    :catch_c
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist subscribe(Landroid/net/wifi/usd/SubscribeConfig;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/SubscribeSessionCallback;)V
    .registers 6
    .param p1, "subscribeConfig"    # Landroid/net/wifi/usd/SubscribeConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "subscribeSessionCallback"    # Landroid/net/wifi/usd/SubscribeSessionCallback;

    .line 313
    const-string v0, "subscribeConfig must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    const-string v0, "subscribeSessionCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 321
    :try_start_15
    new-instance v0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;-><init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/SubscribeSessionCallback;Landroid/net/wifi/usd/UsdManager-IA;)V

    .line 323
    .local v0, "subscribeSessionCallbackProxy":Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;
    iget-object v1, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    invoke-interface {v1, p1, v0}, Landroid/net/wifi/usd/IUsdManager;->subscribe(Landroid/net/wifi/usd/SubscribeConfig;Landroid/net/wifi/usd/ISubscribeSessionCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_22

    .line 326
    .end local v0    # "subscribeSessionCallbackProxy":Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;
    nop

    .line 327
    return-void

    .line 324
    :catch_22
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unregisterPublisherStatusListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 439
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 442
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 443
    .local v0, "callbackHash":I
    sget-object v1, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 444
    :try_start_12
    sget-object v2, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 445
    sget-object v2, Landroid/net/wifi/usd/UsdManager;->TAG:Ljava/lang/String;

    const-string v3, "Unknown callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_47

    return-void

    .line 449
    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    sget-object v3, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    .line 450
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IBooleanListener;

    .line 449
    invoke-interface {v2, v3}, Landroid/net/wifi/usd/IUsdManager;->unregisterPublisherStatusListener(Landroid/net/wifi/IBooleanListener;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_3a
    .catchall {:try_start_23 .. :try_end_30} :catchall_38

    .line 454
    :try_start_30
    sget-object v2, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 455
    nop

    .line 456
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_47

    .line 457
    return-void

    .line 454
    :catchall_38
    move-exception v2

    goto :goto_40

    .line 451
    :catch_3a
    move-exception v2

    .line 452
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3b
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "callbackHash":I
    .end local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .end local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    throw v3
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 454
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "callbackHash":I
    .restart local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .restart local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :goto_40
    :try_start_40
    sget-object v3, Landroid/net/wifi/usd/UsdManager;->sPublisherAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 455
    nop

    .end local v0    # "callbackHash":I
    .end local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .end local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    throw v2

    .line 456
    .restart local v0    # "callbackHash":I
    .restart local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .restart local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_47

    throw v2

    .line 440
    .end local v0    # "callbackHash":I
    :cond_4a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unregisterSubscriberStatusListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 373
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 377
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 378
    .local v0, "callbackHash":I
    sget-object v1, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 379
    :try_start_12
    sget-object v2, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 380
    sget-object v2, Landroid/net/wifi/usd/UsdManager;->TAG:Ljava/lang/String;

    const-string v3, "Unknown callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_47

    return-void

    .line 384
    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    sget-object v3, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    .line 385
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IBooleanListener;

    .line 384
    invoke-interface {v2, v3}, Landroid/net/wifi/usd/IUsdManager;->unregisterSubscriberStatusListener(Landroid/net/wifi/IBooleanListener;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_3a
    .catchall {:try_start_23 .. :try_end_30} :catchall_38

    .line 389
    :try_start_30
    sget-object v2, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 390
    nop

    .line 391
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_47

    .line 392
    return-void

    .line 389
    :catchall_38
    move-exception v2

    goto :goto_40

    .line 386
    :catch_3a
    move-exception v2

    .line 387
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3b
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "callbackHash":I
    .end local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .end local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    throw v3
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 389
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "callbackHash":I
    .restart local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .restart local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :goto_40
    :try_start_40
    sget-object v3, Landroid/net/wifi/usd/UsdManager;->sSubscriberAvailabilityListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 390
    nop

    .end local v0    # "callbackHash":I
    .end local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .end local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    throw v2

    .line 391
    .restart local v0    # "callbackHash":I
    .restart local p0    # "this":Landroid/net/wifi/usd/UsdManager;
    .restart local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_47

    throw v2

    .line 375
    .end local v0    # "callbackHash":I
    :cond_4a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist updatePublish(I[B)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "serviceSpecificInfo"    # [B

    .line 119
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager;->mService:Landroid/net/wifi/usd/IUsdManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/usd/IUsdManager;->updatePublish(I[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 122
    nop

    .line 123
    return-void

    .line 120
    :catch_7
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
