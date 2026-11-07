.class final Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
.super Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConditionNode"
.end annotation


# instance fields
.field blacklist nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api block()Z
    .registers 2

    .line 141
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_1

    .line 142
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api isReleasable()Z
    .registers 3

    .line 137
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->status:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    return v1
.end method
