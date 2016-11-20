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
.field private rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private stats:Landroid/icu/impl/ICURWLock$Stats;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@a
    .line 42
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@d
    .line 39
    return-void
.end method


# virtual methods
.method public acquireRead()V
    .locals 2

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 137
    monitor-enter p0

    #@5
    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@7
    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    #@d
    .line 139
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    #@12
    move-result v0

    #@13
    if-lez v0, :cond_0

    #@15
    .line 140
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@17
    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    #@1d
    .line 142
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@1f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 143
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@27
    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :cond_1
    monitor-exit p0

    #@2e
    .line 147
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@37
    .line 135
    return-void

    #@38
    .line 137
    :catchall_0
    move-exception v0

    #@39
    monitor-exit p0

    #@3a
    throw v0
.end method

.method public acquireWrite()V
    .locals 2

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 175
    monitor-enter p0

    #@5
    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@7
    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    #@d
    .line 177
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    #@12
    move-result v0

    #@13
    if-gtz v0, :cond_0

    #@15
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 178
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@1f
    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_1
    monitor-exit p0

    #@26
    .line 182
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@2f
    .line 173
    return-void

    #@30
    .line 175
    :catchall_0
    move-exception v0

    #@31
    monitor-exit p0

    #@32
    throw v0
.end method

.method public declared-synchronized clearStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@3
    .line 114
    .local v0, "result":Landroid/icu/impl/ICURWLock$Stats;
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 115
    return-object v0

    #@8
    .end local v0    # "result":Landroid/icu/impl/ICURWLock$Stats;
    :catchall_0
    move-exception v1

    #@9
    monitor-exit p0

    #@a
    throw v1
.end method

.method public declared-synchronized getStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :cond_0
    :try_start_1
    new-instance v0, Landroid/icu/impl/ICURWLock$Stats;

    #@a
    iget-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    goto :goto_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public releaseRead()V
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@9
    .line 158
    return-void
.end method

.method public releaseWrite()V
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@9
    .line 194
    return-void
.end method

.method public declared-synchronized resetStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    #@3
    .line 105
    .local v0, "result":Landroid/icu/impl/ICURWLock$Stats;
    new-instance v1, Landroid/icu/impl/ICURWLock$Stats;

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v1, v2, v3, v4}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;)V

    #@b
    iput-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 106
    return-object v0

    #@f
    .end local v0    # "result":Landroid/icu/impl/ICURWLock$Stats;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1
.end method
