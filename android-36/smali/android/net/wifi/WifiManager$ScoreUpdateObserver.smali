.class public interface abstract Landroid/net/wifi/WifiManager$ScoreUpdateObserver;
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
    name = "ScoreUpdateObserver"
.end annotation


# virtual methods
.method public whitelist blocklistCurrentBssid(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 10452
    return-void
.end method

.method public abstract whitelist notifyScoreUpdate(II)V
.end method

.method public whitelist notifyStatusUpdate(IZ)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "isUsable"    # Z

    .line 10430
    return-void
.end method

.method public whitelist requestNudOperation(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 10442
    return-void
.end method

.method public abstract whitelist triggerUpdateOfWifiUsabilityStats(I)V
.end method
