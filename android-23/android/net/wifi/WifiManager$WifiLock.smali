.class public Landroid/net/wifi/WifiManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field mLockType:I

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "lockType"    # I
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2329
    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2330
    iput-object p3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    #@8
    .line 2331
    iput p2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    #@a
    .line 2332
    new-instance v0, Landroid/os/Binder;

    #@c
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@11
    .line 2333
    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    #@13
    .line 2334
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    #@16
    .line 2335
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    #@18
    .line 2329
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$WifiLock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "lockType"    # I
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2350
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@3
    monitor-enter v2

    #@4
    .line 2351
    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    #@6
    if-eqz v1, :cond_2

    #@8
    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    if-ne v1, v3, :cond_1

    #@10
    .line 2353
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@12
    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@14
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@16
    iget v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    #@18
    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    #@1a
    iget-object v6, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@1c
    invoke-interface {v1, v3, v4, v5, v6}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    #@1f
    .line 2354
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@21
    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@22
    .line 2355
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@24
    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    #@27
    move-result v1

    #@28
    const/16 v4, 0x32

    #@2a
    if-lt v1, v4, :cond_3

    #@2c
    .line 2356
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@2e
    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@30
    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@32
    invoke-interface {v1, v4}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    #@35
    .line 2357
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@37
    .line 2358
    const-string/jumbo v4, "Exceeded maximum number of wifi locks"

    #@3a
    .line 2357
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 2354
    :catchall_0
    move-exception v1

    #@3f
    :try_start_3
    monitor-exit v3

    #@40
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@41
    .line 2362
    :catch_0
    move-exception v0

    #@42
    .line 2364
    :goto_0
    const/4 v1, 0x1

    #@43
    :try_start_4
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@45
    :cond_1
    :goto_1
    monitor-exit v2

    #@46
    .line 2349
    return-void

    #@47
    .line 2351
    :cond_2
    :try_start_5
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@49
    if-eqz v1, :cond_0

    #@4b
    goto :goto_1

    #@4c
    .line 2360
    :cond_3
    :try_start_6
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@4e
    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    #@51
    move-result v4

    #@52
    add-int/lit8 v4, v4, 0x1

    #@54
    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@57
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@58
    goto :goto_0

    #@59
    .line 2350
    :catchall_1
    move-exception v1

    #@5a
    monitor-exit v2

    #@5b
    throw v1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2470
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@3
    .line 2471
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@5
    monitor-enter v2

    #@6
    .line 2472
    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2474
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@c
    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@e
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@10
    invoke-interface {v1, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    #@13
    .line 2475
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@15
    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    .line 2476
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@18
    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    #@1b
    move-result v4

    #@1c
    add-int/lit8 v4, v4, -0x1

    #@1e
    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    :cond_0
    :goto_0
    monitor-exit v2

    #@23
    .line 2469
    return-void

    #@24
    .line 2475
    :catchall_0
    move-exception v1

    #@25
    :try_start_4
    monitor-exit v3

    #@26
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@27
    .line 2478
    :catch_0
    move-exception v0

    #@28
    .local v0, "ignore":Landroid/os/RemoteException;
    goto :goto_0

    #@29
    .line 2471
    .end local v0    # "ignore":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method public isHeld()Z
    .locals 2

    #@0
    .prologue
    .line 2420
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@2
    monitor-enter v0

    #@3
    .line 2421
    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2420
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public release()V
    .locals 5

    #@0
    .prologue
    .line 2382
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@2
    monitor-enter v2

    #@3
    .line 2383
    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-nez v1, :cond_0

    #@f
    .line 2385
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@11
    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@13
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@15
    invoke-interface {v1, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    #@18
    .line 2386
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@1a
    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 2387
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@1d
    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    #@20
    move-result v4

    #@21
    add-int/lit8 v4, v4, -0x1

    #@23
    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@27
    .line 2391
    :goto_1
    const/4 v1, 0x0

    #@28
    :try_start_4
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    #@2a
    .line 2393
    :cond_0
    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    #@2c
    if-gez v1, :cond_2

    #@2e
    .line 2394
    new-instance v1, Ljava/lang/RuntimeException;

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "WifiLock under-locked "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4a
    .line 2382
    :catchall_0
    move-exception v1

    #@4b
    monitor-exit v2

    #@4c
    throw v1

    #@4d
    .line 2383
    :cond_1
    :try_start_5
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@4f
    if-eqz v1, :cond_0

    #@51
    goto :goto_0

    #@52
    .line 2386
    :catchall_1
    move-exception v1

    #@53
    :try_start_6
    monitor-exit v3

    #@54
    throw v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@55
    .line 2389
    :catch_0
    move-exception v0

    #@56
    .local v0, "ignore":Landroid/os/RemoteException;
    goto :goto_1

    #@57
    .end local v0    # "ignore":Landroid/os/RemoteException;
    :cond_2
    monitor-exit v2

    #@58
    .line 2381
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .param p1, "refCounted"    # Z

    #@0
    .prologue
    .line 2411
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    #@2
    .line 2410
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 2426
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@2
    monitor-enter v3

    #@3
    .line 2427
    if-eqz p1, :cond_0

    #@5
    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 2428
    const/4 p1, 0x0

    #@c
    .line 2430
    .end local p1    # "ws":Landroid/os/WorkSource;
    :cond_0
    const/4 v0, 0x1

    #@d
    .line 2431
    .local v0, "changed":Z
    if-nez p1, :cond_3

    #@f
    .line 2432
    const/4 v2, 0x0

    #@10
    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@12
    .line 2445
    .end local v0    # "changed":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    #@14
    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    if-eqz v2, :cond_2

    #@18
    .line 2447
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #@1a
    iget-object v2, v2, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@1c
    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@1e
    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@20
    invoke-interface {v2, v4, v5}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :cond_2
    :goto_1
    monitor-exit v3

    #@24
    .line 2425
    return-void

    #@25
    .line 2434
    .restart local v0    # "changed":Z
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/WorkSource;->clearNames()V

    #@28
    .line 2435
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@2a
    if-nez v2, :cond_5

    #@2c
    .line 2436
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@2e
    if-eqz v2, :cond_4

    #@30
    const/4 v0, 0x1

    #@31
    .line 2437
    :goto_2
    new-instance v2, Landroid/os/WorkSource;

    #@33
    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    #@36
    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 2426
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2

    #@3c
    .line 2436
    .restart local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x0

    #@3d
    goto :goto_2

    #@3e
    .line 2439
    :cond_5
    :try_start_3
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@40
    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    #@43
    move-result v0

    #@44
    .line 2440
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    #@46
    .line 2441
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@48
    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 2448
    .end local v0    # "changed":Z
    :catch_0
    move-exception v1

    #@4d
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 2456
    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    #@2
    monitor-enter v4

    #@3
    .line 2457
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@6
    move-result v3

    #@7
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 2458
    .local v0, "s1":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    const-string/jumbo v1, "held; "

    #@12
    .line 2459
    .local v1, "s2":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 2460
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "refcounted: refcount = "

    #@1e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    iget v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    #@24
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 2464
    .local v2, "s3":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "WifiLock{ "

    #@34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v5, "; "

    #@3f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string/jumbo v5, " }"

    #@4e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    move-result-object v3

    #@56
    monitor-exit v4

    #@57
    return-object v3

    #@58
    .line 2458
    .end local v1    # "s2":Ljava/lang/String;
    .end local v2    # "s3":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""

    #@5b
    .restart local v1    # "s2":Ljava/lang/String;
    goto :goto_0

    #@5c
    .line 2462
    :cond_1
    const-string/jumbo v2, "not refcounted"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    .restart local v2    # "s3":Ljava/lang/String;
    goto :goto_1

    #@60
    .line 2456
    .end local v0    # "s1":Ljava/lang/String;
    .end local v1    # "s2":Ljava/lang/String;
    .end local v2    # "s3":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@61
    monitor-exit v4

    #@62
    throw v3
.end method
