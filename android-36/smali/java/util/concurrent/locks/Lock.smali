.class public interface abstract Ljava/util/concurrent/locks/Lock;
.super Ljava/lang/Object;
.source "Lock.java"


# virtual methods
.method public abstract whitelist test-api lock()V
.end method

.method public abstract whitelist test-api lockInterruptibly()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newCondition()Ljava/util/concurrent/locks/Condition;
.end method

.method public abstract whitelist test-api tryLock()Z
.end method

.method public abstract whitelist test-api tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api unlock()V
.end method
