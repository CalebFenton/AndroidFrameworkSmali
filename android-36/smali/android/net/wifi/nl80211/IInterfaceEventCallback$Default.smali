.class public Landroid/net/wifi/nl80211/IInterfaceEventCallback$Default;
.super Ljava/lang/Object;
.source "IInterfaceEventCallback.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IInterfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IInterfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist OnApInterfaceReady(Landroid/net/wifi/nl80211/IApInterface;)V
    .registers 2
    .param p1, "network_interface"    # Landroid/net/wifi/nl80211/IApInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist OnApTorndownEvent(Landroid/net/wifi/nl80211/IApInterface;)V
    .registers 2
    .param p1, "network_interface"    # Landroid/net/wifi/nl80211/IApInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist OnClientInterfaceReady(Landroid/net/wifi/nl80211/IClientInterface;)V
    .registers 2
    .param p1, "network_interface"    # Landroid/net/wifi/nl80211/IClientInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist OnClientTorndownEvent(Landroid/net/wifi/nl80211/IClientInterface;)V
    .registers 2
    .param p1, "network_interface"    # Landroid/net/wifi/nl80211/IClientInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
