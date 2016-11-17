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
.field final synthetic this$0:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/locks/StampedLock;

    #@0
    .prologue
    .line 866
    iput-object p1, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 1

    #@0
    .prologue
    .line 867
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    #@5
    return-void
.end method

.method public lockInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 869
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLockInterruptibly()J

    #@5
    .line 868
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    #@0
    .prologue
    .line 878
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public tryLock()Z
    .locals 4

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock()J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    #@0
    .prologue
    .line 876
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->unstampedUnlockWrite()V

    #@5
    return-void
.end method
