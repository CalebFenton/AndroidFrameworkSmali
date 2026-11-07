.class Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;
.super Landroid/os/incremental/IStorageLoadingProgressListener$Stub;
.source "IncrementalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IncrementalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingProgressCallbacks"
.end annotation


# instance fields
.field private final blacklist mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageLoadingProgressCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 351
    invoke-direct {p0}, Landroid/os/incremental/IStorageLoadingProgressListener$Stub;-><init>()V

    .line 352
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/incremental/IncrementalManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V
    .registers 5
    .param p1, "storage"    # Landroid/os/incremental/IncrementalStorage;

    .line 357
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v0

    .line 359
    .local v0, "storageId":I
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 360
    :try_start_7
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 361
    .local v2, "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    .line 362
    if-nez v2, :cond_13

    .line 363
    return-void

    .line 366
    :cond_13
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 367
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->unregisterLoadingProgressListener()Z

    .line 368
    return-void

    .line 361
    .end local v2    # "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public blacklist onStorageLoadingProgressChanged(IF)V
    .registers 8
    .param p1, "storageId"    # I
    .param p2, "progress"    # F

    .line 394
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 396
    .local v1, "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    .line 397
    if-nez v1, :cond_f

    .line 399
    return-void

    .line 401
    :cond_f
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 403
    .local v0, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_25

    .line 404
    nop

    .line 405
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 407
    .local v3, "callback":Landroid/content/pm/IPackageLoadingProgressCallback;
    :try_start_1d
    invoke-interface {v3, p2}, Landroid/content/pm/IPackageLoadingProgressCallback;->onPackageLoadingProgressChanged(F)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 409
    goto :goto_22

    .line 408
    :catch_21
    move-exception v4

    .line 403
    .end local v3    # "callback":Landroid/content/pm/IPackageLoadingProgressCallback;
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 411
    .end local v2    # "i":I
    :cond_25
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 412
    return-void

    .line 396
    .end local v0    # "n":I
    .end local v1    # "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist registerCallback(Landroid/os/incremental/IncrementalStorage;Landroid/content/pm/IPackageLoadingProgressCallback;)Z
    .registers 8
    .param p1, "storage"    # Landroid/os/incremental/IncrementalStorage;
    .param p2, "callback"    # Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 372
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v0

    .line 373
    .local v0, "storageId":I
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 374
    :try_start_7
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    .line 375
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 376
    .local v2, "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    if-nez v2, :cond_1c

    .line 377
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 378
    iget-object v3, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    :cond_1c
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 383
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_28

    .line 385
    monitor-exit v1

    return v4

    .line 387
    .end local v2    # "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2e

    .line 388
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalStorage;->registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result v1

    return v1

    .line 387
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2
.end method
