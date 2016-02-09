.class public Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field private static final REINTERRUPT:I = 0x1

.field private static final THROW_IE:I = -0x1

.field private static final serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@0
    .prologue
    .line 1590
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 1599
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3
    .line 1601
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    #@5
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 1602
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@c
    .line 1603
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@e
    .line 1605
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>(Ljava/lang/Thread;I)V

    #@17
    .line 1606
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v1, :cond_1

    #@19
    .line 1607
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1b
    .line 1610
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1d
    .line 1611
    return-object v0

    #@1e
    .line 1609
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@20
    goto :goto_0
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 1752
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1753
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, -0x1

    #@f
    .line 1752
    :goto_0
    return v0

    #@10
    .line 1753
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1754
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 2
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1622
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1623
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@9
    .line 1624
    :cond_1
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@b
    .line 1625
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_2

    #@13
    .line 1626
    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@15
    if-nez p1, :cond_0

    #@17
    .line 1620
    :cond_2
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 3
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1634
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@5
    .line 1636
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@7
    .line 1637
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@9
    .line 1638
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@e
    .line 1639
    move-object p1, v0

    #@f
    .line 1640
    if-nez p1, :cond_0

    #@11
    .line 1633
    return-void
.end method

.method private reportInterruptAfterWait(I)V
    .locals 1
    .param p1, "interruptMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1763
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 1764
    new-instance v0, Ljava/lang/InterruptedException;

    #@5
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1765
    :cond_0
    const/4 v0, 0x1

    #@a
    if-ne p1, v0, :cond_1

    #@c
    .line 1766
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    #@f
    .line 1762
    :cond_1
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1658
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3
    .line 1659
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v2, 0x0

    #@4
    .line 1660
    :goto_0
    if-eqz v1, :cond_3

    #@6
    .line 1661
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@8
    .line 1662
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@a
    const/4 v4, -0x2

    #@b
    if-eq v3, v4, :cond_2

    #@d
    .line 1663
    iput-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@f
    .line 1664
    if-nez v2, :cond_1

    #@11
    .line 1665
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@13
    .line 1668
    :goto_1
    if-nez v0, :cond_0

    #@15
    .line 1669
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@17
    .line 1673
    :cond_0
    :goto_2
    move-object v1, v0

    #@18
    goto :goto_0

    #@19
    .line 1667
    :cond_1
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1b
    goto :goto_1

    #@1c
    .line 1672
    :cond_2
    move-object v2, v1

    #@1d
    .local v2, "trail":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    goto :goto_2

    #@1e
    .line 1657
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v2    # "trail":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public final await()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1783
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1784
    new-instance v4, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v4

    #@c
    .line 1785
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@f
    move-result-object v1

    #@10
    .line 1786
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@12
    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    #@15
    move-result-wide v2

    #@16
    .line 1787
    .local v2, "savedState":J
    const/4 v0, 0x0

    #@17
    .line 1788
    .local v0, "interruptMode":I
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@19
    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_2

    #@1f
    .line 1789
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@22
    .line 1790
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 1793
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2a
    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    const/4 v4, -0x1

    #@31
    if-eq v0, v4, :cond_3

    #@33
    .line 1794
    const/4 v0, 0x1

    #@34
    .line 1795
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@36
    if-eqz v4, :cond_4

    #@38
    .line 1796
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@3b
    .line 1797
    :cond_4
    if-eqz v0, :cond_5

    #@3d
    .line 1798
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@40
    .line 1782
    :cond_5
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1901
    move-object/from16 v0, p3

    #@3
    move-wide/from16 v1, p1

    #@5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@8
    move-result-wide v8

    #@9
    .line 1902
    .local v8, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@c
    move-result v14

    #@d
    if-eqz v14, :cond_0

    #@f
    .line 1903
    new-instance v13, Ljava/lang/InterruptedException;

    #@11
    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    #@14
    throw v13

    #@15
    .line 1904
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@18
    move-result-object v7

    #@19
    .line 1905
    .local v7, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    move-object/from16 v0, p0

    #@1b
    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@1d
    invoke-virtual {v14, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    #@20
    move-result-wide v10

    #@21
    .line 1906
    .local v10, "savedState":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@24
    move-result-wide v14

    #@25
    add-long v4, v14, v8

    #@27
    .line 1907
    .local v4, "deadline":J
    const/4 v12, 0x0

    #@28
    .line 1908
    .local v12, "timedout":Z
    const/4 v6, 0x0

    #@29
    .line 1909
    .local v6, "interruptMode":I
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2d
    invoke-virtual {v14, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@30
    move-result v14

    #@31
    if-nez v14, :cond_1

    #@33
    .line 1910
    const-wide/16 v14, 0x0

    #@35
    cmp-long v14, v8, v14

    #@37
    if-gtz v14, :cond_5

    #@39
    .line 1911
    move-object/from16 v0, p0

    #@3b
    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@3d
    invoke-virtual {v14, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@40
    move-result v12

    #@41
    .line 1920
    .end local v12    # "timedout":Z
    :cond_1
    move-object/from16 v0, p0

    #@43
    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@45
    invoke-virtual {v14, v7, v10, v11}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    #@48
    move-result v14

    #@49
    if-eqz v14, :cond_2

    #@4b
    const/4 v14, -0x1

    #@4c
    if-eq v6, v14, :cond_2

    #@4e
    .line 1921
    const/4 v6, 0x1

    #@4f
    .line 1922
    :cond_2
    iget-object v14, v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@51
    if-eqz v14, :cond_3

    #@53
    .line 1923
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@56
    .line 1924
    :cond_3
    if-eqz v6, :cond_4

    #@58
    .line 1925
    move-object/from16 v0, p0

    #@5a
    invoke-direct {v0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@5d
    .line 1926
    :cond_4
    if-eqz v12, :cond_7

    #@5f
    :goto_1
    return v13

    #@60
    .line 1914
    .restart local v12    # "timedout":Z
    :cond_5
    const-wide/16 v14, 0x3e8

    #@62
    cmp-long v14, v8, v14

    #@64
    if-ltz v14, :cond_6

    #@66
    .line 1915
    move-object/from16 v0, p0

    #@68
    invoke-static {v0, v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@6b
    .line 1916
    :cond_6
    move-object/from16 v0, p0

    #@6d
    invoke-direct {v0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    #@70
    move-result v6

    #@71
    if-nez v6, :cond_1

    #@73
    .line 1918
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@76
    move-result-wide v14

    #@77
    sub-long v8, v4, v14

    #@79
    goto :goto_0

    #@7a
    .line 1926
    .end local v12    # "timedout":Z
    :cond_7
    const/4 v13, 0x1

    #@7b
    goto :goto_1
.end method

.method public final awaitNanos(J)J
    .locals 13
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1816
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v10

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 1817
    new-instance v10, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v10

    #@c
    .line 1818
    :cond_0
    move-wide v2, p1

    #@d
    .line 1819
    .local v2, "initialNanos":J
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@10
    move-result-object v5

    #@11
    .line 1820
    .local v5, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@13
    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    #@16
    move-result-wide v8

    #@17
    .line 1821
    .local v8, "savedState":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1a
    move-result-wide v10

    #@1b
    add-long v0, v10, p1

    #@1d
    .line 1822
    .local v0, "deadline":J
    const/4 v4, 0x0

    #@1e
    .line 1823
    .local v4, "interruptMode":I
    :goto_0
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@20
    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@23
    move-result v10

    #@24
    if-nez v10, :cond_1

    #@26
    .line 1824
    const-wide/16 v10, 0x0

    #@28
    cmp-long v10, p1, v10

    #@2a
    if-gtz v10, :cond_5

    #@2c
    .line 1825
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2e
    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@31
    .line 1834
    :cond_1
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@33
    invoke-virtual {v10, v5, v8, v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    #@36
    move-result v10

    #@37
    if-eqz v10, :cond_2

    #@39
    const/4 v10, -0x1

    #@3a
    if-eq v4, v10, :cond_2

    #@3c
    .line 1835
    const/4 v4, 0x1

    #@3d
    .line 1836
    :cond_2
    iget-object v10, v5, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3f
    if-eqz v10, :cond_3

    #@41
    .line 1837
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@44
    .line 1838
    :cond_3
    if-eqz v4, :cond_4

    #@46
    .line 1839
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@49
    .line 1840
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4c
    move-result-wide v10

    #@4d
    sub-long v6, v0, v10

    #@4f
    .line 1841
    .local v6, "remaining":J
    cmp-long v10, v6, v2

    #@51
    if-gez v10, :cond_7

    #@53
    .end local v6    # "remaining":J
    :goto_1
    return-wide v6

    #@54
    .line 1828
    :cond_5
    const-wide/16 v10, 0x3e8

    #@56
    cmp-long v10, p1, v10

    #@58
    if-ltz v10, :cond_6

    #@5a
    .line 1829
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@5d
    .line 1830
    :cond_6
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    #@60
    move-result v4

    #@61
    if-nez v4, :cond_1

    #@63
    .line 1832
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@66
    move-result-wide v10

    #@67
    sub-long p1, v0, v10

    #@69
    goto :goto_0

    #@6a
    .line 1841
    .restart local v6    # "remaining":J
    :cond_7
    const-wide/high16 v6, -0x8000000000000000L

    #@6c
    goto :goto_1
.end method

.method public final awaitUninterruptibly()V
    .locals 5

    #@0
    .prologue
    .line 1722
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3
    move-result-object v1

    #@4
    .line 1723
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@6
    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    #@9
    move-result-wide v2

    #@a
    .line 1724
    .local v2, "savedState":J
    const/4 v0, 0x0

    #@b
    .line 1725
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@d
    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1

    #@13
    .line 1726
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@16
    .line 1727
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 1728
    const/4 v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1730
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@20
    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_2

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 1731
    :cond_2
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    #@2b
    .line 1721
    :cond_3
    return-void
.end method

.method public final awaitUntil(Ljava/util/Date;)Z
    .locals 10
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1860
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@4
    move-result-wide v0

    #@5
    .line 1861
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@8
    move-result v8

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 1862
    new-instance v7, Ljava/lang/InterruptedException;

    #@d
    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    #@10
    throw v7

    #@11
    .line 1863
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@14
    move-result-object v3

    #@15
    .line 1864
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@17
    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    #@1a
    move-result-wide v4

    #@1b
    .line 1865
    .local v4, "savedState":J
    const/4 v6, 0x0

    #@1c
    .line 1866
    .local v6, "timedout":Z
    const/4 v2, 0x0

    #@1d
    .line 1867
    .local v2, "interruptMode":I
    :cond_1
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@1f
    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@22
    move-result v8

    #@23
    if-nez v8, :cond_2

    #@25
    .line 1868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@28
    move-result-wide v8

    #@29
    cmp-long v8, v8, v0

    #@2b
    if-lez v8, :cond_6

    #@2d
    .line 1869
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2f
    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@32
    move-result v6

    #@33
    .line 1876
    .end local v6    # "timedout":Z
    :cond_2
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@35
    invoke-virtual {v8, v3, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_3

    #@3b
    const/4 v8, -0x1

    #@3c
    if-eq v2, v8, :cond_3

    #@3e
    .line 1877
    const/4 v2, 0x1

    #@3f
    .line 1878
    :cond_3
    iget-object v8, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@41
    if-eqz v8, :cond_4

    #@43
    .line 1879
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@46
    .line 1880
    :cond_4
    if-eqz v2, :cond_5

    #@48
    .line 1881
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@4b
    .line 1882
    :cond_5
    if-eqz v6, :cond_7

    #@4d
    :goto_1
    return v7

    #@4e
    .line 1872
    .restart local v6    # "timedout":Z
    :cond_6
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    #@51
    .line 1873
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_1

    #@57
    goto :goto_0

    #@58
    .line 1882
    .end local v6    # "timedout":Z
    :cond_7
    const/4 v7, 0x1

    #@59
    goto :goto_1
.end method

.method protected final getWaitQueueLength()I
    .locals 4

    #@0
    .prologue
    .line 1969
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1970
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v2

    #@e
    .line 1971
    :cond_0
    const/4 v0, 0x0

    #@f
    .line 1972
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@11
    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_2

    #@13
    .line 1973
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@15
    const/4 v3, -0x2

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 1974
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 1972
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1c
    goto :goto_0

    #@1d
    .line 1976
    :cond_2
    return v0
.end method

.method protected final getWaitingThreads()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1989
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1990
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v3

    #@e
    .line 1991
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 1992
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@15
    .local v2, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_2

    #@17
    .line 1993
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@19
    const/4 v4, -0x2

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    .line 1994
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@1e
    .line 1995
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    #@20
    .line 1996
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 1992
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@25
    goto :goto_0

    #@26
    .line 1999
    :cond_2
    return-object v0
.end method

.method protected final hasWaiters()Z
    .locals 3

    #@0
    .prologue
    .line 1950
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1951
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1952
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@10
    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@12
    .line 1953
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@14
    const/4 v2, -0x2

    #@15
    if-ne v1, v2, :cond_1

    #@17
    .line 1954
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 1952
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1b
    goto :goto_0

    #@1c
    .line 1956
    :cond_2
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z
    .locals 1
    .param p1, "sync"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@0
    .prologue
    .line 1938
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public final signal()V
    .locals 2

    #@0
    .prologue
    .line 1688
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1689
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1690
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@10
    .line 1691
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    #@12
    .line 1692
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@15
    .line 1687
    :cond_1
    return-void
.end method

.method public final signalAll()V
    .locals 2

    #@0
    .prologue
    .line 1703
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1704
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1705
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@10
    .line 1706
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    #@12
    .line 1707
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@15
    .line 1702
    :cond_1
    return-void
.end method
