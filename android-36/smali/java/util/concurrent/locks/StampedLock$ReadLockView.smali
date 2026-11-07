.class final Ljava/util/concurrent/locks/StampedLock$ReadLockView;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/StampedLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReadLockView"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/locks/StampedLock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1038
    iput-object p1, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api lock()V
    .registers 2

    .line 1039
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    return-void
.end method

.method public whitelist test-api lockInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLockInterruptibly()J

    .line 1042
    return-void
.end method

.method public whitelist test-api newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 1050
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryLock()Z
    .registers 5

    .line 1043
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryReadLock()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/StampedLock;->tryReadLock(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api unlock()V
    .registers 2

    .line 1048
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->unstampedUnlockRead()V

    return-void
.end method
