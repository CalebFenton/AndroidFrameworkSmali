.class public Landroid/hardware/camera2/utils/CloseableLock;
.super Ljava/lang/Object;
.source "CloseableLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    }
.end annotation


# static fields
.field private static final greylist-max-o VERBOSE:Z = false


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private volatile greylist-max-o mClosed:Z

.field private final greylist-max-o mCondition:Ljava/util/concurrent/locks/Condition;

.field private greylist-max-o mExclusive:Z

.field private final greylist-max-o mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist-max-o mLockCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mSharedLocks:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "CloseableLock"

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 49
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 56
    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 63
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "CloseableLock"

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 49
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 56
    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 63
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 96
    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private greylist-max-o log(Ljava/lang/String;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/String;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloseableLock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method


# virtual methods
.method public greylist-max-o acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .registers 5

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 243
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_6b

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 247
    nop

    .line 281
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    return-object v1

    .line 250
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    .local v0, "ownedLocks":I
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v2, :cond_2c

    if-gtz v0, :cond_24

    goto :goto_2c

    .line 254
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot acquire exclusive lock while holding shared lock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/utils/CloseableLock;
    throw v1

    .line 264
    .restart local p0    # "this":Landroid/hardware/camera2/utils/CloseableLock;
    :cond_2c
    :goto_2c
    if-nez v0, :cond_46

    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v2, :cond_36

    iget v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-lez v2, :cond_46

    .line 265
    :cond_36
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 268
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_6b

    if-eqz v2, :cond_2c

    .line 272
    nop

    .line 281
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 272
    return-object v1

    .line 276
    :cond_46
    const/4 v2, 0x1

    :try_start_47
    iput-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 278
    iget-object v3, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    .line 279
    .end local v0    # "ownedLocks":I
    .local v3, "ownedLocks":I
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_6b

    .line 281
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 282
    nop

    .line 287
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock-IA;)V

    return-object v0

    .line 281
    .end local v3    # "ownedLocks":I
    :catchall_6b
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 282
    throw v0
.end method

.method public greylist-max-o acquireLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .registers 5

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 175
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_69

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 179
    nop

    .line 208
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    return-object v1

    .line 182
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    .local v0, "ownedLocks":I
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v2, :cond_2c

    if-gtz v0, :cond_24

    goto :goto_2c

    .line 186
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot acquire shared lock while holding exclusive lock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/utils/CloseableLock;
    throw v1

    .line 191
    .restart local p0    # "this":Landroid/hardware/camera2/utils/CloseableLock;
    :cond_2c
    :goto_2c
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v2, :cond_40

    .line 192
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 195
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_69

    if-eqz v2, :cond_2c

    .line 199
    nop

    .line 208
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    return-object v1

    .line 203
    :cond_40
    :try_start_40
    iget v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 205
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 206
    .end local v0    # "ownedLocks":I
    .local v2, "ownedLocks":I
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_40 .. :try_end_5d} :catchall_69

    .line 208
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 209
    nop

    .line 214
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock-IA;)V

    return-object v0

    .line 208
    .end local v2    # "ownedLocks":I
    :catchall_69
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 209
    throw v0
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 112
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    if-eqz v0, :cond_5

    .line 116
    return-void

    .line 119
    :cond_5
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CloseableLock;->acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    move-result-object v0

    .line 121
    .local v0, "scoper":Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    if-nez v0, :cond_c

    .line 122
    return-void

    .line 123
    :cond_c
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 131
    :try_start_1b
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 133
    iput-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 135
    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 136
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 139
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_38

    .line 141
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    nop

    .line 147
    return-void

    .line 141
    :catchall_38
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    throw v1

    .line 125
    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot close while one or more acquired locks are being held by this thread; release all other locks first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o releaseLock()V
    .registers 4

    .line 299
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_88

    .line 307
    :try_start_e
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 310
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    if-nez v0, :cond_79

    .line 314
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v0, :cond_22

    .line 315
    iget v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    goto :goto_26

    .line 317
    :cond_22
    iget v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-nez v0, :cond_5e

    .line 322
    :goto_26
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 323
    .local v0, "ownedLocks":I
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 325
    if-nez v0, :cond_4c

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v1, :cond_4c

    .line 327
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 328
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto :goto_57

    .line 329
    :cond_4c
    if-nez v0, :cond_57

    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-nez v1, :cond_57

    .line 331
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_57
    .catchall {:try_start_e .. :try_end_57} :catchall_81

    .line 334
    :cond_57
    :goto_57
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 335
    nop

    .line 340
    return-void

    .line 318
    .end local v0    # "ownedLocks":I
    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many shared locks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "this":Landroid/hardware/camera2/utils/CloseableLock;
    throw v0

    .line 311
    .restart local p0    # "this":Landroid/hardware/camera2/utils/CloseableLock;
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not release after the lock has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/utils/CloseableLock;
    throw v0
    :try_end_81
    .catchall {:try_start_5e .. :try_end_81} :catchall_81

    .line 334
    .restart local p0    # "this":Landroid/hardware/camera2/utils/CloseableLock;
    :catchall_81
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 335
    throw v0

    .line 300
    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release lock that was not acquired by this thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
