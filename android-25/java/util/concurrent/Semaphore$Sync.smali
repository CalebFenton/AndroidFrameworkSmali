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
.field private static final serialVersionUID:J = 0x108c7583c161b715L


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "permits"    # I

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    #@3
    .line 147
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;->setState(I)V

    #@6
    .line 146
    return-void
.end method


# virtual methods
.method final drainPermits()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 188
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    #@4
    move-result v0

    #@5
    .line 189
    .local v0, "current":I
    if-eqz v0, :cond_1

    #@7
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 190
    :cond_1
    return v0
.end method

.method final getPermits()I
    .locals 1

    #@0
    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method final nonfairTryAcquireShared(I)I
    .locals 3
    .param p1, "acquires"    # I

    #@0
    .prologue
    .line 156
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    #@3
    move-result v0

    #@4
    .line 157
    .local v0, "available":I
    sub-int v1, v0, p1

    #@6
    .line 158
    .local v1, "remaining":I
    if-ltz v1, :cond_1

    #@8
    .line 159
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    #@b
    move-result v2

    #@c
    .line 158
    if-eqz v2, :cond_0

    #@e
    .line 160
    :cond_1
    return v1
.end method

.method final reducePermits(I)V
    .locals 4
    .param p1, "reductions"    # I

    #@0
    .prologue
    .line 177
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    #@3
    move-result v0

    #@4
    .line 178
    .local v0, "current":I
    sub-int v1, v0, p1

    #@6
    .line 179
    .local v1, "next":I
    if-le v1, v0, :cond_1

    #@8
    .line 180
    new-instance v2, Ljava/lang/Error;

    #@a
    const-string/jumbo v3, "Permit count underflow"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 181
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 182
    return-void
.end method

.method protected final tryReleaseShared(I)Z
    .locals 4
    .param p1, "releases"    # I

    #@0
    .prologue
    .line 166
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    #@3
    move-result v0

    #@4
    .line 167
    .local v0, "current":I
    add-int v1, v0, p1

    #@6
    .line 168
    .local v1, "next":I
    if-ge v1, v0, :cond_1

    #@8
    .line 169
    new-instance v2, Ljava/lang/Error;

    #@a
    const-string/jumbo v3, "Maximum permit count exceeded"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 170
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 171
    const/4 v2, 0x1

    #@18
    return v2
.end method
