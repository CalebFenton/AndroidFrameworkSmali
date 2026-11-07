.class public Landroid/net/wifi/IWifiConnectedNetworkScorer$Default;
.super Ljava/lang/Object;
.source "IWifiConnectedNetworkScorer.java"

# interfaces
.implements Landroid/net/wifi/IWifiConnectedNetworkScorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiConnectedNetworkScorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onNetworkSwitchAccepted(IILjava/lang/String;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "targetNetworkId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onNetworkSwitchRejected(IILjava/lang/String;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "targetNetworkId"    # I
    .param p3, "targetBssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onSetScoreUpdateObserver(Landroid/net/wifi/IScoreUpdateObserver;)V
    .registers 2
    .param p1, "observerImpl"    # Landroid/net/wifi/IScoreUpdateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onStart(Landroid/net/wifi/WifiConnectedSessionInfo;)V
    .registers 2
    .param p1, "sessionInfo"    # Landroid/net/wifi/WifiConnectedSessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onStop(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
