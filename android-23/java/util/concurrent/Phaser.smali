.class public Ljava/util/concurrent/Phaser;
.super Ljava/lang/Object;
.source "Phaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Phaser$QNode;
    }
.end annotation


# static fields
.field private static final COUNTS_MASK:J = 0xffffffffL

.field private static final EMPTY:I = 0x1

.field private static final MAX_PARTIES:I = 0xffff

.field private static final MAX_PHASE:I = 0x7fffffff

.field private static final NCPU:I

.field private static final ONE_ARRIVAL:I = 0x1

.field private static final ONE_DEREGISTER:I = 0x10001

.field private static final ONE_PARTY:I = 0x10000

.field private static final PARTIES_MASK:J = 0xffff0000L

.field private static final PARTIES_SHIFT:I = 0x10

.field private static final PHASE_SHIFT:I = 0x20

.field static final SPINS_PER_ARRIVAL:I

.field private static final TERMINATION_BIT:J = -0x8000000000000000L

.field private static final UNARRIVED_MASK:I = 0xffff

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final stateOffset:J


# instance fields
.field private final evenQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final oddQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Ljava/util/concurrent/Phaser;

.field private final root:Ljava/util/concurrent/Phaser;

.field private volatile state:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 981
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    #@7
    move-result v3

    #@8
    sput v3, Ljava/util/concurrent/Phaser;->NCPU:I

    #@a
    .line 994
    sget v3, Ljava/util/concurrent/Phaser;->NCPU:I

    #@c
    const/4 v4, 0x2

    #@d
    if-ge v3, v4, :cond_0

    #@f
    const/4 v3, 0x1

    #@10
    :goto_0
    sput v3, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    #@12
    .line 1122
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@15
    move-result-object v3

    #@16
    sput-object v3, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@18
    .line 1123
    const-class v2, Ljava/util/concurrent/Phaser;

    #@1a
    .line 1124
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@1c
    .line 1125
    const-string/jumbo v4, "state"

    #@1f
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@22
    move-result-object v4

    #@23
    .line 1124
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@26
    move-result-wide v4

    #@27
    sput-wide v4, Ljava/util/concurrent/Phaser;->stateOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1132
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@2b
    .line 230
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@2c
    .line 994
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/16 v3, 0x100

    #@2e
    goto :goto_0

    #@2f
    .line 1126
    .restart local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    #@30
    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    #@32
    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v3
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 483
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    #@5
    .line 482
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "parties"    # I

    #@0
    .prologue
    .line 496
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    #@4
    .line 495
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Phaser;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/concurrent/Phaser;

    #@0
    .prologue
    .line 505
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    #@4
    .line 504
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Phaser;I)V
    .locals 7
    .param p1, "parent"    # Ljava/util/concurrent/Phaser;
    .param p2, "parties"    # I

    #@0
    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 521
    ushr-int/lit8 v2, p2, 0x10

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 522
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v3, "Illegal number of parties"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 523
    :cond_0
    const/4 v0, 0x0

    #@11
    .line 524
    .local v0, "phase":I
    iput-object p1, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    #@13
    .line 525
    if-eqz p1, :cond_2

    #@15
    .line 526
    iget-object v1, p1, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@17
    .line 527
    .local v1, "root":Ljava/util/concurrent/Phaser;
    iput-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@19
    .line 528
    iget-object v2, v1, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@1b
    iput-object v2, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@1d
    .line 529
    iget-object v2, v1, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@1f
    iput-object v2, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@21
    .line 530
    if-eqz p2, :cond_1

    #@23
    .line 531
    const/4 v2, 0x1

    #@24
    invoke-direct {p1, v2}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    #@27
    move-result v0

    #@28
    .line 538
    .end local v1    # "root":Ljava/util/concurrent/Phaser;
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    #@2a
    const-wide/16 v2, 0x1

    #@2c
    :goto_1
    iput-wide v2, p0, Ljava/util/concurrent/Phaser;->state:J

    #@2e
    .line 520
    return-void

    #@2f
    .line 534
    :cond_2
    iput-object p0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@31
    .line 535
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    #@33
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@36
    iput-object v2, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@38
    .line 536
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    #@3a
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@3d
    iput-object v2, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@3f
    goto :goto_0

    #@40
    .line 539
    :cond_3
    int-to-long v2, v0

    #@41
    const/16 v4, 0x20

    #@43
    shl-long/2addr v2, v4

    #@44
    .line 540
    int-to-long v4, p2

    #@45
    const/16 v6, 0x10

    #@47
    shl-long/2addr v4, v6

    #@48
    .line 539
    or-long/2addr v2, v4

    #@49
    .line 541
    int-to-long v4, p2

    #@4a
    .line 539
    or-long/2addr v2, v4

    #@4b
    goto :goto_1
.end method

.method private abortWait(I)I
    .locals 8
    .param p1, "phase"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 966
    and-int/lit8 v4, p1, 0x1

    #@3
    if-nez v4, :cond_2

    #@5
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    .line 969
    .local v0, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/util/concurrent/Phaser$QNode;

    #@d
    .line 970
    .local v2, "q":Ljava/util/concurrent/Phaser$QNode;
    iget-object v4, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@f
    iget-wide v4, v4, Ljava/util/concurrent/Phaser;->state:J

    #@11
    const/16 v6, 0x20

    #@13
    ushr-long/2addr v4, v6

    #@14
    long-to-int v1, v4

    #@15
    .line 971
    .local v1, "p":I
    if-eqz v2, :cond_1

    #@17
    iget-object v3, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@19
    .local v3, "t":Ljava/lang/Thread;
    if-eqz v3, :cond_3

    #@1b
    iget v4, v2, Ljava/util/concurrent/Phaser$QNode;->phase:I

    #@1d
    if-ne v4, v1, :cond_3

    #@1f
    .line 972
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_1
    return v1

    #@20
    .line 966
    .end local v0    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .end local v1    # "p":I
    .end local v2    # "q":Ljava/util/concurrent/Phaser$QNode;
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@22
    .restart local v0    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    goto :goto_0

    #@23
    .line 973
    .restart local v1    # "p":I
    .restart local v2    # "q":Ljava/util/concurrent/Phaser$QNode;
    .restart local v3    # "t":Ljava/lang/Thread;
    :cond_3
    iget-object v4, v2, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    #@25
    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 974
    iput-object v7, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@2f
    .line 975
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@32
    goto :goto_0
