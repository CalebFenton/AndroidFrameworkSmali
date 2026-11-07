.class Landroid/os/storage/StorageManager$1;
.super Landroid/app/PropertyInvalidatedCache$QueryHandler;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
        "Landroid/os/storage/StorageManager$VolumeListQuery;",
        "[",
        "Landroid/os/storage/StorageVolume;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 319
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 319
    check-cast p1, Landroid/os/storage/StorageManager$VolumeListQuery;

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager$1;->apply(Landroid/os/storage/StorageManager$VolumeListQuery;)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/os/storage/StorageManager$VolumeListQuery;)[Landroid/os/storage/StorageVolume;
    .registers 6
    .param p1, "query"    # Landroid/os/storage/StorageManager$VolumeListQuery;

    .line 323
    nop

    .line 324
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 325
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    if-nez v0, :cond_10

    .line 327
    const/4 v1, 0x0

    return-object v1

    .line 330
    :cond_10
    :try_start_10
    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmUserId(Landroid/os/storage/StorageManager$VolumeListQuery;)I

    move-result v1

    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmPackageName(Landroid/os/storage/StorageManager$VolumeListQuery;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmFlags(Landroid/os/storage/StorageManager$VolumeListQuery;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_20} :catch_21

    return-object v1

    .line 332
    :catch_21
    move-exception v1

    .line 333
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
