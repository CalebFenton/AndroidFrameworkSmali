.class Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ScoreUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoreUpdateObserverProxy"
.end annotation


# instance fields
.field private final blacklist mScoreUpdateObserver:Landroid/net/wifi/IScoreUpdateObserver;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/IScoreUpdateObserver;)V
    .registers 3
    .param p2, "observer"    # Landroid/net/wifi/IScoreUpdateObserver;
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

    .line 10463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10464
    iput-object p2, p0, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;->mScoreUpdateObserver:Landroid/net/wifi/IScoreUpdateObserver;

    .line 10465
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/IScoreUpdateObserver;Landroid/net/wifi/WifiManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/IScoreUpdateObserver;)V

    return-void
.end method


# virtual methods
.method public whitelist blocklistCurrentBssid(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 10511
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10515
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;->mScoreUpdateObserver:Landroid/net/wifi/IScoreUpdateObserver;

    invoke-interface {v0, p1}, Landroid/net/wifi/IScoreUpdateObserver;->blocklistCurrentBssid(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 10518
    nop

    .line 10519
    return-void

    .line 10516
    :catch_d
    move-exception v0

    .line 10517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10512
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist notifyScoreUpdate(II)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "score"    # I

    .line 10470
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;->mScoreUpdateObserver:Landroid/net/wifi/IScoreUpdateObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IScoreUpdateObserver;->notifyScoreUpdate(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 10473
    nop

    .line 10474
    return-void

    .line 10471
    :catch_7
    move-exception v0

    .line 10472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyStatusUpdate(IZ)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "isUsable"    # Z

    .line 10487
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10491
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;->mScoreUpdateObserver:Landroid/net/wifi/IScoreUpdateObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IScoreUpdateObserver;->notifyStatusUpdate(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 10494
    nop

    .line 10495
    return-void

    .line 10492
    :catch_d
    move-exception v0

    .line 10493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10488
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist requestNudOperation(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 10499
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10503
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;->mScoreUpdateObserver:Landroid/net/wifi/IScoreUpdateObserver;

    invoke-interface {v0, p1}, Landroid/net/wifi/IScoreUpdateObserver;->requestNudOperation(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 10506
    nop

    .line 10507
    return-void

    .line 10504
    :catch_d
    move-exception v0

    .line 10505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10500
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist triggerUpdateOfWifiUsabilityStats(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 10479
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;->mScoreUpdateObserver:Landroid/net/wifi/IScoreUpdateObserver;

    invoke-interface {v0, p1}, Landroid/net/wifi/IScoreUpdateObserver;->triggerUpdateOfWifiUsabilityStats(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 10482
    nop

    .line 10483
    return-void

    .line 10480
    :catch_7
    move-exception v0

    .line 10481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
