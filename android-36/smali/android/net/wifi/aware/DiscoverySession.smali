.class public Landroid/net/wifi/aware/DiscoverySession;
.super Ljava/lang/Object;
.source "DiscoverySession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o MAX_SEND_RETRY_COUNT:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DiscoverySession"

.field private static final greylist-max-o VDBG:Z = false


# instance fields
.field protected final greylist-max-o mClientId:I

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field protected greylist-max-o mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mSessionId:I

.field protected greylist-max-o mTerminated:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/net/wifi/aware/WifiAwareManager;II)V
    .registers 6
    .param p1, "manager"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 69
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Landroid/util/CloseGuard;

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 91
    iput p2, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 92
    iput p3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 94
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static greylist-max-o getMaxSendRetryCount()I
    .registers 1

    .line 80
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public whitelist acceptPairingRequest(ILandroid/net/wifi/aware/PeerHandle;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "requestId"    # I
    .param p2, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p3, "peerDeviceAlias"    # Ljava/lang/String;
    .param p4, "cipherSuite"    # I
    .param p5, "password"    # Ljava/lang/String;

    .line 331
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 334
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 335
    .local v1, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v1, :cond_19

    .line 336
    const-string v0, "DiscoverySession"

    const-string v2, "initiatePairingRequest: called post GC on WifiAwareManager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 339
    :cond_19
    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    const/4 v8, 0x1

    move v5, p1

    move-object v4, p2

    move-object v7, p3

    move v9, p4

    move-object v6, p5

    .end local p1    # "requestId":I
    .end local p2    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local p3    # "peerDeviceAlias":Ljava/lang/String;
    .end local p4    # "cipherSuite":I
    .end local p5    # "password":Ljava/lang/String;
    .local v4, "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .local v5, "requestId":I
    .local v6, "password":Ljava/lang/String;
    .local v7, "peerDeviceAlias":Ljava/lang/String;
    .local v9, "cipherSuite":I
    invoke-virtual/range {v1 .. v9}, Landroid/net/wifi/aware/WifiAwareManager;->responseNanPairingSetupRequest(IILandroid/net/wifi/aware/PeerHandle;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 341
    return-void

    .line 332
    .end local v1    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    .end local v4    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local v5    # "requestId":I
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "peerDeviceAlias":Ljava/lang/String;
    .end local v9    # "cipherSuite":I
    .restart local p1    # "requestId":I
    .restart local p2    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .restart local p3    # "peerDeviceAlias":Ljava/lang/String;
    .restart local p4    # "cipherSuite":I
    .restart local p5    # "password":Ljava/lang/String;
    :cond_27
    move v5, p1

    .end local p1    # "requestId":I
    .restart local v5    # "requestId":I
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 110
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 111
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_12

    .line 112
    const-string v1, "DiscoverySession"

    const-string v2, "destroy: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_12
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->terminateSession(II)V

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 117
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 118
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V

    .line 119
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public whitelist createNetworkSpecifierOpen(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/NetworkSpecifier;
    .registers 12
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    const/4 v1, 0x0

    const-string v2, "DiscoverySession"

    if-eqz v0, :cond_d

    .line 503
    const-string v0, "createNetworkSpecifierOpen: called on terminated session"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-object v1

    .line 507
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/aware/WifiAwareManager;

    .line 508
    .local v3, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v3, :cond_1e

    .line 509
    const-string v0, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-object v1

    .line 513
    :cond_1e
    instance-of v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v0, :cond_25

    .line 514
    const/4 v0, 0x0

    move v5, v0

    goto :goto_27

    .line 515
    :cond_25
    const/4 v0, 0x1

    move v5, v0

    :goto_27
    nop

    .line 517
    .local v5, "role":I
    iget v4, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v6, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    .end local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .local v7, "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createNetworkSpecifierPassphrase(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)Landroid/net/NetworkSpecifier;
    .registers 13
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "passphrase"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 557
    invoke-static {p2}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 561
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    const/4 v1, 0x0

    const-string v2, "DiscoverySession"

    if-eqz v0, :cond_13

    .line 562
    const-string v0, "createNetworkSpecifierPassphrase: called on terminated session"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-object v1

    .line 566
    :cond_13
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/aware/WifiAwareManager;

    .line 567
    .local v3, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v3, :cond_24

    .line 568
    const-string v0, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-object v1

    .line 572
    :cond_24
    instance-of v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v0, :cond_2b

    .line 573
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2d

    .line 574
    :cond_2b
    const/4 v0, 0x1

    move v5, v0

    :goto_2d
    nop

    .line 576
    .local v5, "role":I
    iget v4, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v6, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    const/4 v8, 0x0

    move-object v7, p1

    move-object v9, p2

    .end local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local p2    # "passphrase":Ljava/lang/String;
    .local v7, "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .local v9, "passphrase":Ljava/lang/String;
    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p1

    return-object p1

    .line 558
    .end local v3    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    .end local v5    # "role":I
    .end local v7    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local v9    # "passphrase":Ljava/lang/String;
    .restart local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .restart local p2    # "passphrase":Ljava/lang/String;
    :cond_3a
    move-object v7, p1

    move-object v9, p2

    .end local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local p2    # "passphrase":Ljava/lang/String;
    .restart local v7    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .restart local v9    # "passphrase":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Passphrase must meet length requirements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createNetworkSpecifierPmk(Landroid/net/wifi/aware/PeerHandle;[B)Landroid/net/NetworkSpecifier;
    .registers 13
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "pmk"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 621
    invoke-static {p2}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 625
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    const/4 v1, 0x0

    const-string v2, "DiscoverySession"

    if-eqz v0, :cond_13

    .line 626
    const-string v0, "createNetworkSpecifierPmk: called on terminated session"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-object v1

    .line 630
    :cond_13
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/aware/WifiAwareManager;

    .line 631
    .local v3, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v3, :cond_24

    .line 632
    const-string v0, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-object v1

    .line 636
    :cond_24
    instance-of v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v0, :cond_2b

    .line 637
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2d

    .line 638
    :cond_2b
    const/4 v0, 0x1

    move v5, v0

    :goto_2d
    nop

    .line 640
    .local v5, "role":I
    iget v4, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v6, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    const/4 v9, 0x0

    move-object v7, p1

    move-object v8, p2

    .end local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local p2    # "pmk":[B
    .local v7, "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .local v8, "pmk":[B
    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object p1

    return-object p1

    .line 622
    .end local v3    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    .end local v5    # "role":I
    .end local v7    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local v8    # "pmk":[B
    .restart local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .restart local p2    # "pmk":[B
    :cond_3a
    move-object v7, p1

    move-object v8, p2

    .end local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local p2    # "pmk":[B
    .restart local v7    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .restart local v8    # "pmk":[B
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

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 144
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 147
    :cond_9
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-nez v0, :cond_10

    .line 148
    invoke-virtual {p0}, Landroid/net/wifi/aware/DiscoverySession;->close()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    .line 151
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 152
    nop

    .line 153
    return-void

    .line 151
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 152
    throw v0
.end method

.method public greylist-max-o getClientId()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    return v0
.end method

.method public greylist-max-o getSessionId()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    return v0
.end method

.method public whitelist initiateBootstrappingRequest(Landroid/net/wifi/aware/PeerHandle;I)V
    .registers 6
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "method"    # I

    .line 392
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 395
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 396
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_18

    .line 397
    const-string v1, "DiscoverySession"

    const-string v2, "initiatePairingRequest: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void

    .line 400
    :cond_18
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->initiateBootStrappingSetupRequest(IILandroid/net/wifi/aware/PeerHandle;I)V

    .line 401
    return-void

    .line 393
    .end local v0    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist initiatePairingRequest(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "peerDeviceAlias"    # Ljava/lang/String;
    .param p3, "cipherSuite"    # I
    .param p4, "password"    # Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 294
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 295
    .local v1, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v1, :cond_19

    .line 296
    const-string v0, "DiscoverySession"

    const-string v2, "initiatePairingRequest: called post GC on WifiAwareManager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 299
    :cond_19
    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move-object v5, p4

    .end local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local p2    # "peerDeviceAlias":Ljava/lang/String;
    .end local p3    # "cipherSuite":I
    .end local p4    # "password":Ljava/lang/String;
    .local v4, "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .local v5, "password":Ljava/lang/String;
    .local v6, "peerDeviceAlias":Ljava/lang/String;
    .local v7, "cipherSuite":I
    invoke-virtual/range {v1 .. v7}, Landroid/net/wifi/aware/WifiAwareManager;->initiateNanPairingSetupRequest(IILandroid/net/wifi/aware/PeerHandle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    return-void

    .line 292
    .end local v1    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    .end local v4    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "peerDeviceAlias":Ljava/lang/String;
    .end local v7    # "cipherSuite":I
    .restart local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .restart local p2    # "peerDeviceAlias":Ljava/lang/String;
    .restart local p3    # "cipherSuite":I
    .restart local p4    # "password":Ljava/lang/String;
    :cond_25
    move-object v4, p1

    .end local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .restart local v4    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist rejectPairingRequest(ILandroid/net/wifi/aware/PeerHandle;)V
    .registers 13
    .param p1, "requestId"    # I
    .param p2, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 361
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 364
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 365
    .local v1, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v1, :cond_19

    .line 366
    const-string v0, "DiscoverySession"

    const-string v2, "initiatePairingRequest: called post GC on WifiAwareManager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 369
    :cond_19
    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    move-object v4, p2

    .end local p1    # "requestId":I
    .end local p2    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .local v4, "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .local v5, "requestId":I
    invoke-virtual/range {v1 .. v9}, Landroid/net/wifi/aware/WifiAwareManager;->responseNanPairingSetupRequest(IILandroid/net/wifi/aware/PeerHandle;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 371
    return-void

    .line 362
    .end local v1    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    .end local v4    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local v5    # "requestId":I
    .restart local p1    # "requestId":I
    .restart local p2    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    :cond_28
    move v5, p1

    .end local p1    # "requestId":I
    .restart local v5    # "requestId":I
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist resume()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 451
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-nez v0, :cond_2a

    .line 455
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 456
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-eqz v0, :cond_22

    .line 460
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 464
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->resume(II)V

    .line 465
    return-void

    .line 461
    :cond_1c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 457
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get WifiAwareManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    .end local v0    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resume called on a terminated session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendMessage(Landroid/net/wifi/aware/PeerHandle;I[B)V
    .registers 5
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "messageId"    # I
    .param p3, "message"    # [B

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/wifi/aware/DiscoverySession;->sendMessage(Landroid/net/wifi/aware/PeerHandle;I[BI)V

    .line 262
    return-void
.end method

.method public greylist-max-o sendMessage(Landroid/net/wifi/aware/PeerHandle;I[BI)V
    .registers 14
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "messageId"    # I
    .param p3, "message"    # [B
    .param p4, "retryCount"    # I

    .line 218
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    const-string v1, "DiscoverySession"

    if-eqz v0, :cond_c

    .line 219
    const-string v0, "sendMessage: called on terminated session"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 223
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/aware/WifiAwareManager;

    .line 224
    .local v2, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v2, :cond_1d

    .line 225
    const-string v0, "sendMessage: called post GC on WifiAwareManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 229
    :cond_1d
    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v4, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    move-object v5, p1

    move v7, p2

    move-object v6, p3

    move v8, p4

    .end local p1    # "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .end local p2    # "messageId":I
    .end local p3    # "message":[B
    .end local p4    # "retryCount":I
    .local v5, "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    .local v6, "message":[B
    .local v7, "messageId":I
    .local v8, "retryCount":I
    invoke-virtual/range {v2 .. v8}, Landroid/net/wifi/aware/WifiAwareManager;->sendMessage(IILandroid/net/wifi/aware/PeerHandle;[BII)V

    .line 230
    return-void
.end method

.method public greylist-max-o setTerminated()V
    .registers 3

    .line 129
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v0, :cond_c

    .line 130
    const-string v0, "DiscoverySession"

    const-string v1, "terminate: already terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 134
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 135
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 136
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 137
    return-void
.end method

.method public whitelist suspend()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 418
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-nez v0, :cond_2a

    .line 422
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 423
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-eqz v0, :cond_22

    .line 427
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 431
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->suspend(II)V

    .line 432
    return-void

    .line 428
    :cond_1c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 424
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get WifiAwareManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    .end local v0    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Suspend called on a terminated session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
