.class public Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field static final blacklist OOME_COND_WAIT_DELAY:J = 0x989680L

.field private static final whitelist serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient blacklist firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

.field private transient blacklist lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

.field final synthetic blacklist this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1499
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist canReacquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1586
    if-eqz p1, :cond_15

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_15

    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v0, p1, :cond_13

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    .line 1587
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isEnqueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    goto :goto_16

    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_15
    const/4 v0, 0x0

    .line 1586
    :goto_16
    return v0
.end method

.method private blacklist doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;Z)V
    .registers 6
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    .param p2, "all"    # Z

    .line 1507
    nop

    :goto_1
    if-eqz p1, :cond_1e

    .line 1508
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1509
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    if-nez v0, :cond_c

    .line 1510
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1511
    :cond_c
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 1512
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enqueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)V

    .line 1513
    if-nez p2, :cond_1c

    .line 1514
    goto :goto_1e

    .line 1516
    :cond_1c
    move-object p1, v0

    .line 1517
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    goto :goto_1

    .line 1518
    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist enableWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)I
    .registers 5
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1560
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1561
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->waiter:Ljava/lang/Thread;

    .line 1562
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->setStatusRelaxed(I)V

    .line 1563
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1564
    .local v0, "last":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    if-nez v0, :cond_19

    .line 1565
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    goto :goto_1b

    .line 1567
    :cond_19
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1568
    :goto_1b
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1569
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    .line 1570
    .local v1, "savedState":I
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1571
    return v1

    .line 1573
    .end local v0    # "last":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    .end local v1    # "savedState":I
    :cond_2c
    const/high16 v0, -0x80000000

    iput v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->status:I

    .line 1574
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method private blacklist newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    .registers 6

    .line 1620
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-static {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->-$$Nest$mtryInitializeHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1622
    :try_start_8
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;-><init>()V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_d} :catch_e

    return-object v0

    .line 1623
    :catch_e
    move-exception v0

    .line 1627
    :cond_f
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    move v2, v1

    .local v2, "savedState":I
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1629
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    const-wide/32 v3, 0x989680

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljdk/internal/misc/Unsafe;->park(ZJ)V

    .line 1630
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->-$$Nest$macquireOnOOME(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;ZI)I

    .line 1631
    const/4 v0, 0x0

    return-object v0

    .line 1628
    .end local v2    # "savedState":I
    :cond_38
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method private blacklist unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)V
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1595
    if-eqz p1, :cond_a

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    if-nez v0, :cond_a

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    if-ne p1, v0, :cond_29

    .line 1596
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    const/4 v1, 0x0

    .line 1597
    .local v1, "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    :goto_d
    if-eqz v0, :cond_29

    .line 1598
    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1599
    .local v2, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->status:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_26

    .line 1600
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1601
    if-nez v1, :cond_1f

    .line 1602
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    goto :goto_21

    .line 1604
    :cond_1f
    iput-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1605
    :goto_21
    if-nez v2, :cond_27

    .line 1606
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    goto :goto_27

    .line 1608
    :cond_26
    move-object v1, v0

    .line 1609
    :cond_27
    :goto_27
    move-object v0, v2

    .line 1610
    .end local v2    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    goto :goto_d

    .line 1612
    .end local v0    # "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    .end local v1    # "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    :cond_29
    return-void
.end method


