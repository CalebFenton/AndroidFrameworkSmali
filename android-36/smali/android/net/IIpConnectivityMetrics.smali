.class public interface abstract Landroid/net/IIpConnectivityMetrics;
.super Ljava/lang/Object;
.source "IIpConnectivityMetrics.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpConnectivityMetrics$Stub;,
        Landroid/net/IIpConnectivityMetrics$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist logDefaultNetworkValidity(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o removeNetdEventCallback(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
