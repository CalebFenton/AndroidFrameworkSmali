.class public interface abstract Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;
.super Ljava/lang/Object;
.source "ISharedConnectivityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;,
        Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.sharedconnectivity.service.ISharedConnectivityService"


# virtual methods
.method public abstract blacklist connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist connectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist forgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHotspotNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHotspotNetworks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getKnownNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getKnownNetworks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
