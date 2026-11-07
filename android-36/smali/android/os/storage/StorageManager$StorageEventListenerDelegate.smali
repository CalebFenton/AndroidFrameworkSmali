.class Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
.super Landroid/os/storage/IStorageEventListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageEventListenerDelegate"
.end annotation


# instance fields
.field final blacklist mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/os/storage/StorageEventListener;

.field final synthetic blacklist this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$6QXIC9Wq1cJu8wcwSYoN2ozBOcI(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onDiskDestroyed$6(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EuCWGrr-T5fjFG__riKnbcXZ3Fw(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onVolumeForgotten$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YZLu4amTh62Z-qEGB-6CHSlckX8(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onDiskScanned$5(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YjkPFyha6Bl0s2FOotURGaM0MII(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onVolumeStateChanged$2(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fLwYyvD4DiNTjC8QpojdxNP6QPI(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onUsbMassStorageConnectionChanged$0(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rSZDfOxnvsWdFFyN6GiziJUM0tU(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onStorageStateChanged$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sq30d_MKlmSFvkOMx4slkgTZIdk(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onVolumeRecordChanged$3(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/os/storage/StorageEventListener;
    .param p4, "callback"    # Landroid/os/storage/StorageManager$StorageVolumeCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 359
    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IStorageEventListener$Stub;-><init>()V

    .line 360
    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 361
    iput-object p3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    .line 362
    iput-object p4, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    .line 363
    return-void
.end method

.method private synthetic blacklist lambda$onDiskDestroyed$6(Landroid/os/storage/DiskInfo;)V
    .registers 3
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .line 427
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    .line 428
    return-void
.end method

.method private synthetic blacklist lambda$onDiskScanned$5(Landroid/os/storage/DiskInfo;I)V
    .registers 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .line 420
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 421
    return-void
.end method

.method private synthetic blacklist lambda$onStorageStateChanged$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-eqz p1, :cond_2d

    .line 378
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 379
    .local v1, "sv":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 380
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager$StorageVolumeCallback;->onStateChanged(Landroid/os/storage/StorageVolume;)V

    .line 382
    .end local v1    # "sv":Landroid/os/storage/StorageVolume;
    :cond_2c
    goto :goto_11

    .line 384
    :cond_2d
    return-void
.end method

.method private synthetic blacklist lambda$onUsbMassStorageConnectionChanged$0(Z)V
    .registers 3
    .param p1, "connected"    # Z

    .line 368
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 369
    return-void
.end method

.method private synthetic blacklist lambda$onVolumeForgotten$4(Ljava/lang/String;)V
    .registers 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 413
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private synthetic blacklist lambda$onVolumeRecordChanged$3(Landroid/os/storage/VolumeRecord;)V
    .registers 3
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .line 406
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 407
    return-void
.end method

.method private synthetic blacklist lambda$onVolumeStateChanged$2(Landroid/os/storage/VolumeInfo;II)V
    .registers 9
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 390
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 392
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v0

    .line 393
    .local v0, "path":Ljava/io/File;
    if-eqz v0, :cond_39

    .line 394
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 395
    .local v2, "sv":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 396
    iget-object v3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager$StorageVolumeCallback;->onStateChanged(Landroid/os/storage/StorageVolume;)V

    .line 398
    .end local v2    # "sv":Landroid/os/storage/StorageVolume;
    :cond_38
    goto :goto_19

    .line 400
    :cond_39
    return-void
.end method


# virtual methods
.method public greylist-max-o onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method public greylist-max-o onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 5
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .line 419
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public greylist-max-o onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public greylist-max-o onUsbMassStorageConnectionChanged(Z)V
    .registers 4
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda5;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public greylist-max-o onVolumeForgotten(Ljava/lang/String;)V
    .registers 4
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda6;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method public greylist-max-o onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 4
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .line 405
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeRecord;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public greylist-max-o onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 389
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeInfo;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method
