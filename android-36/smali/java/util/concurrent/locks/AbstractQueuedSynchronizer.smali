.class public abstract Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;,
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ExclusiveNode;,
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;,
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$SharedNode;,
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    }
.end annotation


# static fields
.field static final blacklist CANCELLED:I = -0x80000000

.field static final blacklist COND:I = 0x2

.field private static final greylist-max-o HEAD:J

.field private static final greylist-max-o STATE:J

.field private static final greylist-max-o TAIL:J

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;

.field static final blacklist WAITING:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x6655a843753f52e3L


# instance fields
.field private volatile transient greylist-max-o head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private volatile greylist-max-o state:I

.field private volatile transient greylist-max-o tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;


# direct methods
.method static bridge synthetic blacklist -$$Nest$macquireOnOOME(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;ZI)I
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireOnOOME(ZI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtryInitializeHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryInitializeHead()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;
    .registers 1

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1935
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    .line 1936
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    .line 1937
    const-class v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->STATE:J

    .line 1938
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    .line 1939
    const-string v2, "head"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->HEAD:J

    .line 1940
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    .line 1941
    const-string v2, "tail"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->TAIL:J

    .line 1943
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 1944
    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    return-void
.end method

.method private blacklist acquireOnOOME(ZI)I
    .registers 8
    .param p1, "shared"    # Z
    .param p2, "arg"    # I

    .line 771
    const-wide/16 v0, 0x1

    .line 772
    .local v0, "nanos":J
    :cond_2
    :goto_2
    const/4 v2, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v3

    if-ltz v3, :cond_13

    goto :goto_12

    :cond_c
    invoke-virtual {p0, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 773
    :goto_12
    return v2

    .line 774
    :cond_13
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Ljdk/internal/misc/Unsafe;->park(ZJ)V

    .line 775
    const-wide/32 v3, 0x40000000

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 776
    shl-long/2addr v0, v2

    goto :goto_2
.end method

.method private blacklist cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;ZZ)I
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "interrupted"    # Z
    .param p3, "interruptible"    # Z

    .line 824
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_10

    .line 825
    const/4 v1, 0x0

    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 826
    iput v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    .line 827
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v1, :cond_10

    .line 828
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cleanQueue()V

    .line 830
    :cond_10
    if-eqz p2, :cond_1c

    .line 831
    if-eqz p3, :cond_15

    .line 832
    return v0

    .line 834
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 836
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist casTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "v"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 575
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "c":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local p2    # "v":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v4, "c":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v5, "v":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private blacklist cleanQueue()V
    .registers 6

    .line 787
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "q":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v1, 0x0

    .line 788
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_4
    if-eqz v0, :cond_59

    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v2, :cond_c

    goto :goto_59

    .line 790
    :cond_c
    if-nez v1, :cond_13

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v2, v0, :cond_1c

    goto :goto_58

    :cond_13
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v0, :cond_58

    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    if-gez v2, :cond_1c

    .line 791
    goto :goto_58

    .line 792
    :cond_1c
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    if-gez v2, :cond_3e

    .line 793
    if-nez v1, :cond_29

    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->casTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_2f

    :cond_29
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->casPrev(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_58

    :goto_2f
    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v3, :cond_58

    .line 795
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->casNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 796
    iget-object v2, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v2, :cond_58

    .line 797
    invoke-static {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->signalNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_58

    .line 801
    :cond_3e
    iget-object v2, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v4, v2

    .local v4, "n":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eq v2, v0, :cond_54

    .line 802
    if-eqz v4, :cond_58

    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v3, :cond_58

    .line 803
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->casNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 804
    iget-object v2, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v2, :cond_58

    .line 805
    invoke-static {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->signalNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_58

    .line 809
    :cond_54
    move-object v1, v0

    .line 810
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_4

    .end local v0    # "q":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v4    # "n":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_58
    :goto_58
    goto :goto_1

    .line 789
    .restart local v0    # "q":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_59
    :goto_59
    return-void
.end method

.method private static blacklist signalNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 3
    .param p0, "h"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 643
    if-eqz p0, :cond_14

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_14

    iget v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    if-eqz v0, :cond_14

    .line 644
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->getAndUnsetStatus(I)I

    .line 645
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 647
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_14
    return-void
.end method

.method private static blacklist signalNextIfShared(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 3
    .param p0, "h"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 652
    if-eqz p0, :cond_18

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_18

    instance-of v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$SharedNode;

    if-eqz v0, :cond_18

    iget v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    if-eqz v0, :cond_18

    .line 654
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->getAndUnsetStatus(I)I

    .line 655
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 657
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_18
    return-void
.end method

.method private blacklist tryInitializeHead()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .registers 11

    .line 583
    const/4 v0, 0x0

    move-object v1, v0

    .line 584
    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_2
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v2, v0

    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_8

    .line 585
    return-object v2

    .line 586
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_10

    .line 587
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_2

    .line 589
    :cond_10
    if-nez v1, :cond_1d

    .line 591
    :try_start_12
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ExclusiveNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ExclusiveNode;-><init>()V
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_17} :catch_1a

    move-object v1, v0

    .line 594
    move-object v9, v1

    goto :goto_1e

    .line 592
    :catch_1a
    move-exception v0

    .line 593
    .local v0, "oome":Ljava/lang/OutOfMemoryError;
    const/4 v3, 0x0

    return-object v3

    .line 589
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :cond_1d
    move-object v9, v1

    .line 596
    .end local v1    # "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v9, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_1e
    sget-object v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->HEAD:J

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 597
    iput-object v9, v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    return-object v9

    .line 596
    :cond_2d
    move-object v1, v9

    goto :goto_2
.end method


# virtual methods
.method final blacklist acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I
    .registers 27
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "arg"    # I
    .param p3, "shared"    # Z
    .param p4, "interruptible"    # Z
    .param p5, "timed"    # Z
    .param p6, "time"    # J

    .line 672
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 673
    .local v5, "current":Ljava/lang/Thread;
    const/4 v0, 0x0

    .local v0, "spins":B
    const/4 v6, 0x0

    .line 674
    .local v6, "postSpins":B
    const/4 v7, 0x0

    .local v7, "interrupted":Z
    const/4 v8, 0x0

    .line 675
    .local v8, "first":Z
    const/4 v9, 0x0

    move-object v10, v9

    move v9, v7

    move v7, v0

    move v0, v8

    move v8, v6

    move-object/from16 v6, p1

    .line 693
    .end local p1    # "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v0, "first":Z
    .local v6, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v7, "spins":B
    .local v8, "postSpins":B
    .local v9, "interrupted":Z
    .local v10, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_18
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_43

    if-nez v6, :cond_21

    move-object v14, v12

    goto :goto_23

    :cond_21
    iget-object v14, v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    :goto_23
    move-object v10, v14

    if-eqz v14, :cond_43

    iget-object v14, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v14, v10, :cond_2c

    move v14, v13

    goto :goto_2d

    :cond_2c
    move v14, v11

    :goto_2d
    move v0, v14

    if-nez v14, :cond_40

    .line 695
    iget v14, v10, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    if-gez v14, :cond_38

    .line 696
    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cleanQueue()V

    .line 697
    goto :goto_18

    .line 698
    :cond_38
    iget-object v14, v10, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v14, :cond_40

    .line 699
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    .line 700
    goto :goto_18

    .line 703
    :cond_40
    move-object v14, v10

    move v10, v0

    goto :goto_45

    .line 693
    :cond_43
    move-object v14, v10

    move v10, v0

    .line 703
    .end local v0    # "first":Z
    .local v10, "first":Z
    .local v14, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_45
    if-nez v10, :cond_49

    if-nez v14, :cond_70

    .line 706
    :cond_49
    if-eqz v3, :cond_53

    .line 707
    :try_start_4b
    invoke-virtual {v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-ltz v0, :cond_52

    move v11, v13

    .local v11, "acquired":Z
    :cond_52
    goto :goto_58

    .line 709
    .end local v11    # "acquired":Z
    :cond_53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_f3

    move v11, v0

    .line 713
    .restart local v11    # "acquired":Z
    :goto_58
    nop

    .line 714
    if-eqz v11, :cond_70

    .line 715
    if-eqz v10, :cond_6f

    .line 716
    iput-object v12, v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 717
    iput-object v6, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 718
    iput-object v12, v14, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 719
    iput-object v12, v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 720
    if-eqz v3, :cond_6a

    .line 721
    invoke-static {v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->signalNextIfShared(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 722
    :cond_6a
    if-eqz v9, :cond_6f

    .line 723
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 725
    :cond_6f
    return v13

    .line 729
    .end local v11    # "acquired":Z
    :cond_70
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v11, v0

    .local v11, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v0, :cond_80

    .line 730
    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryInitializeHead()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    if-nez v0, :cond_e9

    .line 731
    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireOnOOME(ZI)I

    move-result v0

    return v0

    .line 732
    :cond_80
    if-nez v6, :cond_97

    .line 734
    if-eqz v3, :cond_8a

    :try_start_84
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$SharedNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$SharedNode;-><init>()V

    goto :goto_8f

    :cond_8a
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ExclusiveNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ExclusiveNode;-><init>()V
    :try_end_8f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_84 .. :try_end_8f} :catch_91

    .line 737
    .end local v6    # "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_8f
    move-object v6, v0

    goto :goto_e9

    .line 735
    .end local v0    # "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .restart local v6    # "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_91
    move-exception v0

    .line 736
    .local v0, "oome":Ljava/lang/OutOfMemoryError;
    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireOnOOME(ZI)I

    move-result v12

    return v12

    .line 738
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :cond_97
    if-nez v14, :cond_ab

    .line 739
    iput-object v5, v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 740
    invoke-virtual {v6, v11}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->setPrevRelaxed(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 741
    invoke-direct {v1, v11, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->casTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 742
    invoke-virtual {v6, v12}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->setPrevRelaxed(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_e9

    .line 744
    :cond_a8
    iput-object v6, v11, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_e9

    .line 745
    :cond_ab
    if-eqz v10, :cond_b7

    if-eqz v7, :cond_b7

    .line 746
    add-int/lit8 v0, v7, -0x1

    int-to-byte v0, v0

    .line 747
    .end local v7    # "spins":B
    .local v0, "spins":B
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    move v7, v0

    goto :goto_e9

    .line 748
    .end local v0    # "spins":B
    .restart local v7    # "spins":B
    :cond_b7
    iget v0, v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    if-nez v0, :cond_be

    .line 749
    iput v13, v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    goto :goto_e9

    .line 752
    :cond_be
    shl-int/lit8 v0, v8, 0x1

    or-int/2addr v0, v13

    int-to-byte v0, v0

    move v8, v0

    .line 753
    .end local v7    # "spins":B
    .restart local v0    # "spins":B
    if-nez p5, :cond_c9

    .line 754
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_da

    .line 755
    :cond_c9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v12, p6, v12

    move-wide v15, v12

    .local v15, "nanos":J
    const-wide/16 v17, 0x0

    cmp-long v7, v12, v17

    if-lez v7, :cond_ed

    .line 756
    move-wide v12, v15

    .end local v15    # "nanos":J
    .local v12, "nanos":J
    invoke-static {v1, v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 759
    .end local v12    # "nanos":J
    :goto_da
    invoke-virtual {v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->clearStatus()V

    .line 760
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    or-int/2addr v7, v9

    move v9, v7

    if-eqz v7, :cond_e8

    if-eqz v4, :cond_e8

    .line 761
    goto :goto_ee

    .line 763
    .end local v11    # "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_e8
    move v7, v0

    .end local v0    # "spins":B
    .restart local v7    # "spins":B
    :cond_e9
    :goto_e9
    move v0, v10

    move-object v10, v14

    goto/16 :goto_18

    .line 755
    .end local v7    # "spins":B
    .restart local v0    # "spins":B
    .restart local v11    # "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .restart local v15    # "nanos":J
    :cond_ed
    move-wide v12, v15

    .line 764
    .end local v11    # "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v15    # "nanos":J
    :goto_ee
    invoke-direct {v1, v6, v9, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;ZZ)I

    move-result v7

    return v7

    .line 710
    .end local v0    # "spins":B
    .restart local v7    # "spins":B
    :catchall_f3
    move-exception v0

    .line 711
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {v1, v6, v9, v11}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;ZZ)I

    .line 712
    throw v0
.end method

.method public final whitelist test-api acquire(I)V
    .registers 11
    .param p1, "arg"    # I

    .line 989
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 990
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    .end local p1    # "arg":I
    .local v3, "arg":I
    invoke-virtual/range {v1 .. v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    goto :goto_13

    .line 989
    .end local v3    # "arg":I
    .restart local p1    # "arg":I
    :cond_12
    move v3, p1

    .line 991
    .end local p1    # "arg":I
    .restart local v3    # "arg":I
    :goto_13
    return-void
.end method

.method public final whitelist test-api acquireInterruptibly(I)V
    .registers 11
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1009
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1010
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v3, p1

    .end local p1    # "arg":I
    .local v3, "arg":I
    invoke-virtual/range {v1 .. v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    move-result p1

    if-ltz p1, :cond_1e

    goto :goto_1c

    .end local v3    # "arg":I
    .restart local p1    # "arg":I
    :cond_1b
    move v3, p1

    .line 1012
    .end local p1    # "arg":I
    .restart local v3    # "arg":I
    :goto_1c
    return-void

    .line 1009
    .end local v3    # "arg":I
    .restart local p1    # "arg":I
    :cond_1d
    move v3, p1

    .line 1011
    .end local p1    # "arg":I
    .restart local v3    # "arg":I
    :cond_1e
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public final whitelist test-api acquireShared(I)V
    .registers 11
    .param p1, "arg"    # I

    .line 1078
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-gez v0, :cond_12

    .line 1079
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    .end local p1    # "arg":I
    .local v3, "arg":I
    invoke-virtual/range {v1 .. v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    goto :goto_13

    .line 1078
    .end local v3    # "arg":I
    .restart local p1    # "arg":I
    :cond_12
    move v3, p1

    .line 1080
    .end local p1    # "arg":I
    .restart local v3    # "arg":I
    :goto_13
    return-void
.end method

.method public final whitelist test-api acquireSharedInterruptibly(I)V
    .registers 11
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1097
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1098
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-gez v0, :cond_1b

    .line 1099
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move v3, p1

    .end local p1    # "arg":I
    .local v3, "arg":I
    invoke-virtual/range {v1 .. v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    move-result p1

    if-ltz p1, :cond_1e

    goto :goto_1c

    .line 1098
    .end local v3    # "arg":I
    .restart local p1    # "arg":I
    :cond_1b
    move v3, p1

    .line 1101
    .end local p1    # "arg":I
    .restart local v3    # "arg":I
    :goto_1c
    return-void

    .line 1097
    .end local v3    # "arg":I
    .restart local p1    # "arg":I
    :cond_1d
    move v3, p1

    .line 1100
    .end local p1    # "arg":I
    .restart local v3    # "arg":I
    :cond_1e
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method final greylist-max-o apparentlyFirstQueuedIsExclusive()Z
    .registers 4

    .line 1237
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_14

    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v2, v0

    .local v2, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_14

    instance-of v0, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$SharedNode;

    if-nez v0, :cond_14

    iget-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method protected final whitelist test-api compareAndSetState(II)Z
    .registers 9
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .line 569
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->STATE:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    .end local p1    # "expect":I
    .end local p2    # "update":I
    .local v4, "expect":I
    .local v5, "update":I
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method final blacklist enqueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;)V
    .registers 5
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;

    .line 607
    if-eqz p1, :cond_28

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "unpark":Z
    :cond_3
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v2, v1

    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v1, :cond_11

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryInitializeHead()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    move-object v2, v1

    if-nez v1, :cond_11

    .line 611
    const/4 v0, 0x1

    .line 612
    goto :goto_21

    .line 614
    :cond_11
    invoke-virtual {p1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->setPrevRelaxed(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 615
    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->casTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 616
    iput-object p1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 617
    iget v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    if-gez v1, :cond_21

    .line 618
    const/4 v0, 0x1

    .line 622
    .end local v2    # "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_21
    :goto_21
    if-eqz v0, :cond_28

    .line 623
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionNode;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 625
    .end local v0    # "unpark":Z
    :cond_28
    return-void
.end method

.method public final whitelist test-api getExclusiveQueuedThreads()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_17

    .line 1345
    instance-of v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$SharedNode;

    if-nez v2, :cond_14

    .line 1346
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 1347
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_14

    .line 1348
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_14
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_7

    .line 1351
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_17
    return-object v0
.end method

.method public final whitelist test-api getFirstQueuedThread()Ljava/lang/Thread;
    .registers 8

    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, "first":Ljava/lang/Thread;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v2, v1

    .local v2, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_25

    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v3, v1

    .local v3, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_14

    iget-object v1, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    move-object v0, v1

    if-eqz v1, :cond_14

    iget-object v1, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v1, :cond_25

    .line 1200
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_16
    if-eqz v1, :cond_25

    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v5, v4

    .local v5, "q":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v4, :cond_25

    .line 1201
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    move-object v6, v4

    .local v6, "w":Ljava/lang/Thread;
    if-eqz v4, :cond_23

    .line 1202
    move-object v0, v6

    .line 1200
    :cond_23
    move-object v1, v5

    goto :goto_16

    .line 1204
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v5    # "q":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v6    # "w":Ljava/lang/Thread;
    :cond_25
    return-object v0
.end method

.method public final whitelist test-api getQueueLength()I
    .registers 4

    .line 1305
    const/4 v0, 0x0

    .line 1306
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_3
    if-eqz v1, :cond_e

    .line 1307
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    if-eqz v2, :cond_b

    .line 1308
    add-int/lit8 v0, v0, 0x1

    .line 1306
    :cond_b
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_3

    .line 1310
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_e
    return v0
.end method

.method public final whitelist test-api getQueuedThreads()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_13

    .line 1327
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 1328
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_10

    .line 1329
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_10
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_7

    .line 1331
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_13
    return-object v0
.end method

.method public final whitelist test-api getSharedQueuedThreads()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_17

    .line 1365
    instance-of v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$SharedNode;

    if-eqz v2, :cond_14

    .line 1366
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 1367
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_14

    .line 1368
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_14
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_7

    .line 1371
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_17
    return-object v0
.end method

.method protected final whitelist test-api getState()I
    .registers 2

    .line 545
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    return v0
.end method

.method public final whitelist test-api getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .line 1442
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1444
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->getWaitQueueLength()I

    move-result v0

    return v0

    .line 1443
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1464
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1466
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 1465
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api hasContended()Z
    .registers 2

    .line 1180
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api hasQueuedPredecessors()Z
    .registers 5

    .line 1285
    const/4 v0, 0x0

    .line 1286
    .local v0, "first":Ljava/lang/Thread;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v2, v1

    .local v2, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_18

    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-object v3, v1

    .local v3, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_14

    iget-object v1, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    move-object v0, v1

    if-eqz v1, :cond_14

    iget-object v1, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v1, :cond_18

    .line 1289
    :cond_14
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1290
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_18
    if-eqz v0, :cond_22

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public final whitelist test-api hasQueuedThreads()Z
    .registers 4

    .line 1164
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_4
    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_11

    .line 1165
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->status:I

    if-ltz v2, :cond_e

    .line 1166
    const/4 v2, 0x1

    return v2

    .line 1164
    :cond_e
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_4

    .line 1167
    .end local v0    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v1    # "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .line 1420
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1422
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->hasWaiters()Z

    move-result v0

    return v0

    .line 1421
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist isEnqueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 629
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_2
    if-eqz v0, :cond_b

    .line 630
    if-ne v0, p1, :cond_8

    .line 631
    const/4 v1, 0x1

    return v1

    .line 629
    :cond_8
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_2

    .line 632
    .end local v0    # "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api isHeldExclusively()Z
    .registers 2

    .line 973
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api isQueued(Ljava/lang/Thread;)Z
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 1218
    if-eqz p1, :cond_11

    .line 1220
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_4
    if-eqz v0, :cond_f

    .line 1221
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waiter:Ljava/lang/Thread;

    if-ne v1, p1, :cond_c

    .line 1222
    const/4 v1, 0x1

    return v1

    .line 1220
    :cond_c
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_4

    .line 1223
    .end local v0    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 1219
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z
    .registers 3
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .line 1400
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api release(I)Z
    .registers 3
    .param p1, "arg"    # I

    .line 1059
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryRelease(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1060
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-static {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->signalNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1061
    const/4 v0, 0x1

    return v0

    .line 1063
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api releaseShared(I)Z
    .registers 3
    .param p1, "arg"    # I

    .line 1146
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryReleaseShared(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1147
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-static {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->signalNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1148
    const/4 v0, 0x1

    return v0

    .line 1150
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected final whitelist test-api setState(I)V
    .registers 2
    .param p1, "newState"    # I

    .line 554
    iput p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    .line 555
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1385
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1386
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->hasQueuedThreads()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "non"

    goto :goto_2c

    :cond_2a
    const-string v1, ""

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "empty queue]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1384
    return-object v0
.end method

.method protected whitelist test-api tryAcquire(I)Z
    .registers 3
    .param p1, "arg"    # I

    .line 868
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api tryAcquireNanos(IJ)Z
    .registers 17
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1033
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1034
    invoke-virtual/range {p0 .. p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1035
    return v1

    .line 1036
    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    const/4 v2, 0x0

    if-gtz v0, :cond_16

    .line 1037
    return v2

    .line 1038
    :cond_16
    nop

    .line 1039
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long v11, v3, p2

    .line 1038
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v5, p0

    move v7, p1

    invoke-virtual/range {v5 .. v12}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    move-result v0

    .line 1040
    .local v0, "stat":I
    if-lez v0, :cond_2a

    .line 1041
    return v1

    .line 1042
    :cond_2a
    if-nez v0, :cond_2d

    .line 1043
    return v2

    .line 1045
    .end local v0    # "stat":I
    :cond_2d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api tryAcquireShared(I)I
    .registers 3
    .param p1, "arg"    # I

    .line 930
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api tryAcquireSharedNanos(IJ)Z
    .registers 17
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1121
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1122
    invoke-virtual/range {p0 .. p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_e

    .line 1123
    return v1

    .line 1124
    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    const/4 v2, 0x0

    if-gtz v0, :cond_16

    .line 1125
    return v2

    .line 1126
    :cond_16
    nop

    .line 1127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long v11, v3, p2

    .line 1126
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v5, p0

    move v7, p1

    invoke-virtual/range {v5 .. v12}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;IZZZJ)I

    move-result v0

    .line 1128
    .local v0, "stat":I
    if-lez v0, :cond_2a

    .line 1129
    return v1

    .line 1130
    :cond_2a
    if-nez v0, :cond_2d

    .line 1131
    return v2

    .line 1133
    .end local v0    # "stat":I
    :cond_2d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api tryRelease(I)Z
    .registers 3
    .param p1, "arg"    # I

    .line 894
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api tryReleaseShared(I)Z
    .registers 3
    .param p1, "arg"    # I

    .line 955
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
