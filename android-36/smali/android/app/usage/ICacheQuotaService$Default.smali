.class public Landroid/app/usage/ICacheQuotaService$Default;
.super Ljava/lang/Object;
.source "ICacheQuotaService.java"

# interfaces
.implements Landroid/app/usage/ICacheQuotaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/ICacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    return-void
.end method
