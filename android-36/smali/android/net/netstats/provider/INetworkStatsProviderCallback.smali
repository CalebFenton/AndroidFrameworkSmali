.class public interface abstract Landroid/net/netstats/provider/INetworkStatsProviderCallback;
.super Ljava/lang/Object;
.source "INetworkStatsProviderCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;,
        Landroid/net/netstats/provider/INetworkStatsProviderCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.netstats.provider.INetworkStatsProviderCallback"


# virtual methods
.method public abstract blacklist notifyAlertReached()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyLimitReached()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyWarningReached()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregister()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
