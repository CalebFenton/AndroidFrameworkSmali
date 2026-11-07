.class public interface abstract Lcom/android/internal/net/INetworkWatchlistManager;
.super Ljava/lang/Object;
.source "INetworkWatchlistManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/INetworkWatchlistManager$Stub;,
        Lcom/android/internal/net/INetworkWatchlistManager$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o getWatchlistConfigHash()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o reloadWatchlist()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o reportWatchlistIfNecessary()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o startWatchlistLogging()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o stopWatchlistLogging()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
