.class public interface abstract Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiConnectedNetworkScorer"
.end annotation


# virtual methods
.method public whitelist onNetworkSwitchAccepted(IILjava/lang/String;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "targetNetworkId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;

    .line 10573
    return-void
.end method

.method public whitelist onNetworkSwitchRejected(IILjava/lang/String;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "targetNetworkId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;

    .line 10585
    return-void
.end method

.method public abstract whitelist onSetScoreUpdateObserver(Landroid/net/wifi/WifiManager$ScoreUpdateObserver;)V
.end method

.method public whitelist onStart(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10538
    return-void
.end method

.method public whitelist onStart(Landroid/net/wifi/WifiConnectedSessionInfo;)V
    .registers 3
    .param p1, "sessionInfo"    # Landroid/net/wifi/WifiConnectedSessionInfo;

    .line 10546
    invoke-virtual {p1}, Landroid/net/wifi/WifiConnectedSessionInfo;->getSessionId()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;->onStart(I)V

    .line 10547
    return-void
.end method

.method public abstract whitelist onStop(I)V
.end method
