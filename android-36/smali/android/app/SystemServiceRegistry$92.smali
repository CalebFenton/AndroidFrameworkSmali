.class Landroid/app/SystemServiceRegistry$92;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/net/NetworkWatchlistManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1205
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/net/NetworkWatchlistManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1209
    nop

    .line 1210
    const-string/jumbo v0, "network_watchlist"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1211
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/net/NetworkWatchlistManager;

    .line 1212
    invoke-static {v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/net/NetworkWatchlistManager;-><init>(Landroid/content/Context;Lcom/android/internal/net/INetworkWatchlistManager;)V

    .line 1211
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1205
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$92;->createService(Landroid/app/ContextImpl;)Landroid/net/NetworkWatchlistManager;

    move-result-object p1

    return-object p1
.end method
