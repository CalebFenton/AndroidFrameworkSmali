.class public Landroid/net/wifi/WifiManager$MulticastLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulticastLock"
.end annotation


# instance fields
.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field private greylist-max-o mHeld:Z

.field private greylist-max-o mRefCount:I

.field private greylist-max-o mRefCounted:Z

.field private greylist-max-o mTag:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 8436
    iput-object p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8437
    iput-object p2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    .line 8438
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    .line 8439
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    .line 8440
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    .line 8441
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 8442
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist acquire()V
    .registers 8

    .line 8465
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8466
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-ne v1, v2, :cond_6b

    goto :goto_14

    :cond_10
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_6d

    if-nez v1, :cond_6b

    .line 8468
    :goto_14
    :try_start_14
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmContext(Landroid/net/wifi/WifiManager;)Landroid/content/Context;

    move-result-object v5

    .line 8469
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmContext(Landroid/net/wifi/WifiManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 8468
    invoke-interface {v1, v3, v4, v5, v6}, Landroid/net/wifi/IWifiManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8470
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_36} :catch_65
    .catchall {:try_start_14 .. :try_end_36} :catchall_6d

    .line 8471
    :try_start_36
    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmActiveLockCount(Landroid/net/wifi/WifiManager;)I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_4f

    .line 8476
    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmActiveLockCount(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->-$$Nest$fputmActiveLockCount(Landroid/net/wifi/WifiManager;I)V

    .line 8477
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_62

    .line 8480
    nop

    .line 8481
    :try_start_4c
    iput-boolean v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_6d

    goto :goto_6b

    .line 8472
    :cond_4f
    :try_start_4f
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v2, v2, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 8473
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exceeded maximum number of wifi locks"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    throw v2

    .line 8477
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    :catchall_62
    move-exception v2

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_62

    .end local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    :try_start_64
    throw v2
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_65} :catch_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_6d

    .line 8478
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    :catch_65
    move-exception v1

    .line 8479
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_66
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    throw v2

    .line 8483
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    :cond_6b
    :goto_6b
    monitor-exit v0

    .line 8484
    return-void

    .line 8483
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8576
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8577
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 8578
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 8579
    return-void
.end method

.method public whitelist isHeld()Z
    .registers 3

    .line 8555
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8556
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 8557
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist release()V
    .registers 5

    .line 8511
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8512
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-nez v1, :cond_3c

    goto :goto_14

    :cond_10
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5d

    if-eqz v1, :cond_3c

    .line 8514
    :goto_14
    :try_start_14
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 8515
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_22} :catch_36
    .catchall {:try_start_14 .. :try_end_22} :catchall_5d

    .line 8516
    :try_start_22
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmActiveLockCount(Landroid/net/wifi/WifiManager;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->-$$Nest$fputmActiveLockCount(Landroid/net/wifi/WifiManager;I)V

    .line 8517
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_33

    .line 8520
    nop

    .line 8521
    const/4 v1, 0x0

    :try_start_30
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_5d

    goto :goto_3c

    .line 8517
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    :try_start_35
    throw v2
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_36} :catch_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_5d

    .line 8518
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    :catch_36
    move-exception v1

    .line 8519
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_37
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    throw v2

    .line 8523
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    :cond_3c
    :goto_3c
    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-ltz v1, :cond_42

    .line 8527
    monitor-exit v0

    .line 8528
    return-void

    .line 8524
    :cond_42
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MulticastLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    throw v1

    .line 8527
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$MulticastLock;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_37 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public whitelist setReferenceCounted(Z)V
    .registers 2
    .param p1, "refCounted"    # Z

    .line 8546
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    .line 8547
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 8562
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 8563
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 8564
    .local v1, "s1":Ljava/lang/String;
    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    if-eqz v2, :cond_12

    const-string v2, "held; "

    goto :goto_14

    :cond_12
    const-string v2, ""

    .line 8565
    .local v2, "s2":Ljava/lang/String;
    :goto_14
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v3, :cond_2e

    .line 8566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refcounted: refcount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "s3":Ljava/lang/String;
    goto :goto_30

    .line 8568
    .end local v3    # "s3":Ljava/lang/String;
    :cond_2e
    const-string v3, "not refcounted"

    .line 8570
    .restart local v3    # "s3":Ljava/lang/String;
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MulticastLock{ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 8571
    .end local v1    # "s1":Ljava/lang/String;
    .end local v2    # "s2":Ljava/lang/String;
    .end local v3    # "s3":Ljava/lang/String;
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method
