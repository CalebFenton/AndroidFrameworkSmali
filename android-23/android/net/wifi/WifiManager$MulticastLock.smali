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
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2553
    iput-object p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2554
    iput-object p2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    #@8
    .line 2555
    new-instance v0, Landroid/os/Binder;

    #@a
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@d
    iput-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    #@f
    .line 2556
    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    #@11
    .line 2557
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    #@14
    .line 2558
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    #@16
    .line 2553
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2582
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    #@3
    monitor-enter v2

    #@4
    .line 2583
    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    #@6
    if-eqz v1, :cond_2

    #@8
    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    if-ne v1, v3, :cond_1

    #@10
    .line 2585
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@12
    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@14
    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    #@16
    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    #@18
    invoke-interface {v1, v3, v4}, Landroid/net/wifi/IWifiManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    #@1b
    .line 2586
    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@1d
    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 2587
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@20
    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    #@23
    move-result v1

    #@24
    const/16 v4, 0x32

    #@26
    if-lt v1, v4, :cond_3

    #@28
    .line 2588
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@2a
    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2c
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    #@2f
    .line 2589
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@31
    .line 2590
    const-string/jumbo v4, "Exceeded maximum number of wifi locks"

    #@34
    .line 2589
    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    .line 2586
    :catchall_0
    move-exception v1

    #@39
    :try_start_3
    monitor-exit v3

    #@3a
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3b
    .line 2594
    :catch_0
    move-exception v0

    #@3c
    .line 2596
    :goto_0
    const/4 v1, 0x1

    #@3d
    :try_start_4
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3f
    :cond_1
    :goto_1
    monitor-exit v2

    #@40
    .line 2581
    return-void

    #@41
    .line 2583
    :cond_2
    :try_start_5
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@43
    if-eqz v1, :cond_0

    #@45
    goto :goto_1

    #@46
    .line 2592
    :cond_3
    :try_start_6
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@48
    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    #@4b
    move-result v4

    #@4c
    add-int/lit8 v4, v4, 0x1

    #@4e
    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@51
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@52
    goto :goto_0

    #@53
    .line 2582
    :catchall_1
    move-exception v1

    #@54
    monitor-exit v2

    #@55
    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2690
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@3
    .line 2691
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    #@7
    .line 2692
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    #@a
    .line 2689
    return-void
.end method

.method public isHeld()Z
    .locals 2

    #@0
    .prologue
    .line 2669
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    #@2
    monitor-enter v0

    #@3
    .line 2670
    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2669
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
    .line 2626
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    #@2
    monitor-enter v2

    #@3
    .line 2627
    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-nez v1, :cond_0

    #@f
    .line 2629
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@11
    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@13
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    #@16
    .line 2630
    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@18
    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 2631
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #@1b
    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    #@1e
    move-result v4

    #@1f
    add-int/lit8 v4, v4, -0x1

    #@21
    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25
    .line 2635
    :goto_1
    const/4 v1, 0x0

    #@26
    :try_start_4
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    #@28
    .line 2637
    :cond_0
    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    #@2a
    if-gez v1, :cond_2

    #@2c
    .line 2638
    new-instance v1, Ljava/lang/RuntimeException;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "MulticastLock under-locked "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 2639
    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    #@3c
    .line 2638
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@48
    .line 2626
    :catchall_0
    move-exception v1

    #@49
    monitor-exit v2

    #@4a
    throw v1

    #@4b
    .line 2627
    :cond_1
    :try_start_5
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@4d
    if-eqz v1, :cond_0

    #@4f
    goto :goto_0

    #@50
    .line 2630
    :catchall_1
    move-exception v1

    #@51
    :try_start_6
    monitor-exit v3

    #@52
    throw v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@53
    .line 2633
    :catch_0
    move-exception v0

    #@54
    .local v0, "ignore":Landroid/os/RemoteException;
    goto :goto_1

    #@55
    .end local v0    # "ignore":Landroid/os/RemoteException;
    :cond_2
    monitor-exit v2

    #@56
    .line 2625
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .param p1, "refCounted"    # Z

    #@0
    .prologue
    .line 2660
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    #@2
    .line 2659
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 2676
    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    #@2
    monitor-enter v4

    #@3
    .line 2677
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@6
    move-result v3

    #@7
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 2678
    .local v0, "s1":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    const-string/jumbo v1, "held; "

    #@12
    .line 2679
    .local v1, "s2":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 2680
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
    iget v5, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    #@24
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 2684
    .local v2, "s3":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "MulticastLock{ "

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
    .line 2678
    .end local v1    # "s2":Ljava/lang/String;
    .end local v2    # "s3":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""

    #@5b
    .restart local v1    # "s2":Ljava/lang/String;
    goto :goto_0

    #@5c
    .line 2682
    :cond_1
    const-string/jumbo v2, "not refcounted"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    .restart local v2    # "s3":Ljava/lang/String;
    goto :goto_1

    #@60
    .line 2676
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
