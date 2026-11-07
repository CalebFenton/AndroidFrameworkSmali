.class Landroid/app/ApplicationPackageManager$3;
.super Landroid/app/PropertyInvalidatedCache;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 4
    .param p1, "args"    # Landroid/app/PropertyInvalidatedCache$Args;
    .param p2, "cacheName"    # Ljava/lang/String;

    .line 1171
    .local p3, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<Ljava/lang/Integer;Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist queryToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # Ljava/lang/Integer;

    .line 1185
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "uid=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1171
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager$3;->queryToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist recompute(Ljava/lang/Integer;)Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;
    .registers 5
    .param p1, "uid"    # Ljava/lang/Integer;

    .line 1176
    :try_start_0
    new-instance v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    .line 1177
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 1178
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;-><init>([Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 1176
    return-object v0

    .line 1179
    :catch_15
    move-exception v0

    .line 1180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1171
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager$3;->recompute(Ljava/lang/Integer;)Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    move-result-object p1

    return-object p1
.end method