# virtual methods
.method public final whitelist test-api await()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1690
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1692
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    move-result-object v2

    .line 1693
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    if-nez v2, :cond_d

    .line 1694
    return-void

    .line 1695
    :cond_d
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)I

    move-result v3

    .line 1696
    .local v3, "savedState":I
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1697
    const/4 v0, 0x0

    .local v0, "interrupted":Z
    const/4 v1, 0x0

    .local v1, "cancelled":Z
    const/4 v4, 0x0

    move v9, v4

    .line 1698
    .local v9, "rejected":Z
    :goto_18
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 1699
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    or-int/2addr v4, v0

    move v5, v4

    .end local v0    # "interrupted":Z
    .local v5, "interrupted":Z
    const/4 v0, 0x2

    if-eqz v4, :cond_39

    .line 1700
    invoke-virtual {v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    move v1, v0

    if-eqz v0, :cond_37

    .line 1701
    move v0, v5

    move v10, v1

    goto :goto_55

    .line 1700
    :cond_37
    move v0, v5

    goto :goto_18

    .line 1702
    :cond_39
    iget v4, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->status:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_4f

    .line 1704
    if-eqz v9, :cond_44

    .line 1705
    :try_start_40
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->block()Z

    goto :goto_47

    .line 1707
    :cond_44
    invoke-static {v2}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_47
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_40 .. :try_end_47} :catch_4b
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_47} :catch_48

    .line 1712
    :goto_47
    goto :goto_52

    .line 1710
    :catch_48
    move-exception v0

    .line 1711
    .local v0, "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 1712
    .end local v5    # "interrupted":Z
    .local v0, "interrupted":Z
    goto :goto_18

    .line 1708
    .end local v0    # "interrupted":Z
    .restart local v5    # "interrupted":Z
    :catch_4b
    move-exception v0

    .line 1709
    .local v0, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v9, 0x1

    .line 1712
    .end local v0    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    move v0, v5

    goto :goto_18

    .line 1714
    :cond_4f
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    .line 1698
    :goto_52
    move v0, v5

    goto :goto_18

    .end local v5    # "interrupted":Z
    .local v0, "interrupted":Z
    :cond_54
    move v10, v1

    .line 1716
    .end local v1    # "cancelled":Z
    .local v10, "cancelled":Z
    :goto_55
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1717
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->clearStatus()V

    .line 1718
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    .line 1719
    if-eqz v0, :cond_7b

    .line 1720
    if-nez v10, :cond_72

    .line 1724
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7b

    .line 1721
    :cond_72
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)V

    .line 1722
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 1726
    :cond_7b
    :goto_7b
    return-void

    .line 1691
    .end local v0    # "interrupted":Z
    .end local v2    # "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    .end local v3    # "savedState":I
    .end local v9    # "rejected":Z
    .end local v10    # "cancelled":Z
    :cond_7c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 26
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1831
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 1832
    .local v4, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_99

    .line 1834
    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    move-result-object v8

    .line 1835
    .local v8, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    const/4 v6, 0x0

    if-nez v8, :cond_18

    .line 1836
    return v6

    .line 1837
    :cond_18
    invoke-direct {v0, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)I

    move-result v9

    .line 1838
    .local v9, "savedState":I
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-gez v7, :cond_24

    move-wide v12, v10

    goto :goto_25

    :cond_24
    move-wide v12, v4

    .line 1839
    .local v12, "nanos":J
    :goto_25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    add-long v15, v14, v12

    .line 1840
    .local v15, "deadline":J
    const/4 v7, 0x0

    .local v7, "cancelled":Z
    const/4 v14, 0x0

    .line 1841
    .local v14, "interrupted":Z
    :goto_2d
    invoke-direct {v0, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)Z

    move-result v17

    const/16 v18, 0x1

    if-nez v17, :cond_68

    .line 1842
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v17

    or-int v17, v14, v17

    move/from16 v14, v17

    if-nez v17, :cond_50

    .line 1843
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    sub-long v19, v15, v19

    move-wide/from16 v12, v19

    cmp-long v17, v19, v10

    if-gtz v17, :cond_4c

    goto :goto_50

    .line 1847
    :cond_4c
    invoke-static {v0, v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_2d

    .line 1844
    :cond_50
    :goto_50
    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v19

    and-int/lit8 v6, v19, 0x2

    if-eqz v6, :cond_5c

    move/from16 v6, v18

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    :goto_5d
    move v7, v6

    if-eqz v6, :cond_66

    .line 1845
    move v6, v7

    move-wide/from16 v19, v12

    move/from16 v21, v14

    goto :goto_6d

    .line 1844
    :cond_66
    const/4 v6, 0x0

    goto :goto_2d

    .line 1841
    :cond_68
    move v6, v7

    move-wide/from16 v19, v12

    move/from16 v21, v14

    .line 1849
    .end local v7    # "cancelled":Z
    .end local v12    # "nanos":J
    .end local v14    # "interrupted":Z
    .local v6, "cancelled":Z
    .local v19, "nanos":J
    .local v21, "interrupted":Z
    :goto_6d
    invoke-virtual {v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->clearStatus()V

    .line 1850
    iget-object v7, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v14}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    .line 1851
    if-eqz v6, :cond_88

    .line 1852
    invoke-direct {v0, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)V

    .line 1853
    if-nez v21, :cond_82

    goto :goto_91

    .line 1854
    :cond_82
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 1855
    :cond_88
    if-eqz v21, :cond_91

    .line 1856
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 1857
    :cond_91
    :goto_91
    if-nez v6, :cond_96

    move/from16 v17, v18

    goto :goto_98

    :cond_96
    const/16 v17, 0x0

    :goto_98
    return v17

    .line 1833
    .end local v6    # "cancelled":Z
    .end local v8    # "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    .end local v9    # "savedState":I
    .end local v15    # "deadline":J
    .end local v19    # "nanos":J
    .end local v21    # "interrupted":Z
    :cond_99
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6
.end method

.method public final whitelist test-api awaitNanos(J)J
    .registers 17
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1743
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 1745
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    move-result-object v2

    .line 1746
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    if-nez v2, :cond_12

    .line 1747
    const-wide/32 v0, 0x989680

    sub-long v0, p1, v0

    return-wide v0

    .line 1748
    :cond_12
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)I

    move-result v3

    .line 1749
    .local v3, "savedState":I
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-gez v4, :cond_1e

    move-wide v4, v0

    goto :goto_1f

    :cond_1e
    move-wide v4, p1

    .line 1750
    .local v4, "nanos":J
    :goto_1f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v9, v6, v4

    .line 1751
    .local v9, "deadline":J
    const/4 v6, 0x0

    .local v6, "cancelled":Z
    const/4 v7, 0x0

    .line 1752
    .local v7, "interrupted":Z
    :cond_27
    :goto_27
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 1753
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    or-int/2addr v8, v7

    move v7, v8

    if-nez v8, :cond_45

    .line 1754
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v11, v9, v11

    move-wide v4, v11

    cmp-long v8, v11, v0

    if-gtz v8, :cond_41

    goto :goto_45

    .line 1758
    :cond_41
    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_27

    .line 1755
    :cond_45
    :goto_45
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v11

    and-int/2addr v8, v11

    if-eqz v8, :cond_4f

    const/4 v8, 0x1

    goto :goto_50

    :cond_4f
    const/4 v8, 0x0

    :goto_50
    move v6, v8

    if-eqz v8, :cond_27

    .line 1756
    move-wide v11, v4

    move v0, v6

    move v13, v7

    goto :goto_5a

    .line 1752
    :cond_57
    move-wide v11, v4

    move v0, v6

    move v13, v7

    .line 1760
    .end local v4    # "nanos":J
    .end local v6    # "cancelled":Z
    .end local v7    # "interrupted":Z
    .local v0, "cancelled":Z
    .local v11, "nanos":J
    .local v13, "interrupted":Z
    :goto_5a
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->clearStatus()V

    .line 1761
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    .line 1762
    if-eqz v0, :cond_75

    .line 1763
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)V

    .line 1764
    if-nez v13, :cond_6f

    goto :goto_7e

    .line 1765
    :cond_6f
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 1766
    :cond_75
    if-eqz v13, :cond_7e

    .line 1767
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1768
    :cond_7e
    :goto_7e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v9, v4

    .line 1769
    .local v4, "remaining":J
    cmp-long v1, v4, p1

    if-gtz v1, :cond_8a

    move-wide v6, v4

    goto :goto_8c

    :cond_8a
    const-wide/high16 v6, -0x8000000000000000L

    :goto_8c
    return-wide v6

    .line 1744
    .end local v0    # "cancelled":Z
    .end local v2    # "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    .end local v3    # "savedState":I
    .end local v4    # "remaining":J
    .end local v9    # "deadline":J
    .end local v11    # "nanos":J
    .end local v13    # "interrupted":Z
    :cond_8d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api awaitUninterruptibly()V
    .registers 11

    .line 1646
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    move-result-object v1

    .line 1647
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    if-nez v1, :cond_7

    .line 1648
    return-void

    .line 1649
    :cond_7
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)I

    move-result v2

    .line 1650
    .local v2, "savedState":I
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1651
    const/4 v0, 0x0

    .local v0, "interrupted":Z
    const/4 v3, 0x0

    move v8, v0

    move v9, v3

    .line 1652
    .end local v0    # "interrupted":Z
    .local v8, "interrupted":Z
    .local v9, "rejected":Z
    :goto_12
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1653
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1654
    const/4 v8, 0x1

    goto :goto_12

    .line 1655
    :cond_20
    iget v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    .line 1657
    if-eqz v9, :cond_2c

    .line 1658
    :try_start_28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->block()Z

    goto :goto_35

    .line 1660
    :cond_2c
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_2f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_28 .. :try_end_2f} :catch_33
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_35

    .line 1663
    :catch_30
    move-exception v0

    .line 1664
    .local v0, "ie":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    .end local v0    # "ie":Ljava/lang/InterruptedException;
    goto :goto_35

    .line 1661
    :catch_33
    move-exception v0

    .line 1662
    .local v0, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v9, 0x1

    .line 1665
    .end local v0    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    :goto_35
    goto :goto_12

    .line 1667
    :cond_36
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_12

    .line 1669
    :cond_3a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1670
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->clearStatus()V

    .line 1671
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    .line 1672
    if-eqz v8, :cond_54

    .line 1673
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1674
    :cond_54
    return-void
