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
.field private static final serialVersionUID:J = -0x29a554bceb4b42ecL


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method final lock()V
    .locals 1

    #@0
    .prologue
    .line 196
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->acquire(I)V

    #@4
    .line 195
    return-void
.end method

.method protected final tryAcquire(I)Z
    .locals 6
    .param p1, "acquires"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    .line 205
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getState()I

    #@9
    move-result v0

    #@a
    .line 206
    .local v0, "c":I
    if-nez v0, :cond_0

    #@c
    .line 207
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->hasQueuedPredecessors()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_2

    #@12
    .line 208
    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->compareAndSetState(II)Z

    #@15
    move-result v3

    #@16
    .line 207
    if-eqz v3, :cond_2

    #@18
    .line 209
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@1b
    .line 210
    return v5

    #@1c
    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@1f
    move-result-object v3

    #@20
    if-ne v1, v3, :cond_2

    #@22
    .line 214
    add-int v2, v0, p1

    #@24
    .line 215
    .local v2, "nextc":I
    if-gez v2, :cond_1

    #@26
    .line 216
    new-instance v3, Ljava/lang/Error;

    #@28
    const-string/jumbo v4, "Maximum lock count exceeded"

    #@2b
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 217
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setState(I)V

    #@32
    .line 218
    return v5

    #@33
    .line 220
    .end local v2    # "nextc":I
    :cond_2
    return v4
.end method
