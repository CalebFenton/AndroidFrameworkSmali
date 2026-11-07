.class public Landroid/net/netstats/provider/INetworkStatsProvider$Default;
.super Ljava/lang/Object;
.source "INetworkStatsProvider.java"

# interfaces
.implements Landroid/net/netstats/provider/INetworkStatsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/provider/INetworkStatsProvider;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onRequestStatsUpdate(I)V
    .registers 2
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onSetAlert(J)V
    .registers 3
    .param p1, "quotaBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onSetWarningAndLimit(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "warningBytes"    # J
    .param p4, "limitBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