.end method

.method public final whitelist test-api awaitUntil(Ljava/util/Date;)Z
    .registers 16
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1788
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1789
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 1791
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    move-result-object v4

    .line 1792
    .local v4, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    const/4 v2, 0x0

    if-nez v4, :cond_12

    .line 1793
    return v2

    .line 1794
    :cond_12
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)I

    move-result v5

    .line 1795
    .local v5, "savedState":I
    const/4 v3, 0x0

    .local v3, "cancelled":Z
    const/4 v6, 0x0

    .line 1796
    .local v6, "interrupted":Z
    :cond_18
    :goto_18
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)Z

    move-result v7

    const/4 v11, 0x1

    if-nez v7, :cond_45

    .line 1797
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    or-int/2addr v7, v6

    move v6, v7

    if-nez v7, :cond_34

    .line 1798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-ltz v7, :cond_30

    goto :goto_34

    .line 1802
    :cond_30
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    goto :goto_18

    .line 1799
    :cond_34
    :goto_34
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_3e

    move v7, v11

    goto :goto_3f

    :cond_3e
    move v7, v2

    :goto_3f
    move v3, v7

    if-eqz v7, :cond_18

    .line 1800
    move v12, v3

    move v13, v6

    goto :goto_47

    .line 1796
    :cond_45
    move v12, v3

    move v13, v6

    .line 1804
    .end local v3    # "cancelled":Z
    .end local v6    # "interrupted":Z
    .local v12, "cancelled":Z
    .local v13, "interrupted":Z
    :goto_47
    invoke-virtual {v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->clearStatus()V

    .line 1805
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    .line 1806
    if-eqz v12, :cond_62

    .line 1807
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)V

    .line 1808
    if-nez v13, :cond_5c

    goto :goto_6b

    .line 1809
    :cond_5c
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 1810
    :cond_62
    if-eqz v13, :cond_6b

    .line 1811
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1812
    :cond_6b
    :goto_6b
    if-nez v12, :cond_6e

    move v2, v11

    :cond_6e
    return v2

    .line 1790
    .end local v4    # "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    .end local v5    # "savedState":I
    .end local v12    # "cancelled":Z
    .end local v13    # "interrupted":Z
    :cond_6f
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method protected final whitelist test-api getWaitQueueLength()I
    .registers 4

    .line 1900
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1902
    const/4 v0, 0x0

    .line 1903
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    :goto_b
    if-eqz v1, :cond_18

    .line 1904
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->status:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_15

    .line 1905
    add-int/lit8 v0, v0, 0x1

    .line 1903
    :cond_15
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    goto :goto_b

    .line 1907
    .end local v1    # "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    :cond_18
    return v0

    .line 1901
    .end local v0    # "n":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api getWaitingThreads()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1923
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    :goto_f
    if-eqz v1, :cond_21

    .line 1924
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->status:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1e

    .line 1925
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->waiter:Ljava/lang/Thread;

    .line 1926
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_1e

    .line 1927
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_1e
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    goto :goto_f

    .line 1930
    .end local v1    # "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    :cond_21
    return-object v0

    .line 1921
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    :cond_22
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api hasWaiters()Z
    .registers 3

    .line 1881
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1883
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    :goto_a
    if-eqz v0, :cond_17

    .line 1884
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->status:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_14

    .line 1885
    const/4 v1, 0x1

    return v1

    .line 1883
    :cond_14
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    goto :goto_a

    .line 1887
    .end local v0    # "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 1882
    :cond_19
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method final greylist-max-o isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z
    .registers 3
    .param p1, "sync"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    .line 1869
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api signal()V
    .registers 3

    .line 1529
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1530
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1532
    if-eqz v0, :cond_10

    .line 1533
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;Z)V

    .line 1534
    :cond_10
    return-void

    .line 1531
    :cond_11
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api signalAll()V
    .registers 3

    .line 1544
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 1545
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1547
    if-eqz v0, :cond_10

    .line 1548
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;Z)V

    .line 1549
    :cond_10
    return-void

    .line 1546
    :cond_11
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1
.end method
