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
.field private static final serialVersionUID:J = 0x45248f9a985464a6L


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    #@3
    .line 137
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountDownLatch$Sync;->setState(I)V

    #@6
    .line 136
    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected tryAcquireShared(I)I
    .locals 1
    .param p1, "acquires"    # I

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method protected tryReleaseShared(I)Z
    .locals 4
    .param p1, "releases"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    #@4
    move-result v0

    #@5
    .line 152
    .local v0, "c":I
    if-nez v0, :cond_1

    #@7
    .line 153
    return v2

    #@8
    .line 154
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@a
    .line 155
    .local v1, "nextc":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/CountDownLatch$Sync;->compareAndSetState(II)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 156
    if-nez v1, :cond_2

    #@12
    const/4 v2, 0x1

    #@13
    :cond_2
    return v2
.end method
