.class public Landroid/net/wifi/aware/WifiAwareSession;
.super Ljava/lang/Object;
.source "WifiAwareSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiAwareSession"

.field private static final greylist-max-o VDBG:Z = false


# instance fields
.field private final greylist-max-o mBinder:Landroid/os/Binder;

.field private final greylist-max-o mClientId:I

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final greylist-max-o mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTerminated:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V
    .registers 6
    .param p1, "manager"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "binder"    # Landroid/os/Binder;
    .param p3, "clientId"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 59
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Landroid/util/CloseGuard;

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 66
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    .line 67
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 70
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 85
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 86
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_12

    .line 87
    const-string v1, "WifiAwareSession"

    const-string v2, "destroy: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    :cond_12
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->disconnect(ILandroid/os/Binder;)V

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 92
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 93
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V

    .line 94
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public whitelist createNetworkSpecifierOpen(I[B)Landroid/net/NetworkSpecifier;
    .registers 10
    .param p1, "role"    # I
    .param p2, "peer"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 330
    .local v1, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const/4 v0, 0x0

    const-string v2, "WifiAwareSession"

    if-nez v1, :cond_14

    .line 331
    const-string v3, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v0

    .line 334
    :cond_14
    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v3, :cond_1e

    .line 335
    const-string v3, "createNetworkSpecifierOpen: called after termination"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-object v0

    .line 338
    :cond_1e
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    .end local p1    # "role":I
    .end local p2    # "peer":[B
    .local v3, "role":I
    .local v4, "peer":[B
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createNetworkSpecifierPassphrase(I[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .registers 11
    .param p1, "role"    # I
    .param p2, "peer"    # [B
    .param p3, "passphrase"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 378
    .local v1, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const/4 v0, 0x0

    const-string v2, "WifiAwareSession"

    if-nez v1, :cond_14

    .line 379
    const-string v3, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-object v0

    .line 382
    :cond_14
    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v3, :cond_1e

    .line 383
    const-string v3, "createNetworkSpecifierPassphrase: called after termination"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-object v0

    .line 386
    :cond_1e
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 390
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    .end local p1    # "role":I
    .end local p2    # "peer":[B
    .end local p3    # "passphrase":Ljava/lang/String;
    .local v3, "role":I
    .local v4, "peer":[B
    .local v6, "passphrase":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p1

    return-object p1

    .line 387
    .end local v3    # "role":I
    .end local v4    # "peer":[B
    .end local v6    # "passphrase":Ljava/lang/String;
    .restart local p1    # "role":I
    .restart local p2    # "peer":[B
    .restart local p3    # "passphrase":Ljava/lang/String;
    :cond_2f
    move v3, p1

    move-object v4, p2

    .end local p1    # "role":I
    .end local p2    # "peer":[B
    .restart local v3    # "role":I
    .restart local v4    # "peer":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Passphrase must meet length requirements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createNetworkSpecifierPmk(I[B[B)Landroid/net/NetworkSpecifier;
    .registers 11
    .param p1, "role"    # I
    .param p2, "peer"    # [B
    .param p3, "pmk"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 434
    .local v1, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const/4 v0, 0x0

    const-string v2, "WifiAwareSession"

    if-nez v1, :cond_14

    .line 435
    const-string v3, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-object v0

    .line 438
    :cond_14
    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v3, :cond_1e

    .line 439
    const-string v3, "createNetworkSpecifierPmk: called after termination"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-object v0

    .line 442
    :cond_1e
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 445
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "role":I
    .end local p2    # "peer":[B
    .end local p3    # "pmk":[B
    .local v3, "role":I
    .local v4, "peer":[B
    .local v5, "pmk":[B
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p1

    return-object p1

    .line 443
    .end local v3    # "role":I
    .end local v4    # "peer":[B
    .end local v5    # "pmk":[B
    .restart local p1    # "role":I
    .restart local p2    # "peer":[B
    .restart local p3    # "pmk":[B
    :cond_2f
    move v3, p1

    move-object v4, p2

    .end local p1    # "role":I
    .end local p2    # "peer":[B
    .restart local v3    # "role":I
    .restart local v4    # "peer":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PMK must 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 105
    :cond_9
    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-nez v0, :cond_10

    .line 106
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareSession;->close()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    .line 109
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 110
    nop

    .line 111
    return-void

    .line 109
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 110
    throw v0
.end method

.method public greylist-max-o getClientId()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    return v0
.end method

.method public whitelist getMasterPreference(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 283
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const-string v1, "WifiAwareSession"

    if-nez v0, :cond_12

    .line 284
    const-string v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 287
    :cond_12
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1c

    .line 288
    const-string v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 291
    :cond_1c
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->getMasterPreference(ILandroid/os/Binder;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 292
    return-void
.end method

.method public whitelist publish(Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p2, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 174
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 175
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const-string v1, "WifiAwareSession"

    if-nez v0, :cond_12

    .line 176
    const-string v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 179
    :cond_12
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1c

    .line 180
    const-string v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 183
    :cond_1c
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_25

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_29

    :cond_25
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_29
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    .line 185
    return-void
.end method

.method public whitelist setMasterPreference(I)V
    .registers 5
    .param p1, "masterPreference"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 258
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 259
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const-string v1, "WifiAwareSession"

    if-nez v0, :cond_12

    .line 260
    const-string v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 263
    :cond_12
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1c

    .line 264
    const-string v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 267
    :cond_1c
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2, p1}, Landroid/net/wifi/aware/WifiAwareManager;->setMasterPreference(ILandroid/os/Binder;I)V

    .line 268
    return-void
.end method

.method public whitelist subscribe(Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p2, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 234
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 235
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    const-string v1, "WifiAwareSession"

    if-nez v0, :cond_12

    .line 236
    const-string v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 239
    :cond_12
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v2, :cond_1c

    .line 240
    const-string v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_1c
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_25

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_29

    :cond_25
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_29
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    .line 245
    return-void
.end method
