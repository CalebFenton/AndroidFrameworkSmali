.class public Landroid/hardware/camera2/utils/CloseableLock;
.super Ljava/lang/Object;
.source "CloseableLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;,
        Landroid/hardware/camera2/utils/CloseableLock$1;
    }
.end annotation


# static fields
.field private static final VERBOSE:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile mClosed:Z

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mExclusive:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLockCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mSharedLocks:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    const-string/jumbo v0, "CloseableLock"

    #@7
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    #@9
    .line 46
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    #@b
    .line 49
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@d
    .line 56
    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@f
    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@11
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@14
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    #@1e
    .line 64
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    #@20
    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    #@23
    .line 63
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@25
    .line 87
    const-string/jumbo v0, ""

    #@28
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    #@2a
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    const-string/jumbo v0, "CloseableLock"

    #@7
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    #@9
    .line 46
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    #@b
    .line 49
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@d
    .line 56
    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@f
    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@11
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@14
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    #@1e
    .line 64
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    #@20
    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    #@23
    .line 63
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@25
    .line 96
    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    #@27
    .line 95
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CloseableLock["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 342
    return-void
.end method


# virtual methods
.method public acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 243
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 281
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 247
    return-object v3

    #@10
    .line 250
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@12
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/Integer;

    #@18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    .line 253
    .local v0, "ownedLocks":I
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@1e
    if-nez v1, :cond_1

    #@20
    if-lez v0, :cond_1

    #@22
    .line 254
    new-instance v1, Ljava/lang/IllegalStateException;

    #@24
    .line 255
    const-string/jumbo v2, "Cannot acquire exclusive lock while holding shared lock"

    #@27
    .line 254
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 280
    .end local v0    # "ownedLocks":I
    :catchall_0
    move-exception v1

    #@2c
    .line 281
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@31
    .line 280
    throw v1

    #@32
    .line 264
    .restart local v0    # "ownedLocks":I
    :cond_1
    if-nez v0, :cond_3

    #@34
    :try_start_2
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@36
    if-nez v1, :cond_2

    #@38
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@3a
    if-lez v1, :cond_3

    #@3c
    .line 265
    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    #@3e
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    #@41
    .line 268
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    if-eqz v1, :cond_1

    #@45
    .line 281
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@47
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@4a
    .line 272
    return-object v3

    #@4b
    .line 276
    :cond_3
    const/4 v1, 0x1

    #@4c
    :try_start_3
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@4e
    .line 278
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@50
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Ljava/lang/Integer;

    #@56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@59
    move-result v1

    #@5a
    add-int/lit8 v0, v1, 0x1

    #@5c
    .line 279
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@5e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    .line 281
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@67
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@6a
    .line 287
    new-instance v1, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    #@6c
    invoke-direct {v1, p0, v3}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;)V

    #@6f
    return-object v1
.end method

.method public acquireLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 172
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 175
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 208
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 179
    return-object v3

    #@10
    .line 182
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@12
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/Integer;

    #@18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    .line 185
    .local v0, "ownedLocks":I
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@1e
    if-eqz v1, :cond_1

    #@20
    if-lez v0, :cond_1

    #@22
    .line 186
    new-instance v1, Ljava/lang/IllegalStateException;

    #@24
    .line 187
    const-string/jumbo v2, "Cannot acquire shared lock while holding exclusive lock"

    #@27
    .line 186
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 207
    .end local v0    # "ownedLocks":I
    :catchall_0
    move-exception v1

    #@2c
    .line 208
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@31
    .line 207
    throw v1

    #@32
    .line 191
    .restart local v0    # "ownedLocks":I
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 192
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    #@38
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    #@3b
    .line 195
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    if-eqz v1, :cond_1

    #@3f
    .line 208
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@44
    .line 199
    return-object v3

    #@45
    .line 203
    :cond_2
    :try_start_3
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@47
    add-int/lit8 v1, v1, 0x1

    #@49
    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@4b
    .line 205
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@4d
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    check-cast v1, Ljava/lang/Integer;

    #@53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@56
    move-result v1

    #@57
    add-int/lit8 v0, v1, 0x1

    #@59
    .line 206
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@5b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@62
    .line 208
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@64
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@67
    .line 214
    new-instance v1, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    #@69
    invoke-direct {v1, p0, v3}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;)V

    #@6c
    return-object v1
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 112
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 116
    return-void

    #@6
    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CloseableLock;->acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    #@9
    move-result-object v0

    #@a
    .line 121
    .local v0, "scoper":Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    if-nez v0, :cond_1

    #@c
    .line 122
    return-void

    #@d
    .line 123
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@f
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/Integer;

    #@15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v1

    #@19
    if-eq v1, v2, :cond_2

    #@1b
    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1d
    .line 126
    const-string/jumbo v2, "Cannot close while one or more acquired locks are being held by this thread; release all other locks first"

    #@20
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 131
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@26
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@29
    .line 133
    const/4 v1, 0x1

    #@2a
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    #@2c
    .line 134
    const/4 v1, 0x0

    #@2d
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@2f
    .line 135
    const/4 v1, 0x0

    #@30
    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@32
    .line 136
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@34
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    #@37
    .line 139
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    #@39
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 141
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@41
    .line 111
    return-void

    #@42
    .line 140
    :catchall_0
    move-exception v1

    #@43
    .line 141
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@45
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@48
    .line 140
    throw v1
.end method

.method public releaseLock()V
    .locals 4

    #@0
    .prologue
    .line 299
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/Integer;

    #@8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v1

    #@c
    if-gtz v1, :cond_0

    #@e
    .line 300
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10
    .line 301
    const-string/jumbo v2, "Cannot release lock that was not acquired by this thread"

    #@13
    .line 300
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@19
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@1c
    .line 310
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 311
    new-instance v1, Ljava/lang/IllegalStateException;

    #@22
    const-string/jumbo v2, "Do not release after the lock has been closed"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 333
    :catchall_0
    move-exception v1

    #@2a
    .line 334
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 333
    throw v1

    #@30
    .line 314
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@32
    if-nez v1, :cond_4

    #@34
    .line 315
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@36
    add-int/lit8 v1, v1, -0x1

    #@38
    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@3a
    .line 322
    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@3c
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Ljava/lang/Integer;

    #@42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@45
    move-result v1

    #@46
    add-int/lit8 v0, v1, -0x1

    #@48
    .line 323
    .local v0, "ownedLocks":I
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    #@4a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@51
    .line 325
    if-nez v0, :cond_5

    #@53
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@55
    if-eqz v1, :cond_5

    #@57
    .line 327
    const/4 v1, 0x0

    #@58
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    #@5a
    .line 328
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    #@5c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    .line 334
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@61
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@64
    .line 298
    return-void

    #@65
    .line 317
    .end local v0    # "ownedLocks":I
    :cond_4
    :try_start_2
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@67
    if-eqz v1, :cond_2

    #@69
    .line 318
    new-instance v1, Ljava/lang/AssertionError;

    #@6b
    new-instance v2, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v3, "Too many shared locks "

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    iget v3, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@84
    throw v1

    #@85
    .line 329
    .restart local v0    # "ownedLocks":I
    :cond_5
    if-nez v0, :cond_3

    #@87
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    #@89
    if-nez v1, :cond_3

    #@8b
    .line 331
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    #@8d
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@90
    goto :goto_0
.end method
