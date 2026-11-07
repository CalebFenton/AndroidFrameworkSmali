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
.field private static final whitelist serialVersionUID:J = 0x1bf45e7bb79d96b0L


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "permits"    # I

    .line 246
    invoke-direct {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;-><init>(I)V

    .line 247
    return-void
.end method


# virtual methods
.method protected whitelist test-api tryAcquireShared(I)I
    .registers 5
    .param p1, "acquires"    # I

    .line 251
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$FairSync;->hasQueuedPredecessors()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 252
    const/4 v0, -0x1

    return v0

    .line 253
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$FairSync;->getState()I

    move-result v0

    .line 254
    .local v0, "available":I
    sub-int v1, v0, p1

    .line 255
    .local v1, "remaining":I
    if-ltz v1, :cond_19

    .line 256
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$FairSync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_19

    .line 258
    .end local v0    # "available":I
    .end local v1    # "remaining":I
    :cond_18
    goto :goto_1

    .line 257
    .restart local v0    # "available":I
    .restart local v1    # "remaining":I
    :cond_19
    :goto_19
    return v1
.end method
