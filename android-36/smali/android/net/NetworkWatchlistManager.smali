.class public Landroid/net/NetworkWatchlistManager;
.super Ljava/lang/Object;
.source "NetworkWatchlistManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final greylist-max-o SHARED_MEMORY_TAG:Ljava/lang/String; = "NETWORK_WATCHLIST_SHARED_MEMORY"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkWatchlistManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    .line 59
    nop

    .line 61
    const-string/jumbo v0, "network_watchlist"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    .line 62
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/net/INetworkWatchlistManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/net/INetworkWatchlistManager;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    .line 52
    return-void
.end method


# virtual methods
.method public greylist-max-o getWatchlistConfigHash()[B
    .registers 4

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Unable to get watchlist config hash"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reloadWatchlist()V
    .registers 4

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->reloadWatchlist()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 92
    goto :goto_11

    .line 89
    :catch_6
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Unable to reload watchlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public greylist-max-o reportWatchlistIfNecessary()V
    .registers 4

    .line 74
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->reportWatchlistIfNecessary()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 78
    goto :goto_11

    .line 75
    :catch_6
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Cannot report records"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method
