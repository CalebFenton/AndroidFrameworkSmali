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
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@0
    .prologue
    .line 1365
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 1374
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .line 1376
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    #@5
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 1377
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@c
    .line 1378
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@e
    .line 1381
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(I)V

    #@13
    .line 1383
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v1, :cond_1

    #@15
    .line 1384
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@17
    .line 1387
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    .line 1388
    return-object v0

    #@1a
    .line 1386
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1c
    goto :goto_0
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1529
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1530
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, -0x1

    #@f
    .line 1529
    :goto_0
    return v0

    #@10
    .line 1530
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1531
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 2
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1399
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1400
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 1401
    :cond_1
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    .line 1402
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_2

    #@13
    .line 1403
    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    if-nez p1, :cond_0

    #@17
    .line 1397
    :cond_2
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 3
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1411
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    .line 1413
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .line 1414
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 1415
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@e
    .line 1416
    move-object p1, v0

    #@f
    .line 1417
    if-nez v0, :cond_0

    #@11
    .line 1410
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
    .line 1540
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 1541
    new-instance v0, Ljava/lang/InterruptedException;

    #@5
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1542
    :cond_0
    const/4 v0, 0x1

    #@a
    if-ne p1, v0, :cond_1

    #@c
    .line 1543
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    #@f
    .line 1539
    :cond_1
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1435
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .line 1436
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x0

    #@4
    .line 1437
    :goto_0
    if-eqz v1, :cond_3

    #@6
    .line 1438
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@8
    .line 1439
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@a
    const/4 v4, -0x2

    #@b
    if-eq v3, v4, :cond_2

    #@d
    .line 1440
    iput-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    .line 1441
    if-nez v2, :cond_1

    #@11
    .line 1442
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .line 1445
    :goto_1
    if-nez v0, :cond_0

    #@15
    .line 1446
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@17
    .line 1450
    :cond_0
    :goto_2
    move-object v1, v0

    #@18
    goto :goto_0

    #@19
    .line 1444
    :cond_1
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    goto :goto_1

    #@1c
    .line 1449
    :cond_2
    move-object v2, v1

    #@1d
    .local v2, "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    goto :goto_2

    #@1e
    .line 1434
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v2    # "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
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
    .line 1560
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1561
    new-instance v4, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v4

    #@c
    .line 1562
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    move-result-object v1

    #@10
    .line 1563
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@12
    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    #@15
    move-result-wide v2

    #@16
    .line 1564
    .local v2, "savedState":J
    const/4 v0, 0x0

    #@17
    .line 1565
    .local v0, "interruptMode":I
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@19
    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_2

    #@1f
    .line 1566
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@22
    .line 1567
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 1570
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2a
    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    const/4 v4, -0x1

    #@31
    if-eq v0, v4, :cond_3

    #@33
    .line 1571
    const/4 v0, 0x1

    #@34
    .line 1572
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@36
    if-eqz v4, :cond_4

    #@38
    .line 1573
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@3b
    .line 1574
    :cond_4
    if-eqz v0, :cond_5

    #@3d
    .line 1575
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@40
    .line 1559
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
    .line 1680
    move-object/from16 v0, p3

    #@3
    move-wide/from16 v1, p1

    #@5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@8
    move-result-wide v8

    #@9
    .line 1681
    .local v8, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@c
    move-result v14

    #@d
    if-eqz v14, :cond_0

    #@f
    .line 1682
    new-instance v13, Ljava/lang/InterruptedException;

    #@11
    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    #@14
    throw v13

    #@15
    .line 1685
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@18
    move-result-wide v14

    #@19
    add-long v4, v14, v8

    #@1b
    .line 1686
    .local v4, "deadline":J
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1e
    move-result-object v7

    #@1f
    .line 1687
    .local v7, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    move-object/from16 v0, p0

    #@21
    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@23
    invoke-virtual {v14, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    #@26
    move-result-wide v10

    #@27
    .line 1688
    .local v10, "savedState":J
    const/4 v12, 0x0

    #@28
    .line 1689
    .local v12, "timedout":Z
    const/4 v6, 0x0

    #@29
    .line 1690
    .local v6, "interruptMode":I
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2d
    invoke-virtual {v14, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@30
    move-result v14

    #@31
    if-nez v14, :cond_1

    #@33
    .line 1691
    const-wide/16 v14, 0x0

    #@35
    cmp-long v14, v8, v14

    #@37
    if-gtz v14, :cond_5

    #@39
    .line 1692
    move-object/from16 v0, p0

    #@3b
    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@3d
    invoke-virtual {v14, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@40
    move-result v12

    #@41
    .line 1701
    .end local v12    # "timedout":Z
    :cond_1
    move-object/from16 v0, p0

    #@43
    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@45
    invoke-virtual {v14, v7, v10, v11}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    #@48
    move-result v14

    #@49
    if-eqz v14, :cond_2

    #@4b
    const/4 v14, -0x1

    #@4c
    if-eq v6, v14, :cond_2

    #@4e
    .line 1702
    const/4 v6, 0x1

    #@4f
    .line 1703
    :cond_2
    iget-object v14, v7, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@51
    if-eqz v14, :cond_3

    #@53
    .line 1704
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@56
    .line 1705
    :cond_3
    if-eqz v6, :cond_4

    #@58
    .line 1706
    move-object/from16 v0, p0

    #@5a
    invoke-direct {v0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@5d
    .line 1707
    :cond_4
    if-eqz v12, :cond_7

    #@5f
    :goto_1
    return v13

    #@60
    .line 1695
    .restart local v12    # "timedout":Z
    :cond_5
    const-wide/16 v14, 0x3e8

    #@62
    cmp-long v14, v8, v14

    #@64
    if-lez v14, :cond_6

    #@66
    .line 1696
    move-object/from16 v0, p0

    #@68
    invoke-static {v0, v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@6b
    .line 1697
    :cond_6
    move-object/from16 v0, p0

    #@6d
    invoke-direct {v0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@70
    move-result v6

    #@71
    if-nez v6, :cond_1

    #@73
    .line 1699
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@76
    move-result-wide v14

    #@77
    sub-long v8, v4, v14

    #@79
    goto :goto_0

    #@7a
    .line 1707
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
    .line 1593
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v10

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 1594
    new-instance v10, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v10

    #@c
    .line 1597
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@f
    move-result-wide v10

    #@10
    add-long v0, v10, p1

    #@12
    .line 1598
    .local v0, "deadline":J
    move-wide v2, p1

    #@13
    .line 1599
    .local v2, "initialNanos":J
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@16
    move-result-object v5

    #@17
    .line 1600
    .local v5, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@19
    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    #@1c
    move-result-wide v8

    #@1d
    .line 1601
    .local v8, "savedState":J
    const/4 v4, 0x0

    #@1e
    .line 1602
    .local v4, "interruptMode":I
    :goto_0
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@20
    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@23
    move-result v10

    #@24
    if-nez v10, :cond_1

    #@26
    .line 1603
    const-wide/16 v10, 0x0

    #@28
    cmp-long v10, p1, v10

    #@2a
    if-gtz v10, :cond_5

    #@2c
    .line 1604
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2e
    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@31
    .line 1613
    :cond_1
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@33
    invoke-virtual {v10, v5, v8, v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    #@36
    move-result v10

    #@37
    if-eqz v10, :cond_2

    #@39
    const/4 v10, -0x1

    #@3a
    if-eq v4, v10, :cond_2

    #@3c
    .line 1614
    const/4 v4, 0x1

    #@3d
    .line 1615
    :cond_2
    iget-object v10, v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3f
    if-eqz v10, :cond_3

    #@41
    .line 1616
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@44
    .line 1617
    :cond_3
    if-eqz v4, :cond_4

    #@46
    .line 1618
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@49
    .line 1619
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4c
    move-result-wide v10

    #@4d
    sub-long v6, v0, v10

    #@4f
    .line 1620
    .local v6, "remaining":J
    cmp-long v10, v6, v2

    #@51
    if-gtz v10, :cond_7

    #@53
    .end local v6    # "remaining":J
    :goto_1
    return-wide v6

    #@54
    .line 1607
    :cond_5
    const-wide/16 v10, 0x3e8

    #@56
    cmp-long v10, p1, v10

    #@58
    if-lez v10, :cond_6

    #@5a
    .line 1608
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@5d
    .line 1609
    :cond_6
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@60
    move-result v4

    #@61
    if-nez v4, :cond_1

    #@63
    .line 1611
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@66
    move-result-wide v10

    #@67
    sub-long p1, v0, v10

    #@69
    goto :goto_0

    #@6a
    .line 1620
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
    .line 1499
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    move-result-object v1

    #@4
    .line 1500
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@6
    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    #@9
    move-result-wide v2

    #@a
    .line 1501
    .local v2, "savedState":J
    const/4 v0, 0x0

    #@b
    .line 1502
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@d
    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1

    #@13
    .line 1503
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@16
    .line 1504
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 1505
    const/4 v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1507
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@20
    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_2

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 1508
    :cond_2
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    #@2b
    .line 1498
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
    .line 1639
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@4
    move-result-wide v0

    #@5
    .line 1640
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@8
    move-result v8

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 1641
    new-instance v7, Ljava/lang/InterruptedException;

    #@d
    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    #@10
    throw v7

    #@11
    .line 1642
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    move-result-object v3

    #@15
    .line 1643
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@17
    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    #@1a
    move-result-wide v4

    #@1b
    .line 1644
    .local v4, "savedState":J
    const/4 v6, 0x0

    #@1c
    .line 1645
    .local v6, "timedout":Z
    const/4 v2, 0x0

    #@1d
    .line 1646
    .local v2, "interruptMode":I
    :cond_1
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@1f
    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@22
    move-result v8

    #@23
    if-nez v8, :cond_2

    #@25
    .line 1647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@28
    move-result-wide v8

    #@29
    cmp-long v8, v8, v0

    #@2b
    if-ltz v8, :cond_6

    #@2d
    .line 1648
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2f
    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@32
    move-result v6

    #@33
    .line 1655
    .end local v6    # "timedout":Z
    :cond_2
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@35
    invoke-virtual {v8, v3, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_3

    #@3b
    const/4 v8, -0x1

    #@3c
    if-eq v2, v8, :cond_3

    #@3e
    .line 1656
    const/4 v2, 0x1

    #@3f
    .line 1657
    :cond_3
    iget-object v8, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@41
    if-eqz v8, :cond_4

    #@43
    .line 1658
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@46
    .line 1659
    :cond_4
    if-eqz v2, :cond_5

    #@48
    .line 1660
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@4b
    .line 1661
    :cond_5
    if-eqz v6, :cond_7

    #@4d
    :goto_1
    return v7

    #@4e
    .line 1651
    .restart local v6    # "timedout":Z
    :cond_6
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    #@51
    .line 1652
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_1

    #@57
    goto :goto_0

    #@58
    .line 1661
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
    .line 1750
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1751
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v2

    #@e
    .line 1752
    :cond_0
    const/4 v0, 0x0

    #@f
    .line 1753
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@11
    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_2

    #@13
    .line 1754
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@15
    const/4 v3, -0x2

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 1755
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 1753
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1c
    goto :goto_0

    #@1d
    .line 1757
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
    .line 1770
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1771
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v3

    #@e
    .line 1772
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 1773
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    .local v2, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_2

    #@17
    .line 1774
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@19
    const/4 v4, -0x2

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    .line 1775
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@1e
    .line 1776
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    #@20
    .line 1777
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 1773
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@25
    goto :goto_0

    #@26
    .line 1780
    :cond_2
    return-object v0
.end method

.method protected final hasWaiters()Z
    .locals 3

    #@0
    .prologue
    .line 1731
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1732
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1733
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@12
    .line 1734
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@14
    const/4 v2, -0x2

    #@15
    if-ne v1, v2, :cond_1

    #@17
    .line 1735
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 1733
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    goto :goto_0

    #@1c
    .line 1737
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
    .line 1719
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
    .line 1465
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1466
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1467
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    .line 1468
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@12
    .line 1469
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@15
    .line 1464
    :cond_1
    return-void
.end method

.method public final signalAll()V
    .locals 2

    #@0
    .prologue
    .line 1480
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1481
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1482
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    .line 1483
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@12
    .line 1484
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@15
    .line 1479
    :cond_1
    return-void
.end method
