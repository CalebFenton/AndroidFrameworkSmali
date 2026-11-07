.class Landroid/app/ActivityManager$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 4
    .param p1, "query"    # Ljava/lang/Void;

    .line 264
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 265
    :catch_d
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 260
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$1;->apply(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 260
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$1;->shouldBypassCache(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public blacklist shouldBypassCache(Ljava/lang/Void;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/Void;

    .line 273
    invoke-static {}, Landroid/app/Flags;->cacheGetCurrentUserId()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
