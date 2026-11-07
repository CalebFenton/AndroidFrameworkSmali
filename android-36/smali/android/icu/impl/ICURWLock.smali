.class public Landroid/icu/impl/ICURWLock;
.super Ljava/lang/Object;
.source "ICURWLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICURWLock$Stats;
    }
.end annotation


# instance fields
.field private blacklist rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private blacklist stats:Landroid/icu/impl/ICURWLock$Stats;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    return-void
.end method


# virtual methods
.method public blacklist acquireRead()V
    .registers 3

    .line 140
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    if-eqz v0, :cond_32

    .line 141
    monitor-enter p0

    .line 142
    :try_start_5
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    .line 143
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 144
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    .line 146
    :cond_1d
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 147
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    .line 149
    :cond_2d
    monitor-exit p0

    goto :goto_32

    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    throw v0

    .line 151
    :cond_32
    :goto_32
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 152
    return-void
.end method

.method public blacklist acquireWrite()V
    .registers 3

    .line 178
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    if-eqz v0, :cond_2a

    .line 179
    monitor-enter p0

    .line 180
    :try_start_5
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    .line 181
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    if-gtz v0, :cond_1d

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 182
    :cond_1d
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    .line 184
    :cond_25
    monitor-exit p0

    goto :goto_2a

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v0

    .line 186
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 187
    return-void
.end method

.method public declared-synchronized blacklist clearStats()Landroid/icu/impl/ICURWLock$Stats;
    .registers 3

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    .line 118
    .local v0, "result":Landroid/icu/impl/ICURWLock$Stats;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 119
    monitor-exit p0

    return-object v0

    .line 116
    .end local v0    # "result":Landroid/icu/impl/ICURWLock$Stats;
    .end local p0    # "this":Landroid/icu/impl/ICURWLock;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist getStats()Landroid/icu/impl/ICURWLock$Stats;
    .registers 4

    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance v0, Landroid/icu/impl/ICURWLock$Stats;

    iget-object v2, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock-IA;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-object v1, v0

    :goto_f
    monitor-exit p0

    return-object v1

    .line 126
    .end local p0    # "this":Landroid/icu/impl/ICURWLock;
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public blacklist releaseRead()V
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 164
    return-void
.end method

.method public blacklist releaseWrite()V
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 200
    return-void
.end method

.method public declared-synchronized blacklist resetStats()Landroid/icu/impl/ICURWLock$Stats;
    .registers 4

    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    .line 109
    .local v0, "result":Landroid/icu/impl/ICURWLock$Stats;
    new-instance v1, Landroid/icu/impl/ICURWLock$Stats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock-IA;)V

    iput-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 110
    monitor-exit p0

    return-object v0

    .line 107
    .end local v0    # "result":Landroid/icu/impl/ICURWLock$Stats;
    .end local p0    # "this":Landroid/icu/impl/ICURWLock;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method
