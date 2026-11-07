.class public abstract Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;,
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ExclusiveNode;,
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;,
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$SharedNode;,
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
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

.field private static final whitelist serialVersionUID:J = 0x6655a843753f52e4L


# instance fields
.field private volatile transient blacklist head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private volatile greylist-max-o state:J

.field private volatile transient blacklist tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;


# direct methods
.method static bridge synthetic blacklist -$$Nest$macquireOnOOME(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;ZJ)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireOnOOME(ZJ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtryInitializeHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryInitializeHead()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;
    .registers 1

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1558
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    .line 1559
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    .line 1560
    const-class v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->STATE:J

    .line 1561
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    .line 1562
    const-string v2, "head"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->HEAD:J

    .line 1563
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    .line 1564
    const-string v2, "tail"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->TAIL:J

    .line 1567
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 1568
    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    return-void
.end method

.method private blacklist acquireOnOOME(ZJ)I
    .registers 11
    .param p1, "shared"    # Z
    .param p2, "arg"    # J

    .line 394
    const-wide/16 v0, 0x1

    .line 395
    .local v0, "nanos":J
    :cond_2
    :goto_2
    const/4 v2, 0x1

    if-eqz p1, :cond_10

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_17

    goto :goto_16

    :cond_10
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 396
    :goto_16
    return v2

    .line 397
    :cond_17
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Ljdk/internal/misc/Unsafe;->park(ZJ)V

    .line 398
    const-wide/32 v3, 0x40000000

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 399
    shl-long/2addr v0, v2

    goto :goto_2
.end method

.method private blacklist cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;ZZ)I
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "interrupted"    # Z
    .param p3, "interruptible"    # Z

    .line 447
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_10

    .line 448
    const/4 v1, 0x0

    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 449
    iput v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    .line 450
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_10

    .line 451
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cleanQueue()V

    .line 453
    :cond_10
    if-eqz p2, :cond_1c

    .line 454
    if-eqz p3, :cond_15

    .line 455
    return v0

    .line 457
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 459
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist casTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "v"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 197
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "c":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local p2    # "v":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v4, "c":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v5, "v":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private blacklist cleanQueue()V
    .registers 6

    .line 410
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, "q":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v1, 0x0

    .line 411
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_4
    if-eqz v0, :cond_59

    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v2, :cond_c

    goto :goto_59

    .line 413
    :cond_c
    if-nez v1, :cond_13

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v2, v0, :cond_1c

    goto :goto_58

    :cond_13
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v0, :cond_58

    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    if-gez v2, :cond_1c

    .line 414
    goto :goto_58

    .line 415
    :cond_1c
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    if-gez v2, :cond_3e

    .line 416
    if-nez v1, :cond_29

    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->casTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_2f

    :cond_29
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->casPrev(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_58

    :goto_2f
    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v3, :cond_58

    .line 418
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->casNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 419
    iget-object v2, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v2, :cond_58

    .line 420
    invoke-static {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->signalNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_58

    .line 424
    :cond_3e
    iget-object v2, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v4, v2

    .local v4, "n":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eq v2, v0, :cond_54

    .line 425
    if-eqz v4, :cond_58

    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v3, :cond_58

    .line 426
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->casNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 427
    iget-object v2, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v2, :cond_58

    .line 428
    invoke-static {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->signalNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_58

    .line 432
    :cond_54
    move-object v1, v0

    .line 433
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_4

    .end local v0    # "q":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v4    # "n":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_58
    :goto_58
    goto :goto_1

    .line 412
    .restart local v0    # "q":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_59
    :goto_59
    return-void
.end method

.method private static blacklist signalNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 3
    .param p0, "h"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 266
    if-eqz p0, :cond_14

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_14

    iget v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    if-eqz v0, :cond_14

    .line 267
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->getAndUnsetStatus(I)I

    .line 268
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 270
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_14
    return-void
.end method

.method private static blacklist signalNextIfShared(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 3
    .param p0, "h"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 275
    if-eqz p0, :cond_18

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_18

    instance-of v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$SharedNode;

    if-eqz v0, :cond_18

    iget v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    if-eqz v0, :cond_18

    .line 277
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->getAndUnsetStatus(I)I

    .line 278
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 280
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_18
    return-void
.end method

.method private blacklist tryInitializeHead()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .registers 11

    .line 205
    const/4 v0, 0x0

    move-object v1, v0

    .line 206
    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_2
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v2, v0

    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_8

    .line 207
    return-object v2

    .line 208
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_10

    .line 209
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_2

    .line 211
    :cond_10
    if-nez v1, :cond_1d

    .line 213
    :try_start_12
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ExclusiveNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ExclusiveNode;-><init>()V
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_17} :catch_1a

    move-object v1, v0

    .line 216
    move-object v9, v1

    goto :goto_1e

    .line 214
    :catch_1a
    move-exception v0

    .line 215
    .local v0, "oome":Ljava/lang/OutOfMemoryError;
    const/4 v3, 0x0

    return-object v3

    .line 211
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :cond_1d
    move-object v9, v1

    .line 218
    .end local v1    # "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v9, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_1e
    sget-object v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->HEAD:J

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 219
    iput-object v9, v5, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    return-object v9

    .line 218
    :cond_2d
    move-object v1, v9

    goto :goto_2
.end method


# virtual methods
.method final blacklist acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I
    .registers 29
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "arg"    # J
    .param p4, "shared"    # Z
    .param p5, "interruptible"    # Z
    .param p6, "timed"    # Z
    .param p7, "time"    # J

    .line 295
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 296
    .local v6, "current":Ljava/lang/Thread;
    const/4 v0, 0x0

    .local v0, "spins":B
    const/4 v7, 0x0

    .line 297
    .local v7, "postSpins":B
    const/4 v8, 0x0

    .local v8, "interrupted":Z
    const/4 v9, 0x0

    .line 298
    .local v9, "first":Z
    const/4 v10, 0x0

    move-object v11, v10

    move v10, v8

    move v8, v0

    move v0, v9

    move v9, v7

    move-object/from16 v7, p1

    .line 316
    .end local p1    # "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v0, "first":Z
    .local v7, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v8, "spins":B
    .local v9, "postSpins":B
    .local v10, "interrupted":Z
    .local v11, "pred":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_18
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v0, :cond_43

    if-nez v7, :cond_21

    move-object v15, v13

    goto :goto_23

    :cond_21
    iget-object v15, v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_23
    move-object v11, v15

    if-eqz v15, :cond_43

    iget-object v15, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v15, v11, :cond_2c

    move v15, v14

    goto :goto_2d

    :cond_2c
    move v15, v12

    :goto_2d
    move v0, v15

    if-nez v15, :cond_40

    .line 318
    iget v15, v11, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    if-gez v15, :cond_38

    .line 319
    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cleanQueue()V

    .line 320
    goto :goto_18

    .line 321
    :cond_38
    iget-object v15, v11, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v15, :cond_40

    .line 322
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    .line 323
    goto :goto_18

    .line 326
    :cond_40
    move-object v15, v11

    move v11, v0

    goto :goto_45

    .line 316
    :cond_43
    move-object v15, v11

    move v11, v0

    .line 326
    .end local v0    # "first":Z
    .local v11, "first":Z
    .local v15, "pred":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_45
    const-wide/16 v16, 0x0

    if-nez v11, :cond_4b

    if-nez v15, :cond_74

    .line 329
    :cond_4b
    if-eqz v4, :cond_57

    .line 330
    :try_start_4d
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v18

    cmp-long v0, v18, v16

    if-ltz v0, :cond_56

    move v12, v14

    .local v12, "acquired":Z
    :cond_56
    goto :goto_5c

    .line 332
    .end local v12    # "acquired":Z
    :cond_57
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_f8

    move v12, v0

    .line 336
    .restart local v12    # "acquired":Z
    :goto_5c
    nop

    .line 337
    if-eqz v12, :cond_74

    .line 338
    if-eqz v11, :cond_73

    .line 339
    iput-object v13, v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 340
    iput-object v7, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 341
    iput-object v13, v15, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 342
    iput-object v13, v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 343
    if-eqz v4, :cond_6e

    .line 344
    invoke-static {v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->signalNextIfShared(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 345
    :cond_6e
    if-eqz v10, :cond_73

    .line 346
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 348
    :cond_73
    return v14

    .line 352
    .end local v12    # "acquired":Z
    :cond_74
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v12, v0

    .local v12, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v0, :cond_84

    .line 353
    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryInitializeHead()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v0

    if-nez v0, :cond_ed

    .line 354
    invoke-direct {v1, v4, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireOnOOME(ZJ)I

    move-result v0

    return v0

    .line 355
    :cond_84
    if-nez v7, :cond_9b

    .line 357
    if-eqz v4, :cond_8e

    :try_start_88
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$SharedNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$SharedNode;-><init>()V

    goto :goto_93

    :cond_8e
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ExclusiveNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ExclusiveNode;-><init>()V
    :try_end_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_88 .. :try_end_93} :catch_95

    .line 360
    .end local v7    # "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_93
    move-object v7, v0

    goto :goto_ed

    .line 358
    .end local v0    # "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .restart local v7    # "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catch_95
    move-exception v0

    .line 359
    .local v0, "oome":Ljava/lang/OutOfMemoryError;
    invoke-direct {v1, v4, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireOnOOME(ZJ)I

    move-result v13

    return v13

    .line 361
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :cond_9b
    if-nez v15, :cond_af

    .line 362
    iput-object v6, v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 363
    invoke-virtual {v7, v12}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->setPrevRelaxed(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 364
    invoke-direct {v1, v12, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->casTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 365
    invoke-virtual {v7, v13}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->setPrevRelaxed(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_ed

    .line 367
    :cond_ac
    iput-object v7, v12, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_ed

    .line 368
    :cond_af
    if-eqz v11, :cond_bb

    if-eqz v8, :cond_bb

    .line 369
    add-int/lit8 v0, v8, -0x1

    int-to-byte v0, v0

    .line 370
    .end local v8    # "spins":B
    .local v0, "spins":B
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    move v8, v0

    goto :goto_ed

    .line 371
    .end local v0    # "spins":B
    .restart local v8    # "spins":B
    :cond_bb
    iget v0, v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    if-nez v0, :cond_c2

    .line 372
    iput v14, v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    goto :goto_ed

    .line 375
    :cond_c2
    shl-int/lit8 v0, v9, 0x1

    or-int/2addr v0, v14

    int-to-byte v0, v0

    move v9, v0

    .line 376
    .end local v8    # "spins":B
    .restart local v0    # "spins":B
    if-nez p6, :cond_cd

    .line 377
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_de

    .line 378
    :cond_cd
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long v13, p7, v13

    move-wide/from16 v18, v13

    .local v18, "nanos":J
    cmp-long v8, v13, v16

    if-lez v8, :cond_f1

    .line 379
    move-wide/from16 v13, v18

    .end local v18    # "nanos":J
    .local v13, "nanos":J
    invoke-static {v1, v13, v14}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 382
    .end local v13    # "nanos":J
    :goto_de
    invoke-virtual {v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->clearStatus()V

    .line 383
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    or-int/2addr v8, v10

    move v10, v8

    if-eqz v8, :cond_ec

    if-eqz v5, :cond_ec

    .line 384
    goto :goto_f3

    .line 386
    .end local v12    # "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_ec
    move v8, v0

    .end local v0    # "spins":B
    .restart local v8    # "spins":B
    :cond_ed
    :goto_ed
    move v0, v11

    move-object v11, v15

    goto/16 :goto_18

    .line 378
    .end local v8    # "spins":B
    .restart local v0    # "spins":B
    .restart local v12    # "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .restart local v18    # "nanos":J
    :cond_f1
    move-wide/from16 v13, v18

    .line 387
    .end local v12    # "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v18    # "nanos":J
    :goto_f3
    invoke-direct {v1, v7, v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;ZZ)I

    move-result v8

    return v8

    .line 333
    .end local v0    # "spins":B
    .restart local v8    # "spins":B
    :catchall_f8
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {v1, v7, v10, v12}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;ZZ)I

    .line 335
    throw v0
.end method

.method public final whitelist test-api acquire(J)V
    .registers 13
    .param p1, "arg"    # J

    .line 612
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_12

    .line 613
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v3, p1

    .end local p1    # "arg":J
    .local v3, "arg":J
    invoke-virtual/range {v1 .. v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    goto :goto_13

    .line 612
    .end local v3    # "arg":J
    .restart local p1    # "arg":J
    :cond_12
    move-wide v3, p1

    .line 614
    .end local p1    # "arg":J
    .restart local v3    # "arg":J
    :goto_13
    return-void
.end method

.method public final whitelist test-api acquireInterruptibly(J)V
    .registers 13
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 632
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 633
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v3, p1

    .end local p1    # "arg":J
    .local v3, "arg":J
    invoke-virtual/range {v1 .. v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    move-result p1

    if-ltz p1, :cond_1e

    goto :goto_1c

    .end local v3    # "arg":J
    .restart local p1    # "arg":J
    :cond_1b
    move-wide v3, p1

    .line 635
    .end local p1    # "arg":J
    .restart local v3    # "arg":J
    :goto_1c
    return-void

    .line 632
    .end local v3    # "arg":J
    .restart local p1    # "arg":J
    :cond_1d
    move-wide v3, p1

    .line 634
    .end local p1    # "arg":J
    .restart local v3    # "arg":J
    :cond_1e
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public final whitelist test-api acquireShared(J)V
    .registers 13
    .param p1, "arg"    # J

    .line 701
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 702
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v3, p1

    .end local p1    # "arg":J
    .local v3, "arg":J
    invoke-virtual/range {v1 .. v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    goto :goto_17

    .line 701
    .end local v3    # "arg":J
    .restart local p1    # "arg":J
    :cond_16
    move-wide v3, p1

    .line 703
    .end local p1    # "arg":J
    .restart local v3    # "arg":J
    :goto_17
    return-void
.end method

.method public final whitelist test-api acquireSharedInterruptibly(J)V
    .registers 13
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 720
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    .line 721
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    .line 722
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v3, p1

    .end local p1    # "arg":J
    .local v3, "arg":J
    invoke-virtual/range {v1 .. v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    move-result p1

    if-ltz p1, :cond_22

    goto :goto_20

    .line 721
    .end local v3    # "arg":J
    .restart local p1    # "arg":J
    :cond_1f
    move-wide v3, p1

    .line 724
    .end local p1    # "arg":J
    .restart local v3    # "arg":J
    :goto_20
    return-void

    .line 720
    .end local v3    # "arg":J
    .restart local p1    # "arg":J
    :cond_21
    move-wide v3, p1

    .line 723
    .end local p1    # "arg":J
    .restart local v3    # "arg":J
    :cond_22
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method final greylist-max-o apparentlyFirstQueuedIsExclusive()Z
    .registers 4

    .line 860
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_14

    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v2, v0

    .local v2, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_14

    instance-of v0, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$SharedNode;

    if-nez v0, :cond_14

    iget-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method protected final whitelist test-api compareAndSetState(JJ)Z
    .registers 13
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .line 191
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->STATE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "expect":J
    .end local p3    # "update":J
    .local v4, "expect":J
    .local v6, "update":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method final blacklist enqueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)V
    .registers 5
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 230
    if-eqz p1, :cond_28

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "unpark":Z
    :cond_3
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v2, v1

    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v1, :cond_11

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryInitializeHead()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    move-object v2, v1

    if-nez v1, :cond_11

    .line 234
    const/4 v0, 0x1

    .line 235
    goto :goto_21

    .line 237
    :cond_11
    invoke-virtual {p1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->setPrevRelaxed(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 238
    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->casTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    iput-object p1, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 240
    iget v1, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    if-gez v1, :cond_21

    .line 241
    const/4 v0, 0x1

    .line 245
    .end local v2    # "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_21
    :goto_21
    if-eqz v0, :cond_28

    .line 246
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 248
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

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_17

    .line 968
    instance-of v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$SharedNode;

    if-nez v2, :cond_14

    .line 969
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 970
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_14

    .line 971
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_14
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_7

    .line 974
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_17
    return-object v0
.end method

.method public final whitelist test-api getFirstQueuedThread()Ljava/lang/Thread;
    .registers 8

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "first":Ljava/lang/Thread;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v2, v1

    .local v2, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_25

    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v3, v1

    .local v3, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_14

    iget-object v1, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    move-object v0, v1

    if-eqz v1, :cond_14

    iget-object v1, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v1, :cond_25

    .line 823
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_16
    if-eqz v1, :cond_25

    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v5, v4

    .local v5, "q":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v4, :cond_25

    .line 824
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    move-object v6, v4

    .local v6, "w":Ljava/lang/Thread;
    if-eqz v4, :cond_23

    .line 825
    move-object v0, v6

    .line 823
    :cond_23
    move-object v1, v5

    goto :goto_16

    .line 827
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v5    # "q":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v6    # "w":Ljava/lang/Thread;
    :cond_25
    return-object v0
.end method

.method public final whitelist test-api getQueueLength()I
    .registers 4

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_3
    if-eqz v1, :cond_e

    .line 930
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    if-eqz v2, :cond_b

    .line 931
    add-int/lit8 v0, v0, 0x1

    .line 929
    :cond_b
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_3

    .line 933
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
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

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_13

    .line 950
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 951
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_10

    .line 952
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_10
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_7

    .line 954
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
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

    .line 986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_17

    .line 988
    instance-of v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$SharedNode;

    if-eqz v2, :cond_14

    .line 989
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    .line 990
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_14

    .line 991
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_14
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_7

    .line 994
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_17
    return-object v0
.end method

.method protected final whitelist test-api getState()J
    .registers 3

    .line 167
    iget-wide v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    return-wide v0
.end method

.method public final whitelist test-api getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)I
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .line 1065
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1067
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitQueueLength()I

    move-result v0

    return v0

    .line 1066
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Ljava/util/Collection;
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1087
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1089
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 1088
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api hasContended()Z
    .registers 2

    .line 803
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

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

    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "first":Ljava/lang/Thread;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v2, v1

    .local v2, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_18

    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v3, v1

    .local v3, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_14

    iget-object v1, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    move-object v0, v1

    if-eqz v1, :cond_14

    iget-object v1, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v1, :cond_18

    .line 912
    :cond_14
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v0

    .line 913
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
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

    .line 787
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_4
    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_11

    .line 788
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->status:I

    if-ltz v2, :cond_e

    .line 789
    const/4 v2, 0x1

    return v2

    .line 787
    :cond_e
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_4

    .line 790
    .end local v0    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v1    # "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .line 1043
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1045
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->hasWaiters()Z

    move-result v0

    return v0

    .line 1044
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist isEnqueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 252
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_2
    if-eqz v0, :cond_b

    .line 253
    if-ne v0, p1, :cond_8

    .line 254
    const/4 v1, 0x1

    return v1

    .line 252
    :cond_8
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_2

    .line 255
    .end local v0    # "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api isHeldExclusively()Z
    .registers 2

    .line 596
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api isQueued(Ljava/lang/Thread;)Z
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 841
    if-eqz p1, :cond_11

    .line 843
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_4
    if-eqz v0, :cond_f

    .line 844
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waiter:Ljava/lang/Thread;

    if-ne v1, p1, :cond_c

    .line 845
    const/4 v1, 0x1

    return v1

    .line 843
    :cond_c
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_4

    .line 846
    .end local v0    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 842
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .registers 3
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .line 1023
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api release(J)Z
    .registers 4
    .param p1, "arg"    # J

    .line 682
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryRelease(J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 683
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-static {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->signalNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 684
    const/4 v0, 0x1

    return v0

    .line 686
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api releaseShared(J)Z
    .registers 4
    .param p1, "arg"    # J

    .line 769
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryReleaseShared(J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 770
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-static {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->signalNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 771
    const/4 v0, 0x1

    return v0

    .line 773
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected final whitelist test-api setState(J)V
    .registers 3
    .param p1, "newState"    # J

    .line 176
    iput-wide p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    .line 177
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1008
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1009
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedThreads()Z

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

    .line 1007
    return-object v0
.end method

.method protected whitelist test-api tryAcquire(J)Z
    .registers 4
    .param p1, "arg"    # J

    .line 491
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api tryAcquireNanos(JJ)Z
    .registers 19
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 656
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 657
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 658
    return v1

    .line 659
    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    const/4 v2, 0x0

    if-gtz v0, :cond_16

    .line 660
    return v2

    .line 661
    :cond_16
    nop

    .line 662
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long v12, v3, p3

    .line 661
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    move-wide v7, p1

    invoke-virtual/range {v5 .. v13}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    move-result v0

    .line 663
    .local v0, "stat":I
    if-lez v0, :cond_2a

    .line 664
    return v1

    .line 665
    :cond_2a
    if-nez v0, :cond_2d

    .line 666
    return v2

    .line 668
    .end local v0    # "stat":I
    :cond_2d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api tryAcquireShared(J)J
    .registers 4
    .param p1, "arg"    # J

    .line 553
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api tryAcquireSharedNanos(JJ)Z
    .registers 19
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 744
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 745
    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_12

    .line 746
    return v1

    .line 747
    :cond_12
    cmp-long v0, p3, v2

    const/4 v2, 0x0

    if-gtz v0, :cond_18

    .line 748
    return v2

    .line 749
    :cond_18
    nop

    .line 750
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long v12, v3, p3

    .line 749
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    move-wide v7, p1

    invoke-virtual/range {v5 .. v13}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    move-result v0

    .line 751
    .local v0, "stat":I
    if-lez v0, :cond_2c

    .line 752
    return v1

    .line 753
    :cond_2c
    if-nez v0, :cond_2f

    .line 754
    return v2

    .line 756
    .end local v0    # "stat":I
    :cond_2f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api tryRelease(J)Z
    .registers 4
    .param p1, "arg"    # J

    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api tryReleaseShared(J)Z
    .registers 4
    .param p1, "arg"    # J

    .line 578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
