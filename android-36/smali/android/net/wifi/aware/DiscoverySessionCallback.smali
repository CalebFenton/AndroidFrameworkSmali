.class public Landroid/net/wifi/aware/DiscoverySessionCallback;
.super Ljava/lang/Object;
.source "DiscoverySessionCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBootstrappingFailed(Landroid/net/wifi/aware/PeerHandle;)V
    .registers 2
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 388
    return-void
.end method

.method public whitelist onBootstrappingSucceeded(Landroid/net/wifi/aware/PeerHandle;I)V
    .registers 3
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "method"    # I

    .line 379
    return-void
.end method

.method public whitelist onMessageReceived(Landroid/net/wifi/aware/PeerHandle;[B)V
    .registers 3
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "message"    # [B

    .line 295
    return-void
.end method

.method public whitelist onMessageSendFailed(I)V
    .registers 2
    .param p1, "messageId"    # I

    .line 284
    return-void
.end method

.method public whitelist onMessageSendSucceeded(I)V
    .registers 2
    .param p1, "messageId"    # I

    .line 269
    return-void
.end method

.method public whitelist onPairingSetupFailed(Landroid/net/wifi/aware/PeerHandle;)V
    .registers 2
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 344
    return-void
.end method

.method public whitelist onPairingSetupRequestReceived(Landroid/net/wifi/aware/PeerHandle;I)V
    .registers 3
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "requestId"    # I

    .line 321
    return-void
.end method

.method public whitelist onPairingSetupSucceeded(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)V
    .registers 3
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "alias"    # Ljava/lang/String;

    .line 335
    return-void
.end method

.method public whitelist onPairingVerificationFailed(Landroid/net/wifi/aware/PeerHandle;)V
    .registers 2
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 367
    return-void
.end method

.method public whitelist onPairingVerificationSucceed(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)V
    .registers 3
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "alias"    # Ljava/lang/String;

    .line 358
    return-void
.end method

.method public whitelist onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/wifi/aware/PublishDiscoverySession;

    .line 50
    return-void
.end method

.method public whitelist onRangingResultsReceived(Ljava/util/List;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p1, "rangingResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    return-void
.end method

.method public whitelist onServiceDiscovered(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;)V
    .registers 4
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "serviceSpecificInfo"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/aware/PeerHandle;",
            "[B",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 178
    .local p3, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    return-void
.end method

.method public whitelist onServiceDiscovered(Landroid/net/wifi/aware/ServiceDiscoveryInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/wifi/aware/ServiceDiscoveryInfo;

    .line 192
    return-void
.end method

.method public whitelist onServiceDiscoveredWithinRange(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;I)V
    .registers 5
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "serviceSpecificInfo"    # [B
    .param p4, "distanceMm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/aware/PeerHandle;",
            "[B",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 228
    .local p3, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    return-void
.end method

.method public whitelist onServiceDiscoveredWithinRange(Landroid/net/wifi/aware/ServiceDiscoveryInfo;I)V
    .registers 3
    .param p1, "info"    # Landroid/net/wifi/aware/ServiceDiscoveryInfo;
    .param p2, "distanceMm"    # I

    .line 253
    return-void
.end method

.method public whitelist onServiceLost(Landroid/net/wifi/aware/PeerHandle;I)V
    .registers 3
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "reason"    # I

    .line 311
    return-void
.end method

.method public whitelist onSessionConfigFailed()V
    .registers 1

    .line 88
    return-void
.end method

.method public whitelist onSessionConfigUpdated()V
    .registers 1

    .line 72
    return-void
.end method

.method public whitelist onSessionResumeFailed(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 151
    return-void
.end method

.method public whitelist onSessionResumeSucceeded()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 135
    return-void
.end method

.method public whitelist onSessionSuspendFailed(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 125
    return-void
.end method

.method public whitelist onSessionSuspendSucceeded()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 108
    return-void
.end method

.method public whitelist onSessionTerminated()V
    .registers 1

    .line 98
    return-void
.end method

.method public whitelist onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/wifi/aware/SubscribeDiscoverySession;

    .line 62
    return-void
.end method