.end method

.method private static arrivedOf(J)I
    .locals 4
    .param p0, "s"    # J

    #@0
    .prologue
    .line 297
    long-to-int v0, p0

    #@1
    .line 298
    .local v0, "counts":I
    const/4 v1, 0x1

    #@2
    if-ne v0, v1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_0
    return v1

    #@6
    .line 299
    :cond_0
    ushr-int/lit8 v1, v0, 0x10

    #@8
    const v2, 0xffff

    #@b
    and-int/2addr v2, v0

    #@c
    sub-int/2addr v1, v2

    #@d
    goto :goto_0
.end method

.method private badArrive(J)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # J

    #@0
    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Attempted arrival of unregistered party for "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private badRegister(J)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # J

    #@0
    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Attempt to register more than 65535 parties for "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private doArrive(I)I
    .locals 34
    .param p1, "adjust"    # I

    #@0
    .prologue
    .line 351
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@4
    move-object/from16 v32, v0

    #@6
    .line 353
    .local v32, "root":Ljava/util/concurrent/Phaser;
    :cond_0
    move-object/from16 v0, v32

    #@8
    move-object/from16 v1, p0

    #@a
    if-ne v0, v1, :cond_1

    #@c
    move-object/from16 v0, p0

    #@e
    iget-wide v8, v0, Ljava/util/concurrent/Phaser;->state:J

    #@10
    .line 354
    .local v8, "s":J
    :goto_0
    const/16 v4, 0x20

    #@12
    ushr-long v4, v8, v4

    #@14
    long-to-int v0, v4

    #@15
    move/from16 v31, v0

    #@17
    .line 355
    .local v31, "phase":I
    if-gez v31, :cond_2

    #@19
    .line 356
    return v31

    #@1a
    .line 353
    .end local v8    # "s":J
    .end local v31    # "phase":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@1d
    move-result-wide v8

    #@1e
    .restart local v8    # "s":J
    goto :goto_0

    #@1f
    .line 357
    .restart local v31    # "phase":I
    :cond_2
    long-to-int v0, v8

    #@20
    move/from16 v28, v0

    #@22
    .line 358
    .local v28, "counts":I
    const/4 v4, 0x1

    #@23
    move/from16 v0, v28

    #@25
    if-ne v0, v4, :cond_3

    #@27
    const/16 v33, 0x0

    #@29
    .line 359
    .local v33, "unarrived":I
    :goto_1
    if-gtz v33, :cond_4

    #@2b
    .line 360
    new-instance v4, Ljava/lang/IllegalStateException;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v4

    #@37
    .line 358
    .end local v33    # "unarrived":I
    :cond_3
    const v4, 0xffff

    #@3a
    and-int v33, v28, v4

    #@3c
    .restart local v33    # "unarrived":I
    goto :goto_1

    #@3d
    .line 361
    :cond_4
    sget-object v4, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@3f
    sget-wide v6, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@41
    move/from16 v0, p1

    #@43
    int-to-long v12, v0

    #@44
    sub-long v10, v8, v12

    #@46
    .end local v8    # "s":J
    .local v10, "s":J
    move-object/from16 v5, p0

    #@48
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_0

    #@4e
    .line 362
    const/4 v4, 0x1

    #@4f
    move/from16 v0, v33

    #@51
    if-ne v0, v4, :cond_5

    #@53
    .line 363
    const-wide v4, 0xffff0000L

    #@58
    and-long v18, v10, v4

    #@5a
    .line 364
    .local v18, "n":J
    move-wide/from16 v0, v18

    #@5c
    long-to-int v4, v0

    #@5d
    ushr-int/lit8 v30, v4, 0x10

    #@5f
    .line 365
    .local v30, "nextUnarrived":I
    move-object/from16 v0, v32

    #@61
    move-object/from16 v1, p0

    #@63
    if-ne v0, v1, :cond_8

    #@65
    .line 366
    move-object/from16 v0, p0

    #@67
    move/from16 v1, v31

    #@69
    move/from16 v2, v30

    #@6b
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_6

    #@71
    .line 367
    const-wide/high16 v4, -0x8000000000000000L

    #@73
    or-long v18, v18, v4

    #@75
    .line 372
    :goto_2
    add-int/lit8 v4, v31, 0x1

    #@77
    const v5, 0x7fffffff

    #@7a
    and-int v29, v4, v5

    #@7c
    .line 373
    .local v29, "nextPhase":I
    move/from16 v0, v29

    #@7e
    int-to-long v4, v0

    #@7f
    const/16 v6, 0x20

    #@81
    shl-long/2addr v4, v6

    #@82
    or-long v18, v18, v4

    #@84
    .line 374
    sget-object v12, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@86
    sget-wide v14, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@88
    move-object/from16 v13, p0

    #@8a
    move-wide/from16 v16, v10

    #@8c
    invoke-virtual/range {v12 .. v19}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@8f
    .line 375
    move-object/from16 v0, p0

    #@91
    move/from16 v1, v31

    #@93
    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    #@96
    .line 385
    .end local v18    # "n":J
    .end local v29    # "nextPhase":I
    .end local v30    # "nextUnarrived":I
    :cond_5
    :goto_3
    return v31

    #@97
    .line 368
    .restart local v18    # "n":J
    .restart local v30    # "nextUnarrived":I
    :cond_6
    if-nez v30, :cond_7

    #@99
    .line 369
    const-wide/16 v4, 0x1

    #@9b
    or-long v18, v18, v4

    #@9d
    goto :goto_2

    #@9e
    .line 371
    :cond_7
    move/from16 v0, v30

    #@a0
    int-to-long v4, v0

    #@a1
    or-long v18, v18, v4

    #@a3
    goto :goto_2

    #@a4
    .line 377
    :cond_8
    if-nez v30, :cond_9

    #@a6
    .line 378
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    #@aa
    const v5, 0x10001

    #@ad
    invoke-direct {v4, v5}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    #@b0
    move-result v31

    #@b1
    .line 379
    sget-object v20, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@b3
    sget-wide v22, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@b5
    .line 380
    const-wide/16 v4, 0x1

    #@b7
    or-long v26, v10, v4

    #@b9
    move-object/from16 v21, p0

    #@bb
    move-wide/from16 v24, v10

    #@bd
    .line 379
    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@c0
    goto :goto_3

    #@c1
    .line 383
    :cond_9
    move-object/from16 v0, p0

    #@c3
    iget-object v4, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    #@c5
    const/4 v5, 0x1

    #@c6
    invoke-direct {v4, v5}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    #@c9
    move-result v31

    #@ca
    goto :goto_3
