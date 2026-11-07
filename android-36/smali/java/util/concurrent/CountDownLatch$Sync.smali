.class final Ljava/util/concurrent/CountDownLatch$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "CountDownLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sync"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x45248f9a985464a6L


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "count"    # I

    .line 163
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 164
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountDownLatch$Sync;->setState(I)V

    .line 165
    return-void
.end method


# virtual methods
.method greylist-max-o getCount()I
    .registers 2

    .line 168
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api tryAcquireShared(I)I
    .registers 3
    .param p1, "acquires"    # I

    .line 172
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method protected whitelist test-api tryReleaseShared(I)Z
    .registers 6
    .param p1, "releases"    # I

    .line 178
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    .line 179
    .local v0, "c":I
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 180
    return v1

    .line 181
    :cond_9
    add-int/lit8 v2, v0, -0x1

    .line 182
    .local v2, "nextc":I
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/CountDownLatch$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 183
    if-nez v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    .line 184
    .end local v0    # "c":I
    .end local v2    # "nextc":I
    :cond_15
    goto :goto_1
.end method
