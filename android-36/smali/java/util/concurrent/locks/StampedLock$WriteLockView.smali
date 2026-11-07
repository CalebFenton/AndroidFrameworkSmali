.class final Ljava/util/concurrent/locks/StampedLock$WriteLockView;
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
    name = "WriteLockView"
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

    .line 1054
    iput-object p1, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api lock()V
    .registers 2

    .line 1055
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    return-void
.end method

.method public whitelist test-api lockInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLockInterruptibly()J

    .line 1058
    return-void
.end method

.method public whitelist test-api newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 1066
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryLock()Z
    .registers 5

    .line 1059
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock()J

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

    .line 1062
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)J

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

    .line 1064
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->unstampedUnlockWrite()V

    return-void
.end method
