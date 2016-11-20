.class final Ljava/util/concurrent/Semaphore$FairSync;
.super Ljava/util/concurrent/Semaphore$Sync;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bf45e7bb79d96b0L


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "permits"    # I

    #@0
    .prologue
    .line 217
    invoke-direct {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;-><init>(I)V

    #@3
    .line 216
    return-void
.end method


# virtual methods
.method protected tryAcquireShared(I)I
    .locals 3
    .param p1, "acquires"    # I

    #@0
    .prologue
    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->hasQueuedPredecessors()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 223
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 224
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    #@b
    move-result v0

    #@c
    .line 225
    .local v0, "available":I
    sub-int v1, v0, p1

    #@e
    .line 226
    .local v1, "remaining":I
    if-ltz v1, :cond_2

    #@10
    .line 227
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    #@13
    move-result v2

    #@14
    .line 226
    if-eqz v2, :cond_0

    #@16
    .line 228
    :cond_2
    return v1
.end method
