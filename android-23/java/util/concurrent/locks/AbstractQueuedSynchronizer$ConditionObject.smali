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
.field private static final REINTERRUPT:I = 0x1

.field private static final THROW_IE:I = -0x1

.field private static final serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@0
    .prologue
    .line 1814
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

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
    .line 1823
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .line 1825
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    #@5
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 1826
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@c
    .line 1827
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@e
    .line 1829
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/lang/Thread;I)V

    #@17
    .line 1830
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v1, :cond_1

    #@19
    .line 1831
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    .line 1834
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1d
    .line 1835
    return-object v0

    #@1e
    .line 1833
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@20
    goto :goto_0
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1976
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1977
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, -0x1

    #@f
    .line 1976
    :goto_0
    return v0

    #@10
    .line 1977
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1978
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
    .line 1846
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1847
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 1848
    :cond_1
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    .line 1849
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_2

    #@13
    .line 1850
    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    if-nez p1, :cond_0

    #@17
    .line 1844
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
    .line 1858
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    .line 1860
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .line 1861
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 1862
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@e
    .line 1863
    move-object p1, v0

    #@f
    .line 1864
    if-nez p1, :cond_0

    #@11
    .line 1857
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
    .line 1987
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 1988
    new-instance v0, Ljava/lang/InterruptedException;

    #@5
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1989
    :cond_0
    const/4 v0, 0x1

    #@a
    if-ne p1, v0, :cond_1

    #@c
    .line 1990
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    #@f
    .line 1986
    :cond_1
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1882
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .line 1883
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x0

    #@4
    .line 1884
    :goto_0
    if-eqz v1, :cond_3

    #@6
    .line 1885
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@8
    .line 1886
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@a
    const/4 v4, -0x2

    #@b
    if-eq v3, v4, :cond_2

    #@d
    .line 1887
    iput-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    .line 1888
    if-nez v2, :cond_1

    #@11
    .line 1889
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .line 1892
    :goto_1
    if-nez v0, :cond_0

    #@15
    .line 1893
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@17
    .line 1897
    :cond_0
    :goto_2
    move-object v1, v0

    #@18
    goto :goto_0

    #@19
    .line 1891
    :cond_1
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    goto :goto_1

    #@1c
    .line 1896
    :cond_2
    move-object v2, v1

    #@1d
    .local v2, "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    goto :goto_2

    #@1e
    .line 1881
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v2    # "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public final await()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 2007
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 2008
    new-instance v3, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v3

    #@c
    .line 2009
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    move-result-object v1

    #@10
    .line 2010
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@15
    move-result v2

    #@16
    .line 2011
    .local v2, "savedState":I
    const/4 v0, 0x0

    #@17
    .line 2012
    .local v0, "interruptMode":I
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@19
    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_2

    #@1f
    .line 2013
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@22
    .line 2014
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 2017
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2a
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_3

    #@30
    const/4 v3, -0x1

    #@31
    if-eq v0, v3, :cond_3

    #@33
    .line 2018
    const/4 v0, 0x1

    #@34
    .line 2019
    :cond_3
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@36
    if-eqz v3, :cond_4

    #@38
    .line 2020
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@3b
    .line 2021
    :cond_4
    if-eqz v0, :cond_5

    #@3d
    .line 2022
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@40
    .line 2006
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
    const/4 v12, 0x0

    #@1
    .line 2125
    move-object/from16 v0, p3

    #@3
    move-wide/from16 v1, p1

    #@5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@8
    move-result-wide v8

    #@9
    .line 2126
    .local v8, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@c
    move-result v13

    #@d
    if-eqz v13, :cond_0

    #@f
    .line 2127
    new-instance v12, Ljava/lang/InterruptedException;

    #@11
    invoke-direct {v12}, Ljava/lang/InterruptedException;-><init>()V

    #@14
    throw v12

    #@15
    .line 2128
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    move-result-object v7

    #@19
    .line 2129
    .local v7, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    move-object/from16 v0, p0

    #@1b
    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@1d
    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@20
    move-result v10

    #@21
    .line 2130
    .local v10, "savedState":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@24
    move-result-wide v14

    #@25
    add-long v4, v14, v8

    #@27
    .line 2131
    .local v4, "deadline":J
    const/4 v11, 0x0

    #@28
    .line 2132
    .local v11, "timedout":Z
    const/4 v6, 0x0

    #@29
    .line 2133
    .local v6, "interruptMode":I
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2d
    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@30
    move-result v13

    #@31
    if-nez v13, :cond_1

    #@33
    .line 2134
    const-wide/16 v14, 0x0

    #@35
    cmp-long v13, v8, v14

    #@37
    if-gtz v13, :cond_5

    #@39
    .line 2135
    move-object/from16 v0, p0

    #@3b
    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@3d
    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@40
    move-result v11

    #@41
    .line 2144
    .end local v11    # "timedout":Z
    :cond_1
    move-object/from16 v0, p0

    #@43
    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@45
    invoke-virtual {v13, v7, v10}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    #@48
    move-result v13

    #@49
    if-eqz v13, :cond_2

    #@4b
    const/4 v13, -0x1

    #@4c
    if-eq v6, v13, :cond_2

    #@4e
    .line 2145
    const/4 v6, 0x1

    #@4f
    .line 2146
    :cond_2
    iget-object v13, v7, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@51
    if-eqz v13, :cond_3

    #@53
    .line 2147
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@56
    .line 2148
    :cond_3
    if-eqz v6, :cond_4

    #@58
    .line 2149
    move-object/from16 v0, p0

    #@5a
    invoke-direct {v0, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@5d
    .line 2150
    :cond_4
    if-eqz v11, :cond_7

    #@5f
    :goto_1
    return v12

    #@60
    .line 2138
    .restart local v11    # "timedout":Z
    :cond_5
    const-wide/16 v14, 0x3e8

    #@62
    cmp-long v13, v8, v14

    #@64
    if-ltz v13, :cond_6

    #@66
    .line 2139
    move-object/from16 v0, p0

    #@68
    invoke-static {v0, v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@6b
    .line 2140
    :cond_6
    move-object/from16 v0, p0

    #@6d
    invoke-direct {v0, v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@70
    move-result v6

    #@71
    if-nez v6, :cond_1

    #@73
    .line 2142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@76
    move-result-wide v14

    #@77
    sub-long v8, v4, v14

    #@79
    goto :goto_0

    #@7a
    .line 2150
    .end local v11    # "timedout":Z
    :cond_7
    const/4 v12, 0x1

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
    .line 2040
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v9

    #@4
    if-eqz v9, :cond_0

    #@6
    .line 2041
    new-instance v9, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v9

    #@c
    .line 2042
    :cond_0
    move-wide v2, p1

    #@d
    .line 2043
    .local v2, "initialNanos":J
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    move-result-object v5

    #@11
    .line 2044
    .local v5, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@13
    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@16
    move-result v8

    #@17
    .line 2045
    .local v8, "savedState":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1a
    move-result-wide v10

    #@1b
    add-long v0, v10, p1

    #@1d
    .line 2046
    .local v0, "deadline":J
    const/4 v4, 0x0

    #@1e
    .line 2047
    .local v4, "interruptMode":I
    :goto_0
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@20
    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@23
    move-result v9

    #@24
    if-nez v9, :cond_1

    #@26
    .line 2048
    const-wide/16 v10, 0x0

    #@28
    cmp-long v9, p1, v10

    #@2a
    if-gtz v9, :cond_5

    #@2c
    .line 2049
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2e
    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@31
    .line 2058
    :cond_1
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@33
    invoke-virtual {v9, v5, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_2

    #@39
    const/4 v9, -0x1

    #@3a
    if-eq v4, v9, :cond_2

    #@3c
    .line 2059
    const/4 v4, 0x1

    #@3d
    .line 2060
    :cond_2
    iget-object v9, v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3f
    if-eqz v9, :cond_3

    #@41
    .line 2061
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@44
    .line 2062
    :cond_3
    if-eqz v4, :cond_4

    #@46
    .line 2063
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@49
    .line 2064
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4c
    move-result-wide v10

    #@4d
    sub-long v6, v0, v10

    #@4f
    .line 2065
    .local v6, "remaining":J
    cmp-long v9, v6, v2

    #@51
    if-gez v9, :cond_7

    #@53
    .end local v6    # "remaining":J
    :goto_1
    return-wide v6

    #@54
    .line 2052
    :cond_5
    const-wide/16 v10, 0x3e8

    #@56
    cmp-long v9, p1, v10

    #@58
    if-ltz v9, :cond_6

    #@5a
    .line 2053
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@5d
    .line 2054
    :cond_6
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@60
    move-result v4

    #@61
    if-nez v4, :cond_1

    #@63
    .line 2056
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@66
    move-result-wide v10

    #@67
    sub-long p1, v0, v10

    #@69
    goto :goto_0

    #@6a
    .line 2065
    .restart local v6    # "remaining":J
    :cond_7
    const-wide/high16 v6, -0x8000000000000000L

    #@6c
    goto :goto_1
.end method

.method public final awaitUninterruptibly()V
    .locals 4

    #@0
    .prologue
    .line 1946
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    move-result-object v1

    #@4
    .line 1947
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@6
    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@9
    move-result v2

    #@a
    .line 1948
    .local v2, "savedState":I
    const/4 v0, 0x0

    #@b
    .line 1949
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_1

    #@13
    .line 1950
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@16
    .line 1951
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 1952
    const/4 v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1954
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@20
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_2

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 1955
    :cond_2
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    #@2b
    .line 1945
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
    const/4 v6, 0x0

    #@1
    .line 2084
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@4
    move-result-wide v0

    #@5
    .line 2085
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_0

    #@b
    .line 2086
    new-instance v6, Ljava/lang/InterruptedException;

    #@d
    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    #@10
    throw v6

    #@11
    .line 2087
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    move-result-object v3

    #@15
    .line 2088
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@17
    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@1a
    move-result v4

    #@1b
    .line 2089
    .local v4, "savedState":I
    const/4 v5, 0x0

    #@1c
    .line 2090
    .local v5, "timedout":Z
    const/4 v2, 0x0

    #@1d
    .line 2091
    .local v2, "interruptMode":I
    :cond_1
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@1f
    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@22
    move-result v7

    #@23
    if-nez v7, :cond_2

    #@25
    .line 2092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@28
    move-result-wide v8

    #@29
    cmp-long v7, v8, v0

    #@2b
    if-lez v7, :cond_6

    #@2d
    .line 2093
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2f
    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@32
    move-result v5

    #@33
    .line 2100
    .end local v5    # "timedout":Z
    :cond_2
    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@35
    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_3

    #@3b
    const/4 v7, -0x1

    #@3c
    if-eq v2, v7, :cond_3

    #@3e
    .line 2101
    const/4 v2, 0x1

    #@3f
    .line 2102
    :cond_3
    iget-object v7, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@41
    if-eqz v7, :cond_4

    #@43
    .line 2103
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    #@46
    .line 2104
    :cond_4
    if-eqz v2, :cond_5

    #@48
    .line 2105
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    #@4b
    .line 2106
    :cond_5
    if-eqz v5, :cond_7

    #@4d
    :goto_1
    return v6

    #@4e
    .line 2096
    .restart local v5    # "timedout":Z
    :cond_6
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    #@51
    .line 2097
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_1

    #@57
    goto :goto_0

    #@58
    .line 2106
    .end local v5    # "timedout":Z
    :cond_7
    const/4 v6, 0x1

    #@59
    goto :goto_1
.end method

.method protected final getWaitQueueLength()I
    .locals 4

    #@0
    .prologue
    .line 2193
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 2194
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v2

    #@e
    .line 2195
    :cond_0
    const/4 v0, 0x0

    #@f
    .line 2196
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@11
    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_2

    #@13
    .line 2197
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@15
    const/4 v3, -0x2

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 2198
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 2196
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1c
    goto :goto_0

    #@1d
    .line 2200
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
    .line 2213
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 2214
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v3

    #@e
    .line 2215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 2216
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    .local v2, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_2

    #@17
    .line 2217
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@19
    const/4 v4, -0x2

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    .line 2218
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@1e
    .line 2219
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    #@20
    .line 2220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 2216
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@25
    goto :goto_0

    #@26
    .line 2223
    :cond_2
    return-object v0
.end method

.method protected final hasWaiters()Z
    .locals 3

    #@0
    .prologue
    .line 2174
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2175
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 2176
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@12
    .line 2177
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@14
    const/4 v2, -0x2

    #@15
    if-ne v1, v2, :cond_1

    #@17
    .line 2178
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 2176
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    goto :goto_0

    #@1c
    .line 2180
    :cond_2
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z
    .locals 1
    .param p1, "sync"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@0
    .prologue
    .line 2162
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

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
    .line 1912
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1913
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1914
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    .line 1915
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@12
    .line 1916
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@15
    .line 1911
    :cond_1
    return-void
.end method

.method public final signalAll()V
    .locals 2

    #@0
    .prologue
    .line 1927
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1928
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1929
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    .line 1930
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@12
    .line 1931
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@15
    .line 1926
    :cond_1
    return-void
.end method
