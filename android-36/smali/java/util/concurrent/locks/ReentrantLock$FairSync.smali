.class final Ljava/util/concurrent/locks/ReentrantLock$FairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x29a554bceb4b42ecL


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 253
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist initialTryLock()Z
    .registers 6

    .line 260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 261
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getState()I

    move-result v1

    .line 262
    .local v1, "c":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1c

    .line 263
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->hasQueuedThreads()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 264
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 265
    return v3

    .line 267
    :cond_1c
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, v0, :cond_31

    .line 268
    add-int/2addr v1, v3

    if-ltz v1, :cond_29

    .line 270
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setState(I)V

    .line 271
    return v3

    .line 269
    :cond_29
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum lock count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_31
    return v2
.end method

.method protected final whitelist test-api tryAcquire(I)Z
    .registers 4
    .param p1, "acquires"    # I

    .line 280
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->hasQueuedPredecessors()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 281
    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 283
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_1c
    return v1
.end method
