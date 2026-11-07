.class abstract Landroid/app/PropertyInvalidatedCache$NonceHandler;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NonceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    }
.end annotation


# instance fields
.field private blacklist mCorkedInvalidates:I

.field private blacklist mCorks:I

.field private blacklist mInvalidated:I

.field protected final blacklist mLock:Ljava/lang/Object;

.field final blacklist mName:Ljava/lang/String;

.field protected blacklist mShadowNonce:J

.field private blacklist mTestMode:Z

.field private blacklist mWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    .line 660
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 666
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 677
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 695
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mName:Ljava/lang/String;

    .line 696
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsGlobalLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 697
    :try_start_1c
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsTestMode()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    .line 698
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist wakeAllWatchersLocked()V
    .registers 3

    .line 728
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 730
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 733
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method


# virtual methods
.method blacklist cork()V
    .registers 7

    .line 804
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 808
    return-void

    .line 811
    :cond_7
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_a
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 826
    .local v1, "numberCorks":I
    if-nez v1, :cond_24

    .line 827
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v2

    .line 828
    .local v2, "nonce":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_23

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_23

    .line 829
    const-wide/16 v4, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 831
    .end local v2    # "nonce":J
    :cond_23
    goto :goto_2a

    .line 832
    :cond_24
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 834
    :goto_2a
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 838
    .end local v1    # "numberCorks":I
    monitor-exit v0

    .line 839
    return-void

    .line 838
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v1
.end method

.method blacklist disable()V
    .registers 4

    .line 874
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 875
    return-void

    .line 877
    :cond_7
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    const-wide/16 v1, 0x1

    :try_start_c
    invoke-virtual {p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 879
    monitor-exit v0

    .line 880
    return-void

    .line 879
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw v1
.end method

.method blacklist getNonce()J
    .registers 4

    .line 706
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_3
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-eqz v1, :cond_b

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    monitor-exit v0

    return-wide v1

    .line 708
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    .line 709
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonceInternal()J

    move-result-wide v0

    return-wide v0

    .line 708
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method abstract blacklist getNonceInternal()J
.end method

.method blacklist getStats()Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    .registers 5

    .line 899
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_3
    new-instance v1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    invoke-direct {v1, v2, v3}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;-><init>(II)V

    monitor-exit v0

    return-object v1

    .line 901
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method blacklist invalidate()V
    .registers 7

    .line 763
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 767
    return-void

    .line 770
    :cond_7
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_a
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    if-lez v1, :cond_16

    .line 775
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 776
    monitor-exit v0

    return-void

    .line 779
    :cond_16
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    .line 780
    .local v1, "nonce":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_22

    .line 784
    monitor-exit v0

    return-void

    .line 789
    :cond_22
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->next()J

    move-result-wide v3

    .line 790
    .local v3, "newValue":J
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smisReservedNonce(J)Z

    move-result v5

    if-nez v5, :cond_22

    .line 798
    invoke-virtual {p0, v3, v4}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 799
    iget v5, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    .line 800
    .end local v1    # "nonce":J
    .end local v3    # "newValue":J
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_37

    throw v1
.end method

.method blacklist registerWatcher(Ljava/util/concurrent/Semaphore;)V
    .registers 4
    .param p1, "s"    # Ljava/util/concurrent/Semaphore;

    .line 740
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 742
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    .line 744
    :cond_e
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    monitor-exit v0

    .line 746
    return-void

    .line 745
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method blacklist setNonce(J)V
    .registers 5
    .param p1, "val"    # J

    .line 717
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 719
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-nez v1, :cond_c

    .line 720
    invoke-virtual {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonceInternal(J)V

    .line 722
    :cond_c
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->wakeAllWatchersLocked()V

    .line 723
    monitor-exit v0

    .line 724
    return-void

    .line 723
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method abstract blacklist setNonceInternal(J)V
.end method

.method blacklist setTestMode(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .line 887
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_3
    iput-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    .line 889
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 890
    monitor-exit v0

    .line 891
    return-void

    .line 890
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method blacklist uncork()V
    .registers 6

    .line 842
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 846
    return-void

    .line 849
    :cond_7
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_a
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 856
    .local v1, "numberCorks":I
    if-ltz v1, :cond_19

    .line 859
    if-nez v1, :cond_17

    .line 861
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 866
    .end local v1    # "numberCorks":I
    :cond_17
    monitor-exit v0

    .line 867
    return-void

    .line 857
    .restart local v1    # "numberCorks":I
    :cond_19
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cork underflow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "this":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    throw v2

    .line 866
    .end local v1    # "numberCorks":I
    .restart local p0    # "this":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_34

    throw v1
.end method

.method blacklist unregisterWatcher(Ljava/util/concurrent/Semaphore;)V
    .registers 4
    .param p1, "s"    # Ljava/util/concurrent/Semaphore;

    .line 752
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    .line 754
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 756
    :cond_c
    monitor-exit v0

    .line 757
    return-void

    .line 756
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
