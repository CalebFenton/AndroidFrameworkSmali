.class abstract Ljava/util/concurrent/Semaphore$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x108c7583c161b715L


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "permits"    # I

    .line 175
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 176
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;->setState(I)V

    .line 177
    return-void
.end method


# virtual methods
.method final greylist-max-o drainPermits()I
    .registers 3

    .line 217
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 218
    .local v0, "current":I
    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    .line 220
    .end local v0    # "current":I
    :cond_f
    goto :goto_1

    .line 219
    .restart local v0    # "current":I
    :cond_10
    :goto_10
    return v0
.end method

.method final greylist-max-o getPermits()I
    .registers 2

    .line 180
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    return v0
.end method

.method final greylist-max-o nonfairTryAcquireShared(I)I
    .registers 5
    .param p1, "acquires"    # I

    .line 185
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 186
    .local v0, "available":I
    sub-int v1, v0, p1

    .line 187
    .local v1, "remaining":I
    if-ltz v1, :cond_11

    .line 188
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_11

    .line 190
    .end local v0    # "available":I
    .end local v1    # "remaining":I
    :cond_10
    goto :goto_1

    .line 189
    .restart local v0    # "available":I
    .restart local v1    # "remaining":I
    :cond_11
    :goto_11
    return v1
.end method

.method final greylist-max-o reducePermits(I)V
    .registers 6
    .param p1, "reductions"    # I

    .line 206
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 207
    .local v0, "current":I
    sub-int v1, v0, p1

    .line 208
    .local v1, "next":I
    if-gt v1, v0, :cond_11

    .line 210
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 211
    return-void

    .line 212
    .end local v0    # "current":I
    .end local v1    # "next":I
    :cond_10
    goto :goto_1

    .line 209
    .restart local v0    # "current":I
    .restart local v1    # "next":I
    :cond_11
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Permit count underflow"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final whitelist test-api tryReleaseShared(I)Z
    .registers 6
    .param p1, "releases"    # I

    .line 195
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 196
    .local v0, "current":I
    add-int v1, v0, p1

    .line 197
    .local v1, "next":I
    if-lt v1, v0, :cond_12

    .line 199
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 200
    const/4 v2, 0x1

    return v2

    .line 201
    .end local v0    # "current":I
    .end local v1    # "next":I
    :cond_11
    goto :goto_1

    .line 198
    .restart local v0    # "current":I
    .restart local v1    # "next":I
    :cond_12
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum permit count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method
