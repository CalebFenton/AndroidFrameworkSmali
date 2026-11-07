.class public Landroid/net/netstats/provider/INetworkStatsProviderCallback$Default;
.super Ljava/lang/Object;
.source "INetworkStatsProviderCallback.java"

# interfaces
.implements Landroid/net/netstats/provider/INetworkStatsProviderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/provider/INetworkStatsProviderCallback;
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

.method public blacklist notifyAlertReached()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist notifyLimitReached()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "ifaceStats"    # Landroid/net/NetworkStats;
    .param p3, "uidStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist notifyWarningReached()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist unregister()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