.end method

.method private doRegister(I)I
    .locals 25
    .param p1, "registrations"    # I

    #@0
    .prologue
    .line 398
    move/from16 v0, p1

    #@2
    int-to-long v2, v0

    #@3
    const/16 v4, 0x10

    #@5
    shl-long/2addr v2, v4

    #@6
    move/from16 v0, p1

    #@8
    int-to-long v4, v0

    #@9
    or-long v18, v2, v4

    #@b
    .line 399
    .local v18, "adjust":J
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    #@f
    move-object/from16 v21, v0

    #@11
    .line 402
    .local v21, "parent":Ljava/util/concurrent/Phaser;
    :cond_0
    :goto_0
    if-nez v21, :cond_1

    #@13
    move-object/from16 v0, p0

    #@15
    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    #@17
    .line 403
    .local v6, "s":J
    :goto_1
    long-to-int v0, v6

    #@18
    move/from16 v20, v0

    #@1a
    .line 404
    .local v20, "counts":I
    ushr-int/lit8 v22, v20, 0x10

    #@1c
    .line 405
    .local v22, "parties":I
    const v2, 0xffff

    #@1f
    and-int v24, v20, v2

    #@21
    .line 406
    .local v24, "unarrived":I
    const v2, 0xffff

    #@24
    sub-int v2, v2, v22

    #@26
    move/from16 v0, p1

    #@28
    if-le v0, v2, :cond_2

    #@2a
    .line 407
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2c
    move-object/from16 v0, p0

    #@2e
    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/Phaser;->badRegister(J)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 402
    .end local v6    # "s":J
    .end local v20    # "counts":I
    .end local v22    # "parties":I
    .end local v24    # "unarrived":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@39
    move-result-wide v6

    #@3a
    .restart local v6    # "s":J
    goto :goto_1

    #@3b
    .line 408
    .restart local v20    # "counts":I
    .restart local v22    # "parties":I
    .restart local v24    # "unarrived":I
    :cond_2
    const/16 v2, 0x20

    #@3d
    ushr-long v2, v6, v2

    #@3f
    long-to-int v0, v2

    #@40
    move/from16 v23, v0

    #@42
    .line 409
    .local v23, "phase":I
    if-gez v23, :cond_3

    #@44
    .line 446
    :goto_2
    return v23

    #@45
    .line 411
    :cond_3
    const/4 v2, 0x1

    #@46
    move/from16 v0, v20

    #@48
    if-eq v0, v2, :cond_6

    #@4a
    .line 412
    if-eqz v21, :cond_4

    #@4c
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@4f
    move-result-wide v2

    #@50
    cmp-long v2, v2, v6

    #@52
    if-nez v2, :cond_0

    #@54
    .line 413
    :cond_4
    if-nez v24, :cond_5

    #@56
    .line 414
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@5a
    const/4 v3, 0x0

    #@5b
    move/from16 v0, v23

    #@5d
    invoke-direct {v2, v0, v3}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    #@60
    goto :goto_0

    #@61
    .line 415
    :cond_5
    sget-object v2, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@63
    sget-wide v4, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@65
    .line 416
    add-long v8, v6, v18

    #@67
    move-object/from16 v3, p0

    #@69
    .line 415
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_0

    #@6f
    goto :goto_2

    #@70
    .line 420
    :cond_6
    if-nez v21, :cond_7

    #@72
    .line 421
    move/from16 v0, v23

    #@74
    int-to-long v2, v0

    #@75
    const/16 v4, 0x20

    #@77
    shl-long/2addr v2, v4

    #@78
    or-long v8, v2, v18

    #@7a
    .line 422
    .local v8, "next":J
    sget-object v2, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@7c
    sget-wide v4, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@7e
    move-object/from16 v3, p0

    #@80
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@83
    move-result v2

    #@84
    if-eqz v2, :cond_0

    #@86
    goto :goto_2

    #@87
    .line 426
    .end local v8    # "next":J
    :cond_7
    monitor-enter p0

    #@88
    .line 427
    :try_start_0
    move-object/from16 v0, p0

    #@8a
    iget-wide v2, v0, Ljava/util/concurrent/Phaser;->state:J

    #@8c
    cmp-long v2, v2, v6

    #@8e
    if-nez v2, :cond_a

    #@90
    .line 428
    const/4 v2, 0x1

    #@91
    move-object/from16 v0, v21

    #@93
    invoke-direct {v0, v2}, Ljava/util/concurrent/Phaser;->doRegister(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@96
    move-result v23

    #@97
    .line 429
    if-gez v23, :cond_9

    #@99
    :cond_8
    monitor-exit p0

    #@9a
    goto :goto_2

    #@9b
    .line 434
    :cond_9
    :goto_3
    :try_start_1
    sget-object v10, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@9d
    .line 435
    sget-wide v12, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@9f
    .line 436
    move/from16 v0, v23

    #@a1
    int-to-long v2, v0

    #@a2
    const/16 v4, 0x20

    #@a4
    shl-long/2addr v2, v4

    #@a5
    or-long v16, v2, v18

    #@a7
    move-object/from16 v11, p0

    #@a9
    move-wide v14, v6

    #@aa
    .line 434
    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@ad
    move-result v2

    #@ae
    if-nez v2, :cond_8

    #@b0
    .line 437
    move-object/from16 v0, p0

    #@b2
    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    #@b4
    .line 438
    move-object/from16 v0, p0

    #@b6
    iget-object v2, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@b8
    iget-wide v2, v2, Ljava/util/concurrent/Phaser;->state:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ba
    const/16 v4, 0x20

    #@bc
    ushr-long/2addr v2, v4

    #@bd
    long-to-int v0, v2

    #@be
    move/from16 v23, v0

    #@c0
    goto :goto_3

    #@c1
    :cond_a
    monitor-exit p0

    #@c2
    goto/16 :goto_0

    #@c4
    .line 426
    :catchall_0
    move-exception v2

    #@c5
    monitor-exit p0

    #@c6
    throw v2
.end method

.method private internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I
    .locals 20
    .param p1, "phase"    # I
    .param p2, "node"    # Ljava/util/concurrent/Phaser$QNode;

    #@0
    .prologue
    .line 1007
    add-int/lit8 v3, p1, -0x1

    #@2
    move-object/from16 v0, p0

    #@4
    invoke-direct {v0, v3}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    #@7
    .line 1008
    const/4 v15, 0x0

    #@8
    .line 1009
    .local v15, "queued":Z
    const/4 v12, 0x0

    #@9
    .line 1010
    .local v12, "lastUnarrived":I
    sget v18, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    #@b
    .line 1013
    .end local v15    # "queued":Z
    .local v18, "spins":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@d
    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    #@f
    move-wide/from16 v16, v0

    #@11
    .local v16, "s":J
    const/16 v3, 0x20

    #@13
    ushr-long v4, v16, v3

    #@15
    long-to-int v13, v4

    #@16
    .local v13, "p":I
    move/from16 v0, p1

    #@18
    if-ne v13, v0, :cond_4

    #@1a
    .line 1014
    if-nez p2, :cond_3

    #@1c
    .line 1015
    move-wide/from16 v0, v16

    #@1e
    long-to-int v3, v0

    #@1f
    const v4, 0xffff

    #@22
    and-int v19, v3, v4

    #@24
    .line 1016
    .local v19, "unarrived":I
    move/from16 v0, v19

    #@26
    if-eq v0, v12, :cond_1

    #@28
    .line 1017
    move/from16 v12, v19

    #@2a
    sget v3, Ljava/util/concurrent/Phaser;->NCPU:I

    #@2c
    move/from16 v0, v19

    #@2e
    if-ge v0, v3, :cond_1

    #@30
    .line 1018
    sget v3, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    #@32
    add-int v18, v18, v3

    #@34
    .line 1019
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@37
    move-result v11

    #@38
    .line 1020
    .local v11, "interrupted":Z
    if-nez v11, :cond_2

    #@3a
    add-int/lit8 v18, v18, -0x1

    #@3c
    if-gez v18, :cond_0

    #@3e
    .line 1021
    :cond_2
    new-instance p2, Ljava/util/concurrent/Phaser$QNode;

    #@40
    .end local p2    # "node":Ljava/util/concurrent/Phaser$QNode;
    const/4 v6, 0x0

    #@41
    const/4 v7, 0x0

    #@42
    const-wide/16 v8, 0x0

    #@44
    move-object/from16 v3, p2

    #@46
    move-object/from16 v4, p0

    #@48
    move/from16 v5, p1

    #@4a
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    #@4d
    .line 1022
    .restart local p2    # "node":Ljava/util/concurrent/Phaser$QNode;
    move-object/from16 v0, p2

    #@4f
    iput-boolean v11, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    #@51
    goto :goto_0

    #@52
    .line 1025
    .end local v11    # "interrupted":Z
    .end local v19    # "unarrived":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_7

    #@58
    .line 1043
    :cond_4
    if-eqz p2, :cond_c

    #@5a
    .line 1044
    move-object/from16 v0, p2

    #@5c
    iget-object v3, v0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@5e
    if-eqz v3, :cond_5

    #@60
    .line 1045
    const/4 v3, 0x0

    #@61
    move-object/from16 v0, p2

    #@63
    iput-object v3, v0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@65
    .line 1046
    :cond_5
    move-object/from16 v0, p2

    #@67
    iget-boolean v3, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    #@69
    if-eqz v3, :cond_6

    #@6b
    move-object/from16 v0, p2

    #@6d
    iget-boolean v3, v0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    #@6f
    if-eqz v3, :cond_b

    #@71
    .line 1048
    :cond_6
    :goto_1
    move/from16 v0, p1

    #@73
    if-ne v13, v0, :cond_c

    #@75
    move-object/from16 v0, p0

    #@77
    iget-wide v4, v0, Ljava/util/concurrent/Phaser;->state:J

    #@79
    const/16 v3, 0x20

    #@7b
    ushr-long/2addr v4, v3

    #@7c
    long-to-int v13, v4

    #@7d
    move/from16 v0, p1

    #@7f
    if-ne v13, v0, :cond_c

    #@81
    .line 1049
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->abortWait(I)I

    #@84
    move-result v3

    #@85
    return v3

    #@86
    .line 1027
    :cond_7
    if-nez v15, :cond_a

    #@88
    .line 1028
    and-int/lit8 v3, p1, 0x1

    #@8a
    if-nez v3, :cond_9

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-object v2, v0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@90
    .line 1029
    .local v2, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@93
    move-result-object v14

    #@94
    check-cast v14, Ljava/util/concurrent/Phaser$QNode;

    #@96
    move-object/from16 v0, p2

    #@98
    iput-object v14, v0, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    #@9a
    .line 1030
    .local v14, "q":Ljava/util/concurrent/Phaser$QNode;
    if-eqz v14, :cond_8

    #@9c
    iget v3, v14, Ljava/util/concurrent/Phaser$QNode;->phase:I

    #@9e
    move/from16 v0, p1

    #@a0
    if-ne v3, v0, :cond_0

    #@a2
    .line 1031
    :cond_8
    move-object/from16 v0, p0

    #@a4
    iget-wide v4, v0, Ljava/util/concurrent/Phaser;->state:J

    #@a6
    const/16 v3, 0x20

    #@a8
    ushr-long/2addr v4, v3

    #@a9
    long-to-int v3, v4

    #@aa
    move/from16 v0, p1

    #@ac
    if-ne v3, v0, :cond_0

    #@ae
    .line 1032
    move-object/from16 v0, p2

    #@b0
    invoke-virtual {v2, v14, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b3
    move-result v15

    #@b4
    .local v15, "queued":Z
    goto/16 :goto_0

    #@b6
    .line 1028
    .end local v2    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .end local v14    # "q":Ljava/util/concurrent/Phaser$QNode;
    .end local v15    # "queued":Z
    :cond_9
    move-object/from16 v0, p0

    #@b8
    iget-object v2, v0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@ba
    .restart local v2    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    goto :goto_2

    #@bb
    .line 1036
    .end local v2    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :cond_a
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@be
    goto/16 :goto_0

    #@c0
    .line 1037
    :catch_0
    move-exception v10

    #@c1
    .line 1038
    .local v10, "ie":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    #@c2
    move-object/from16 v0, p2

    #@c4
    iput-boolean v3, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1047
    .end local v10    # "ie":Ljava/lang/InterruptedException;
    :cond_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@cf
    goto :goto_1

    #@d0
    .line 1051
    :cond_c
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    #@d3
    .line 1052
    return v13
.end method

.method private static partiesOf(J)I
    .locals 2
    .param p0, "s"    # J

    #@0
    .prologue
    .line 289
    long-to-int v0, p0

    #@1
    ushr-int/lit8 v0, v0, 0x10

    #@3
    return v0
.end method

.method private static phaseOf(J)I
    .locals 2
    .param p0, "s"    # J

    #@0
    .prologue
    .line 293
    const/16 v0, 0x20

    #@2
    ushr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method private queueFor(I)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p1, "phase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 322
    and-int/lit8 v0, p1, 0x1

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    goto :goto_0
.end method

.method private reconcileState()J
    .locals 20

    #@0
    .prologue
    .line 459
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@4
    .line 460
    .local v12, "root":Ljava/util/concurrent/Phaser;
    move-object/from16 v0, p0

    #@6
    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    #@8
    .line 461
    .local v6, "s":J
    move-object/from16 v0, p0

    #@a
    if-eq v12, v0, :cond_0

    #@c
    .line 464
    :goto_0
    iget-wide v2, v12, Ljava/util/concurrent/Phaser;->state:J

    #@e
    const/16 v4, 0x20

    #@10
    ushr-long/2addr v2, v4

    #@11
    long-to-int v11, v2

    #@12
    .line 465
    .local v11, "phase":I
    const/16 v2, 0x20

    #@14
    ushr-long v2, v6, v2

    #@16
    long-to-int v2, v2

    #@17
    .line 464
    if-eq v11, v2, :cond_0

    #@19
    .line 466
    sget-object v2, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@1b
    .line 467
    sget-wide v4, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@1d
    .line 468
    int-to-long v14, v11

    #@1e
    const/16 v3, 0x20

    #@20
    shl-long v16, v14, v3

    #@22
    .line 469
    if-gez v11, :cond_1

    #@24
    const-wide v14, 0xffffffffL

    #@29
    and-long/2addr v14, v6

    #@2a
    .line 468
    :goto_1
    or-long v8, v16, v14

    #@2c
    .end local v6    # "s":J
    .local v8, "s":J
    move-object/from16 v3, p0

    #@2e
    .line 466
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_3

    #@34
    move-wide v6, v8

    #@35
    .line 474
    .end local v8    # "s":J
    .end local v11    # "phase":I
    .restart local v6    # "s":J
    :cond_0
    return-wide v6

    #@36
    .line 470
    .restart local v11    # "phase":I
    :cond_1
    long-to-int v3, v6

    #@37
    ushr-int/lit8 v10, v3, 0x10

    #@39
    .local v10, "p":I
    if-nez v10, :cond_2

    #@3b
    const-wide/16 v14, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 471
    :cond_2
    const-wide v14, 0xffff0000L

    #@43
    and-long/2addr v14, v6

    #@44
    int-to-long v0, v10

    #@45
    move-wide/from16 v18, v0

    #@47
    or-long v14, v14, v18

    #@49
    goto :goto_1

    #@4a
    .line 472
    .end local v6    # "s":J
    .end local v10    # "p":I
    .restart local v8    # "s":J
    :cond_3
    move-object/from16 v0, p0

    #@4c
    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    #@4e
    .end local v8    # "s":J
    .restart local v6    # "s":J
    goto :goto_0
.end method

.method private releaseWaiters(I)V
    .locals 8
    .param p1, "phase"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 945
    and-int/lit8 v3, p1, 0x1

    #@3
    if-nez v3, :cond_1

    #@5
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    .line 946
    .local v0, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/util/concurrent/Phaser$QNode;

    #@d
    .local v1, "q":Ljava/util/concurrent/Phaser$QNode;
    if-eqz v1, :cond_2

    #@f
    .line 947
    iget v3, v1, Ljava/util/concurrent/Phaser$QNode;->phase:I

    #@11
    iget-object v4, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@13
    iget-wide v4, v4, Ljava/util/concurrent/Phaser;->state:J

    #@15
    const/16 v6, 0x20

    #@17
    ushr-long/2addr v4, v6

    #@18
    long-to-int v4, v4

    #@19
    if-eq v3, v4, :cond_2

    #@1b
    .line 948
    iget-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    #@1d
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 949
    iget-object v2, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@25
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@27
    .line 950
    iput-object v7, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@29
    .line 951
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@2c
    goto :goto_0

    #@2d
    .line 945
    .end local v0    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .end local v1    # "q":Ljava/util/concurrent/Phaser$QNode;
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    #@2f
    .restart local v0    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    goto :goto_0

    #@30
    .line 942
    .restart local v1    # "q":Ljava/util/concurrent/Phaser$QNode;
    :cond_2
    return-void
.end method

.method private stateToString(J)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # J

    #@0
    .prologue
    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 932
    const-string/jumbo v1, "[phase = "

    #@10
    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 932
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->phaseOf(J)I

    #@17
    move-result v1

    #@18
    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 933
    const-string/jumbo v1, " parties = "

    #@1f
    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 933
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    #@26
    move-result v1

    #@27
    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 934
    const-string/jumbo v1, " arrived = "

    #@2e
    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 934
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    #@35
    move-result v1

    #@36
    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 934
    const-string/jumbo v1, "]"

    #@3d
    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0
.end method

.method private static unarrivedOf(J)I
    .locals 2
    .param p0, "s"    # J

    #@0
    .prologue
    .line 284
    long-to-int v0, p0

    #@1
    .line 285
    .local v0, "counts":I
    const/4 v1, 0x1

    #@2
    if-ne v0, v1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_0
    return v1

    #@6
    :cond_0
    const v1, 0xffff

    #@9
    and-int/2addr v1, v0

    #@a
    goto :goto_0
.end method


# virtual methods
.method public arrive()I
    .locals 1

    #@0
    .prologue
    .line 603
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public arriveAndAwaitAdvance()I
    .locals 26

    #@0
    .prologue
    .line 646
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@4
    move-object/from16 v24, v0

    #@6
    .line 648
    .local v24, "root":Ljava/util/concurrent/Phaser;
    :cond_0
    move-object/from16 v0, v24

    #@8
    move-object/from16 v1, p0

    #@a
    if-ne v0, v1, :cond_1

    #@c
    move-object/from16 v0, p0

    #@e
    iget-wide v8, v0, Ljava/util/concurrent/Phaser;->state:J

    #@10
    .line 649
    .local v8, "s":J
    :goto_0
    const/16 v4, 0x20

    #@12
    ushr-long v4, v8, v4

    #@14
    long-to-int v0, v4

    #@15
    move/from16 v23, v0

    #@17
    .line 650
    .local v23, "phase":I
    if-gez v23, :cond_2

    #@19
    .line 651
    return v23

    #@1a
    .line 648
    .end local v8    # "s":J
    .end local v23    # "phase":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@1d
    move-result-wide v8

    #@1e
    .restart local v8    # "s":J
    goto :goto_0

    #@1f
    .line 652
    .restart local v23    # "phase":I
    :cond_2
    long-to-int v0, v8

    #@20
    move/from16 v20, v0

    #@22
    .line 653
    .local v20, "counts":I
    const/4 v4, 0x1

    #@23
    move/from16 v0, v20

    #@25
    if-ne v0, v4, :cond_3

    #@27
    const/16 v25, 0x0

    #@29
    .line 654
    .local v25, "unarrived":I
    :goto_1
    if-gtz v25, :cond_4

    #@2b
    .line 655
    new-instance v4, Ljava/lang/IllegalStateException;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v4

    #@37
    .line 653
    .end local v25    # "unarrived":I
    :cond_3
    const v4, 0xffff

    #@3a
    and-int v25, v20, v4

    #@3c
    .restart local v25    # "unarrived":I
    goto :goto_1

    #@3d
    .line 656
    :cond_4
    sget-object v4, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@3f
    sget-wide v6, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@41
    .line 657
    const-wide/16 v12, 0x1

    #@43
    sub-long v10, v8, v12

    #@45
    .end local v8    # "s":J
    .local v10, "s":J
    move-object/from16 v5, p0

    #@47
    .line 656
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_0

    #@4d
    .line 658
    const/4 v4, 0x1

    #@4e
    move/from16 v0, v25

    #@50
    if-le v0, v4, :cond_5

    #@52
    .line 659
    const/4 v4, 0x0

    #@53
    move-object/from16 v0, v24

    #@55
    move/from16 v1, v23

    #@57
    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    #@5a
    move-result v4

    #@5b
    return v4

    #@5c
    .line 660
    :cond_5
    move-object/from16 v0, v24

    #@5e
    move-object/from16 v1, p0

    #@60
    if-eq v0, v1, :cond_6

    #@62
    .line 661
    move-object/from16 v0, p0

    #@64
    iget-object v4, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    #@66
    invoke-virtual {v4}, Ljava/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    #@69
    move-result v4

    #@6a
    return v4

    #@6b
    .line 662
    :cond_6
    const-wide v4, 0xffff0000L

    #@70
    and-long v18, v10, v4

    #@72
    .line 663
    .local v18, "n":J
    move-wide/from16 v0, v18

    #@74
    long-to-int v4, v0

    #@75
    ushr-int/lit8 v22, v4, 0x10

    #@77
    .line 664
    .local v22, "nextUnarrived":I
    move-object/from16 v0, p0

    #@79
    move/from16 v1, v23

    #@7b
    move/from16 v2, v22

    #@7d
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    #@80
    move-result v4

    #@81
    if-eqz v4, :cond_7

    #@83
    .line 665
    const-wide/high16 v4, -0x8000000000000000L

    #@85
    or-long v18, v18, v4

    #@87
    .line 670
    :goto_2
    add-int/lit8 v4, v23, 0x1

    #@89
    const v5, 0x7fffffff

    #@8c
    and-int v21, v4, v5

    #@8e
    .line 671
    .local v21, "nextPhase":I
    move/from16 v0, v21

    #@90
    int-to-long v4, v0

    #@91
    const/16 v6, 0x20

    #@93
    shl-long/2addr v4, v6

    #@94
    or-long v18, v18, v4

    #@96
    .line 672
    sget-object v12, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@98
    sget-wide v14, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@9a
    move-object/from16 v13, p0

    #@9c
    move-wide/from16 v16, v10

    #@9e
    invoke-virtual/range {v12 .. v19}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@a1
    move-result v4

    #@a2
    if-nez v4, :cond_9

    #@a4
    .line 673
    move-object/from16 v0, p0

    #@a6
    iget-wide v4, v0, Ljava/util/concurrent/Phaser;->state:J

    #@a8
    const/16 v6, 0x20

    #@aa
    ushr-long/2addr v4, v6

    #@ab
    long-to-int v4, v4

    #@ac
    return v4

    #@ad
    .line 666
    .end local v21    # "nextPhase":I
    :cond_7
    if-nez v22, :cond_8

    #@af
    .line 667
    const-wide/16 v4, 0x1

    #@b1
    or-long v18, v18, v4

    #@b3
    goto :goto_2

    #@b4
    .line 669
    :cond_8
    move/from16 v0, v22

    #@b6
    int-to-long v4, v0

    #@b7
    or-long v18, v18, v4

    #@b9
    goto :goto_2

    #@ba
    .line 674
    .restart local v21    # "nextPhase":I
    :cond_9
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v23

    #@be
    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    #@c1
    .line 675
    return v21
.end method

.method public arriveAndDeregister()I
    .locals 1

    #@0
    .prologue
    .line 623
    const v0, 0x10001

    #@3
    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public awaitAdvance(I)I
    .locals 6
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 693
    iget-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@2
    .line 694
    .local v1, "root":Ljava/util/concurrent/Phaser;
    if-ne v1, p0, :cond_0

    #@4
    iget-wide v2, p0, Ljava/util/concurrent/Phaser;->state:J

    #@6
    .line 695
    .local v2, "s":J
    :goto_0
    const/16 v4, 0x20

    #@8
    ushr-long v4, v2, v4

    #@a
    long-to-int v0, v4

    #@b
    .line 696
    .local v0, "p":I
    if-gez p1, :cond_1

    #@d
    .line 697
    return p1

    #@e
    .line 694
    .end local v0    # "p":I
    .end local v2    # "s":J
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@11
    move-result-wide v2

    #@12
    .restart local v2    # "s":J
    goto :goto_0

    #@13
    .line 698
    .restart local v0    # "p":I
    :cond_1
    if-ne v0, p1, :cond_2

    #@15
    .line 699
    const/4 v4, 0x0

    #@16
    invoke-direct {v1, p1, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    #@19
    move-result v4

    #@1a
    return v4

    #@1b
    .line 700
    :cond_2
    return v0
.end method

.method public awaitAdvanceInterruptibly(I)I
    .locals 12
    .param p1, "phase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 720
    iget-object v8, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@3
    .line 721
    .local v8, "root":Ljava/util/concurrent/Phaser;
    if-ne v8, p0, :cond_0

    #@5
    iget-wide v10, p0, Ljava/util/concurrent/Phaser;->state:J

    #@7
    .line 722
    .local v10, "s":J
    :goto_0
    const/16 v2, 0x20

    #@9
    ushr-long v2, v10, v2

    #@b
    long-to-int v0, v2

    #@c
    .line 723
    .local v0, "p":I
    if-gez p1, :cond_1

    #@e
    .line 724
    return p1

    #@f
    .line 721
    .end local v0    # "p":I
    .end local v10    # "s":J
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@12
    move-result-wide v10

    #@13
    .restart local v10    # "s":J
    goto :goto_0

    #@14
    .line 725
    .restart local v0    # "p":I
    :cond_1
    if-ne v0, p1, :cond_2

    #@16
    .line 726
    new-instance v1, Ljava/util/concurrent/Phaser$QNode;

    #@18
    const/4 v4, 0x1

    #@19
    const-wide/16 v6, 0x0

    #@1b
    move-object v2, p0

    #@1c
    move v3, p1

    #@1d
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    #@20
    .line 727
    .local v1, "node":Ljava/util/concurrent/Phaser$QNode;
    invoke-direct {v8, p1, v1}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    #@23
    move-result v0

    #@24
    .line 728
    iget-boolean v2, v1, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 729
    new-instance v2, Ljava/lang/InterruptedException;

    #@2a
    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    #@2d
    throw v2

    #@2e
    .line 731
    .end local v1    # "node":Ljava/util/concurrent/Phaser$QNode;
    :cond_2
    return v0
.end method

.method public awaitAdvanceInterruptibly(IJLjava/util/concurrent/TimeUnit;)I
    .locals 16
    .param p1, "phase"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 757
    move-object/from16 v0, p4

    #@2
    move-wide/from16 v1, p2

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@7
    move-result-wide v10

    #@8
    .line 758
    .local v10, "nanos":J
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@c
    .line 759
    .local v12, "root":Ljava/util/concurrent/Phaser;
    move-object/from16 v0, p0

    #@e
    if-ne v12, v0, :cond_0

    #@10
    move-object/from16 v0, p0

    #@12
    iget-wide v14, v0, Ljava/util/concurrent/Phaser;->state:J

    #@14
    .line 760
    .local v14, "s":J
    :goto_0
    const/16 v6, 0x20

    #@16
    ushr-long v6, v14, v6

    #@18
    long-to-int v4, v6

    #@19
    .line 761
    .local v4, "p":I
    if-gez p1, :cond_1

    #@1b
    .line 762
    return p1

    #@1c
    .line 759
    .end local v4    # "p":I
    .end local v14    # "s":J
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@1f
    move-result-wide v14

    #@20
    .restart local v14    # "s":J
    goto :goto_0

    #@21
    .line 763
    .restart local v4    # "p":I
    :cond_1
    move/from16 v0, p1

    #@23
    if-ne v4, v0, :cond_3

    #@25
    .line 764
    new-instance v5, Ljava/util/concurrent/Phaser$QNode;

    #@27
    const/4 v8, 0x1

    #@28
    const/4 v9, 0x1

    #@29
    move-object/from16 v6, p0

    #@2b
    move/from16 v7, p1

    #@2d
    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    #@30
    .line 765
    .local v5, "node":Ljava/util/concurrent/Phaser$QNode;
    move/from16 v0, p1

    #@32
    invoke-direct {v12, v0, v5}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    #@35
    move-result v4

    #@36
    .line 766
    iget-boolean v6, v5, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    #@38
    if-eqz v6, :cond_2

    #@3a
    .line 767
    new-instance v6, Ljava/lang/InterruptedException;

    #@3c
    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    #@3f
    throw v6

    #@40
    .line 768
    :cond_2
    move/from16 v0, p1

    #@42
    if-ne v4, v0, :cond_3

    #@44
    .line 769
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    #@46
    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@49
    throw v6

    #@4a
    .line 771
    .end local v5    # "node":Ljava/util/concurrent/Phaser$QNode;
    :cond_3
    return v4
.end method

.method public bulkRegister(I)I
    .locals 1
    .param p1, "parties"    # I

    #@0
    .prologue
    .line 583
    if-gez p1, :cond_0

    #@2
    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 585
    :cond_0
    if-nez p1, :cond_1

    #@a
    .line 586
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->getPhase()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 587
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public forceTermination()V
    .locals 8

    #@0
    .prologue
    .line 785
    iget-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@2
    .line 787
    .local v1, "root":Ljava/util/concurrent/Phaser;
    :cond_0
    iget-wide v4, v1, Ljava/util/concurrent/Phaser;->state:J

    #@4
    .local v4, "s":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v4, v2

    #@8
    if-ltz v0, :cond_1

    #@a
    .line 788
    sget-object v0, Ljava/util/concurrent/Phaser;->UNSAFE:Lsun/misc/Unsafe;

    #@c
    sget-wide v2, Ljava/util/concurrent/Phaser;->stateOffset:J

    #@e
    .line 789
    const-wide/high16 v6, -0x8000000000000000L

    #@10
    or-long/2addr v6, v4

    #@11
    .line 788
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 791
    const/4 v0, 0x0

    #@18
    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    #@1b
    .line 792
    const/4 v0, 0x1

    #@1c
    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    #@1f
    .line 793
    return-void

    #@20
    .line 783
    :cond_1
    return-void
.end method

.method public getArrivedParties()I
    .locals 2

    #@0
    .prologue
    .line 828
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getParent()Ljava/util/concurrent/Phaser;
    .locals 1

    #@0
    .prologue
    .line 848
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    #@2
    return-object v0
.end method

.method public final getPhase()I
    .locals 3

    #@0
    .prologue
    .line 808
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@2
    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    #@4
    const/16 v2, 0x20

    #@6
    ushr-long/2addr v0, v2

    #@7
    long-to-int v0, v0

    #@8
    return v0
.end method

.method public getRegisteredParties()I
    .locals 2

    #@0
    .prologue
    .line 817
    iget-wide v0, p0, Ljava/util/concurrent/Phaser;->state:J

    #@2
    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRoot()Ljava/util/concurrent/Phaser;
    .locals 1

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@2
    return-object v0
.end method

.method public getUnarrivedParties()I
    .locals 2

    #@0
    .prologue
    .line 839
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->unarrivedOf(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isTerminated()Z
    .locals 4

    #@0
    .prologue
    .line 867
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    #@2
    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method protected onAdvance(II)Z
    .locals 1
    .param p1, "phase"    # I
    .param p2, "registeredParties"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 911
    if-nez p2, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method

.method public register()I
    .locals 1

    #@0
    .prologue
    .line 560
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 924
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
