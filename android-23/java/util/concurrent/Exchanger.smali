.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$Node;,
        Ljava/util/concurrent/Exchanger$Participant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I = 0x7

.field private static final BLOCKER:J

.field private static final BOUND:J

.field static final FULL:I

.field private static final MATCH:J

.field private static final MMASK:I = 0xff

.field private static final NCPU:I

.field private static final NULL_ITEM:Ljava/lang/Object;

.field private static final SEQ:I = 0x100

.field private static final SLOT:J

.field private static final SPINS:I = 0x400

.field private static final TIMED_OUT:Ljava/lang/Object;

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private volatile arena:[Ljava/util/concurrent/Exchanger$Node;

.field private volatile bound:I

.field private final participant:Ljava/util/concurrent/Exchanger$Participant;

.field private volatile slot:Ljava/util/concurrent/Exchanger$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    .line 245
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    #@7
    move-result v6

    #@8
    sput v6, Ljava/util/concurrent/Exchanger;->NCPU:I

    #@a
    .line 252
    sget v6, Ljava/util/concurrent/Exchanger;->NCPU:I

    #@c
    const/16 v7, 0x1fe

    #@e
    if-lt v6, v7, :cond_1

    #@10
    const/16 v6, 0xff

    #@12
    :goto_0
    sput v6, Ljava/util/concurrent/Exchanger;->FULL:I

    #@14
    .line 266
    new-instance v6, Ljava/lang/Object;

    #@16
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    #@19
    sput-object v6, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    #@1b
    .line 273
    new-instance v6, Ljava/lang/Object;

    #@1d
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    #@20
    sput-object v6, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    #@22
    .line 610
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@25
    move-result-object v6

    #@26
    sput-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@28
    .line 611
    const-class v2, Ljava/util/concurrent/Exchanger;

    #@2a
    .line 612
    .local v2, "ek":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/concurrent/Exchanger$Node;

    #@2c
    .line 613
    .local v3, "nk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Ljava/util/concurrent/Exchanger$Node;

    #@2e
    .line 614
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Thread;

    #@30
    .line 615
    .local v5, "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@32
    .line 616
    const-string/jumbo v7, "bound"

    #@35
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@38
    move-result-object v7

    #@39
    .line 615
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@3c
    move-result-wide v6

    #@3d
    sput-wide v6, Ljava/util/concurrent/Exchanger;->BOUND:J

    #@3f
    .line 617
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@41
    .line 618
    const-string/jumbo v7, "slot"

    #@44
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@47
    move-result-object v7

    #@48
    .line 617
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@4b
    move-result-wide v6

    #@4c
    sput-wide v6, Ljava/util/concurrent/Exchanger;->SLOT:J

    #@4e
    .line 619
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@50
    .line 620
    const-string/jumbo v7, "match"

    #@53
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@56
    move-result-object v7

    #@57
    .line 619
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@5a
    move-result-wide v6

    #@5b
    sput-wide v6, Ljava/util/concurrent/Exchanger;->MATCH:J

    #@5d
    .line 621
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@5f
    .line 622
    const-string/jumbo v7, "parkBlocker"

    #@62
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@65
    move-result-object v7

    #@66
    .line 621
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@69
    move-result-wide v6

    #@6a
    sput-wide v6, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    #@6c
    .line 623
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@6e
    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@71
    move-result v4

    #@72
    .line 625
    .local v4, "s":I
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@74
    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@77
    move-result v6

    #@78
    add-int/lit16 v6, v6, 0x80

    #@7a
    sput v6, Ljava/util/concurrent/Exchanger;->ABASE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    .line 630
    add-int/lit8 v6, v4, -0x1

    #@7e
    and-int/2addr v6, v4

    #@7f
    if-nez v6, :cond_0

    #@81
    const/16 v6, 0x80

    #@83
    if-le v4, v6, :cond_2

    #@85
    .line 631
    :cond_0
    new-instance v6, Ljava/lang/Error;

    #@87
    const-string/jumbo v7, "Unsupported array scale"

    #@8a
    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@8d
    throw v6

    #@8e
    .line 252
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ek":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "nk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "s":I
    .end local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget v6, Ljava/util/concurrent/Exchanger;->NCPU:I

    #@90
    ushr-int/lit8 v6, v6, 0x1

    #@92
    goto :goto_0

    #@93
    .line 627
    .restart local v2    # "ek":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@94
    .line 628
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Error;

    #@96
    invoke-direct {v6, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@99
    throw v6

    #@9a
    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "nk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "s":I
    .restart local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 493
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 494
    new-instance v0, Ljava/util/concurrent/Exchanger$Participant;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Participant;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    #@a
    .line 493
    return-void
.end method

.method private final arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 31
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    #@0
    .prologue
    .line 332
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    #@4
    .line 333
    .local v3, "a":[Ljava/util/concurrent/Exchanger$Node;
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    #@8
    invoke-virtual {v2}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    #@b
    move-result-object v13

    #@c
    check-cast v13, Ljava/util/concurrent/Exchanger$Node;

    #@e
    .line 334
    .local v13, "p":Ljava/util/concurrent/Exchanger$Node;
    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    #@10
    move/from16 v24, v0

    #@12
    .line 336
    .local v24, "i":I
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@14
    shl-int/lit8 v7, v24, 0x7

    #@16
    sget v8, Ljava/util/concurrent/Exchanger;->ABASE:I

    #@18
    add-int/2addr v7, v8

    #@19
    int-to-long v4, v7

    #@1a
    .local v4, "j":J
    int-to-long v8, v7

    #@1b
    invoke-virtual {v2, v3, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Ljava/util/concurrent/Exchanger$Node;

    #@21
    .line 337
    .local v6, "q":Ljava/util/concurrent/Exchanger$Node;
    if-eqz v6, :cond_2

    #@23
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@25
    const/4 v7, 0x0

    #@26
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 338
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@2e
    move-object/from16 v28, v0

    #@30
    .line 339
    .local v28, "v":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@32
    iput-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    #@34
    .line 340
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    #@36
    move-object/from16 v29, v0

    #@38
    .line 341
    .local v29, "w":Ljava/lang/Thread;
    if-eqz v29, :cond_1

    #@3a
    .line 342
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@3c
    move-object/from16 v0, v29

    #@3e
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@41
    .line 343
    :cond_1
    return-object v28

    #@42
    .line 345
    .end local v28    # "v":Ljava/lang/Object;
    .end local v29    # "w":Ljava/lang/Thread;
    :cond_2
    move-object/from16 v0, p0

    #@44
    iget v0, v0, Ljava/util/concurrent/Exchanger;->bound:I

    #@46
    move/from16 v18, v0

    #@48
    .local v18, "b":I
    move/from16 v0, v18

    #@4a
    and-int/lit16 v0, v0, 0xff

    #@4c
    move/from16 v25, v0

    #@4e
    .local v25, "m":I
    move/from16 v0, v24

    #@50
    move/from16 v1, v25

    #@52
    if-gt v0, v1, :cond_f

    #@54
    if-nez v6, :cond_f

    #@56
    .line 346
    move-object/from16 v0, p1

    #@58
    iput-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@5a
    .line 347
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@5c
    const/4 v12, 0x0

    #@5d
    move-object v9, v3

    #@5e
    move-wide v10, v4

    #@5f
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_e

    #@65
    .line 348
    if-eqz p2, :cond_4

    #@67
    if-nez v25, :cond_4

    #@69
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@6c
    move-result-wide v8

    #@6d
    add-long v22, v8, p3

    #@6f
    .line 349
    .local v22, "end":J
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@72
    move-result-object v27

    #@73
    .line 350
    .local v27, "t":Ljava/lang/Thread;
    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    #@75
    move/from16 v21, v0

    #@77
    .local v21, "h":I
    const/16 v26, 0x400

    #@79
    .line 351
    .local v26, "spins":I
    :cond_3
    :goto_2
    iget-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    #@7b
    move-object/from16 v28, v0

    #@7d
    .line 352
    .restart local v28    # "v":Ljava/lang/Object;
    if-eqz v28, :cond_5

    #@7f
    .line 353
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@81
    sget-wide v8, Ljava/util/concurrent/Exchanger;->MATCH:J

    #@83
    const/4 v7, 0x0

    #@84
    invoke-virtual {v2, v13, v8, v9, v7}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@87
    .line 354
    const/4 v2, 0x0

    #@88
    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@8a
    .line 355
    move/from16 v0, v21

    #@8c
    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    #@8e
    .line 356
    return-object v28

    #@8f
    .line 348
    .end local v21    # "h":I
    .end local v22    # "end":J
    .end local v26    # "spins":I
    .end local v27    # "t":Ljava/lang/Thread;
    .end local v28    # "v":Ljava/lang/Object;
    :cond_4
    const-wide/16 v22, 0x0

    #@91
    .restart local v22    # "end":J
    goto :goto_1

    #@92
    .line 358
    .restart local v21    # "h":I
    .restart local v26    # "spins":I
    .restart local v27    # "t":Ljava/lang/Thread;
    .restart local v28    # "v":Ljava/lang/Object;
    :cond_5
    if-lez v26, :cond_7

    #@94
    .line 359
    shl-int/lit8 v2, v21, 0x1

    #@96
    xor-int v21, v21, v2

    #@98
    ushr-int/lit8 v2, v21, 0x3

    #@9a
    xor-int v21, v21, v2

    #@9c
    shl-int/lit8 v2, v21, 0xa

    #@9e
    xor-int v21, v21, v2

    #@a0
    .line 360
    if-nez v21, :cond_6

    #@a2
    .line 361
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->getId()J

    #@a5
    move-result-wide v8

    #@a6
    long-to-int v2, v8

    #@a7
    or-int/lit16 v0, v2, 0x400

    #@a9
    move/from16 v21, v0

    #@ab
    goto :goto_2

    #@ac
    .line 362
    :cond_6
    if-gez v21, :cond_3

    #@ae
    .line 363
    add-int/lit8 v26, v26, -0x1

    #@b0
    move/from16 v0, v26

    #@b2
    and-int/lit16 v2, v0, 0x1ff

    #@b4
    if-nez v2, :cond_3

    #@b6
    .line 364
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@b9
    goto :goto_2

    #@ba
    .line 366
    :cond_7
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@bc
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@bf
    move-result-object v2

    #@c0
    if-eq v2, v13, :cond_8

    #@c2
    .line 367
    const/16 v26, 0x400

    #@c4
    goto :goto_2

    #@c5
    .line 368
    :cond_8
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->isInterrupted()Z

    #@c8
    move-result v2

    #@c9
    if-nez v2, :cond_b

    #@cb
    if-nez v25, :cond_b

    #@cd
    .line 369
    if-eqz p2, :cond_9

    #@cf
    .line 370
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@d2
    move-result-wide v8

    #@d3
    sub-long p3, v22, v8

    #@d5
    const-wide/16 v8, 0x0

    #@d7
    cmp-long v2, p3, v8

    #@d9
    if-lez v2, :cond_b

    #@db
    .line 371
    :cond_9
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@dd
    sget-wide v8, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    #@df
    move-object/from16 v0, v27

    #@e1
    move-object/from16 v1, p0

    #@e3
    invoke-virtual {v2, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@e6
    .line 372
    move-object/from16 v0, v27

    #@e8
    iput-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    #@ea
    .line 373
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@ec
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@ef
    move-result-object v2

    #@f0
    if-ne v2, v13, :cond_a

    #@f2
    .line 374
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@f4
    const/4 v7, 0x0

    #@f5
    move-wide/from16 v0, p3

    #@f7
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@fa
    .line 375
    :cond_a
    const/4 v2, 0x0

    #@fb
    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    #@fd
    .line 376
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@ff
    sget-wide v8, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    #@101
    const/4 v7, 0x0

    #@102
    move-object/from16 v0, v27

    #@104
    invoke-virtual {v2, v0, v8, v9, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@107
    goto/16 :goto_2

    #@109
    .line 378
    :cond_b
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@10b
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@10e
    move-result-object v2

    #@10f
    if-ne v2, v13, :cond_3

    #@111
    .line 379
    sget-object v9, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@113
    const/4 v14, 0x0

    #@114
    move-object v10, v3

    #@115
    move-wide v11, v4

    #@116
    invoke-virtual/range {v9 .. v14}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@119
    move-result v2

    #@11a
    .line 378
    if-eqz v2, :cond_3

    #@11c
    .line 380
    if-eqz v25, :cond_c

    #@11e
    .line 381
    sget-object v14, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@120
    sget-wide v16, Ljava/util/concurrent/Exchanger;->BOUND:J

    #@122
    move/from16 v0, v18

    #@124
    add-int/lit16 v2, v0, 0x100

    #@126
    add-int/lit8 v19, v2, -0x1

    #@128
    move-object/from16 v15, p0

    #@12a
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@12d
    .line 382
    :cond_c
    const/4 v2, 0x0

    #@12e
    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@130
    .line 383
    move/from16 v0, v21

    #@132
    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    #@134
    .line 384
    iget v2, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    #@136
    ushr-int/lit8 v24, v2, 0x1

    #@138
    move/from16 v0, v24

    #@13a
    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    #@13c
    .line 385
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@13f
    move-result v2

    #@140
    if-eqz v2, :cond_d

    #@142
    .line 386
    const/4 v2, 0x0

    #@143
    return-object v2

    #@144
    .line 387
    :cond_d
    if-eqz p2, :cond_0

    #@146
    if-nez v25, :cond_0

    #@148
    const-wide/16 v8, 0x0

    #@14a
    cmp-long v2, p3, v8

    #@14c
    if-gtz v2, :cond_0

    #@14e
    .line 388
    sget-object v2, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    #@150
    return-object v2

    #@151
    .line 394
    .end local v21    # "h":I
    .end local v22    # "end":J
    .end local v26    # "spins":I
    .end local v27    # "t":Ljava/lang/Thread;
    .end local v28    # "v":Ljava/lang/Object;
    :cond_e
    const/4 v2, 0x0

    #@152
    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@154
    goto/16 :goto_0

    #@156
    .line 397
    :cond_f
    iget v2, v13, Ljava/util/concurrent/Exchanger$Node;->bound:I

    #@158
    move/from16 v0, v18

    #@15a
    if-eq v2, v0, :cond_12

    #@15c
    .line 398
    move/from16 v0, v18

    #@15e
    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->bound:I

    #@160
    .line 399
    const/4 v2, 0x0

    #@161
    iput v2, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    #@163
    .line 400
    move/from16 v0, v24

    #@165
    move/from16 v1, v25

    #@167
    if-ne v0, v1, :cond_10

    #@169
    if-nez v25, :cond_11

    #@16b
    :cond_10
    move/from16 v24, v25

    #@16d
    .line 409
    :goto_3
    move/from16 v0, v24

    #@16f
    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    #@171
    goto/16 :goto_0

    #@173
    .line 400
    :cond_11
    add-int/lit8 v24, v25, -0x1

    #@175
    goto :goto_3

    #@176
    .line 402
    :cond_12
    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    #@178
    move/from16 v20, v0

    #@17a
    .local v20, "c":I
    move/from16 v0, v20

    #@17c
    move/from16 v1, v25

    #@17e
    if-lt v0, v1, :cond_13

    #@180
    sget v2, Ljava/util/concurrent/Exchanger;->FULL:I

    #@182
    move/from16 v0, v25

    #@184
    if-ne v0, v2, :cond_14

    #@186
    .line 404
    :cond_13
    add-int/lit8 v2, v20, 0x1

    #@188
    iput v2, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    #@18a
    .line 405
    if-nez v24, :cond_15

    #@18c
    move/from16 v24, v25

    #@18e
    goto :goto_3

    #@18f
    .line 403
    :cond_14
    sget-object v14, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@191
    sget-wide v16, Ljava/util/concurrent/Exchanger;->BOUND:J

    #@193
    move/from16 v0, v18

    #@195
    add-int/lit16 v2, v0, 0x100

    #@197
    add-int/lit8 v19, v2, 0x1

    #@199
    move-object/from16 v15, p0

    #@19b
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@19e
    move-result v2

    #@19f
    if-eqz v2, :cond_13

    #@1a1
    .line 408
    add-int/lit8 v24, v25, 0x1

    #@1a3
    goto :goto_3

    #@1a4
    .line 405
    :cond_15
    add-int/lit8 v24, v24, -0x1

    #@1a6
    goto :goto_3
.end method

.method private final slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 23
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    #@0
    .prologue
    .line 425
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    #@7
    move-result-object v17

    #@8
    check-cast v17, Ljava/util/concurrent/Exchanger$Node;

    #@a
    .line 426
    .local v17, "p":Ljava/util/concurrent/Exchanger$Node;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@d
    move-result-object v19

    #@e
    .line 427
    .local v19, "t":Ljava/lang/Thread;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 428
    const/4 v2, 0x0

    #@15
    return-object v2

    #@16
    .line 441
    .local v6, "q":Ljava/util/concurrent/Exchanger$Node;
    :cond_0
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    #@18
    const/4 v3, 0x1

    #@19
    if-le v2, v3, :cond_1

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget v2, v0, Ljava/util/concurrent/Exchanger;->bound:I

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 442
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@23
    sget-wide v10, Ljava/util/concurrent/Exchanger;->BOUND:J

    #@25
    const/4 v12, 0x0

    #@26
    const/16 v13, 0x100

    #@28
    move-object/from16 v9, p0

    #@2a
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@2d
    move-result v2

    #@2e
    .line 441
    if-eqz v2, :cond_1

    #@30
    .line 443
    sget v2, Ljava/util/concurrent/Exchanger;->FULL:I

    #@32
    add-int/lit8 v2, v2, 0x2

    #@34
    shl-int/lit8 v2, v2, 0x7

    #@36
    new-array v2, v2, [Ljava/util/concurrent/Exchanger$Node;

    #@38
    move-object/from16 v0, p0

    #@3a
    iput-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    #@3c
    .line 431
    .end local v6    # "q":Ljava/util/concurrent/Exchanger$Node;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@3e
    iget-object v6, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    #@40
    .restart local v6    # "q":Ljava/util/concurrent/Exchanger$Node;
    if-eqz v6, :cond_3

    #@42
    .line 432
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@44
    sget-wide v4, Ljava/util/concurrent/Exchanger;->SLOT:J

    #@46
    const/4 v7, 0x0

    #@47
    move-object/from16 v3, p0

    #@49
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_0

    #@4f
    .line 433
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@51
    move-object/from16 v20, v0

    #@53
    .line 434
    .local v20, "v":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@55
    iput-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    #@57
    .line 435
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    #@59
    move-object/from16 v21, v0

    #@5b
    .line 436
    .local v21, "w":Ljava/lang/Thread;
    if-eqz v21, :cond_2

    #@5d
    .line 437
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@5f
    move-object/from16 v0, v21

    #@61
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@64
    .line 438
    :cond_2
    return-object v20

    #@65
    .line 445
    .end local v20    # "v":Ljava/lang/Object;
    .end local v21    # "w":Ljava/lang/Thread;
    :cond_3
    move-object/from16 v0, p0

    #@67
    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    #@69
    if-eqz v2, :cond_4

    #@6b
    .line 446
    const/4 v2, 0x0

    #@6c
    return-object v2

    #@6d
    .line 448
    :cond_4
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, v17

    #@71
    iput-object v0, v1, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@73
    .line 449
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@75
    sget-wide v10, Ljava/util/concurrent/Exchanger;->SLOT:J

    #@77
    const/4 v12, 0x0

    #@78
    move-object/from16 v9, p0

    #@7a
    move-object/from16 v13, v17

    #@7c
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@7f
    move-result v2

    #@80
    if-eqz v2, :cond_6

    #@82
    .line 456
    move-object/from16 v0, v17

    #@84
    iget v0, v0, Ljava/util/concurrent/Exchanger$Node;->hash:I

    #@86
    move/from16 v16, v0

    #@88
    .line 457
    .local v16, "h":I
    if-eqz p2, :cond_7

    #@8a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@8d
    move-result-wide v2

    #@8e
    add-long v14, v2, p3

    #@90
    .line 458
    .local v14, "end":J
    :goto_1
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    #@92
    const/4 v3, 0x1

    #@93
    if-le v2, v3, :cond_8

    #@95
    const/16 v18, 0x400

    #@97
    .line 460
    .local v18, "spins":I
    :cond_5
    :goto_2
    move-object/from16 v0, v17

    #@99
    iget-object v0, v0, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    #@9b
    move-object/from16 v20, v0

    #@9d
    .restart local v20    # "v":Ljava/lang/Object;
    if-nez v20, :cond_10

    #@9f
    .line 461
    if-lez v18, :cond_a

    #@a1
    .line 462
    shl-int/lit8 v2, v16, 0x1

    #@a3
    xor-int v16, v16, v2

    #@a5
    ushr-int/lit8 v2, v16, 0x3

    #@a7
    xor-int v16, v16, v2

    #@a9
    shl-int/lit8 v2, v16, 0xa

    #@ab
    xor-int v16, v16, v2

    #@ad
    .line 463
    if-nez v16, :cond_9

    #@af
    .line 464
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    #@b2
    move-result-wide v2

    #@b3
    long-to-int v2, v2

    #@b4
    or-int/lit16 v0, v2, 0x400

    #@b6
    move/from16 v16, v0

    #@b8
    goto :goto_2

    #@b9
    .line 451
    .end local v14    # "end":J
    .end local v16    # "h":I
    .end local v18    # "spins":I
    .end local v20    # "v":Ljava/lang/Object;
    :cond_6
    const/4 v2, 0x0

    #@ba
    move-object/from16 v0, v17

    #@bc
    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@be
    goto/16 :goto_0

    #@c0
    .line 457
    .restart local v16    # "h":I
    :cond_7
    const-wide/16 v14, 0x0

    #@c2
    .restart local v14    # "end":J
    goto :goto_1

    #@c3
    .line 458
    :cond_8
    const/16 v18, 0x1

    #@c5
    .restart local v18    # "spins":I
    goto :goto_2

    #@c6
    .line 465
    .restart local v20    # "v":Ljava/lang/Object;
    :cond_9
    if-gez v16, :cond_5

    #@c8
    add-int/lit8 v18, v18, -0x1

    #@ca
    move/from16 v0, v18

    #@cc
    and-int/lit16 v2, v0, 0x1ff

    #@ce
    if-nez v2, :cond_5

    #@d0
    .line 466
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@d3
    goto :goto_2

    #@d4
    .line 468
    :cond_a
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    #@d8
    move-object/from16 v0, v17

    #@da
    if-eq v2, v0, :cond_b

    #@dc
    .line 469
    const/16 v18, 0x400

    #@de
    goto :goto_2

    #@df
    .line 470
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    #@e2
    move-result v2

    #@e3
    if-nez v2, :cond_e

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    #@e9
    if-nez v2, :cond_e

    #@eb
    .line 471
    if-eqz p2, :cond_c

    #@ed
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@f0
    move-result-wide v2

    #@f1
    sub-long p3, v14, v2

    #@f3
    const-wide/16 v2, 0x0

    #@f5
    cmp-long v2, p3, v2

    #@f7
    if-lez v2, :cond_e

    #@f9
    .line 472
    :cond_c
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@fb
    sget-wide v4, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    #@fd
    move-object/from16 v0, v19

    #@ff
    move-object/from16 v1, p0

    #@101
    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@104
    .line 473
    move-object/from16 v0, v19

    #@106
    move-object/from16 v1, v17

    #@108
    iput-object v0, v1, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    #@10a
    .line 474
    move-object/from16 v0, p0

    #@10c
    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    #@10e
    move-object/from16 v0, v17

    #@110
    if-ne v2, v0, :cond_d

    #@112
    .line 475
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@114
    const/4 v3, 0x0

    #@115
    move-wide/from16 v0, p3

    #@117
    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@11a
    .line 476
    :cond_d
    const/4 v2, 0x0

    #@11b
    move-object/from16 v0, v17

    #@11d
    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    #@11f
    .line 477
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@121
    sget-wide v4, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    #@123
    const/4 v3, 0x0

    #@124
    move-object/from16 v0, v19

    #@126
    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@129
    goto/16 :goto_2

    #@12b
    .line 479
    :cond_e
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@12d
    sget-wide v10, Ljava/util/concurrent/Exchanger;->SLOT:J

    #@12f
    const/4 v13, 0x0

    #@130
    move-object/from16 v9, p0

    #@132
    move-object/from16 v12, v17

    #@134
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@137
    move-result v2

    #@138
    if-eqz v2, :cond_5

    #@13a
    .line 480
    if-eqz p2, :cond_f

    #@13c
    const-wide/16 v2, 0x0

    #@13e
    cmp-long v2, p3, v2

    #@140
    if-gtz v2, :cond_f

    #@142
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    #@145
    move-result v2

    #@146
    if-eqz v2, :cond_11

    #@148
    :cond_f
    const/16 v20, 0x0

    #@14a
    .line 484
    .end local v20    # "v":Ljava/lang/Object;
    :cond_10
    :goto_3
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    #@14c
    sget-wide v4, Ljava/util/concurrent/Exchanger;->MATCH:J

    #@14e
    const/4 v3, 0x0

    #@14f
    move-object/from16 v0, v17

    #@151
    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@154
    .line 485
    const/4 v2, 0x0

    #@155
    move-object/from16 v0, v17

    #@157
    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    #@159
    .line 486
    move/from16 v0, v16

    #@15b
    move-object/from16 v1, v17

    #@15d
    iput v0, v1, Ljava/util/concurrent/Exchanger$Node;->hash:I

    #@15f
    .line 487
    return-object v20

    #@160
    .line 480
    .restart local v20    # "v":Ljava/lang/Object;
    :cond_11
    sget-object v20, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    #@162
    goto :goto_3
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 533
    if-nez p1, :cond_2

    #@6
    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    #@8
    .line 534
    .local v0, "item":Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    #@a
    if-nez v3, :cond_0

    #@c
    .line 535
    invoke-direct {p0, v0, v4, v6, v7}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    .local v1, "v":Ljava/lang/Object;
    if-nez v1, :cond_3

    #@12
    .line 536
    .end local v1    # "v":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 537
    invoke-direct {p0, v0, v4, v6, v7}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .restart local v1    # "v":Ljava/lang/Object;
    if-nez v1, :cond_3

    #@1e
    .line 538
    .end local v1    # "v":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/InterruptedException;

    #@20
    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    #@23
    throw v2

    #@24
    .line 533
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    move-object v0, p1

    #@25
    .restart local v0    # "item":Ljava/lang/Object;
    goto :goto_0

    #@26
    .line 539
    .restart local v1    # "v":Ljava/lang/Object;
    :cond_3
    sget-object v3, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    #@28
    if-ne v1, v3, :cond_4

    #@2a
    move-object v1, v2

    #@2b
    .end local v1    # "v":Ljava/lang/Object;
    :cond_4
    return-object v1
.end method

.method public exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 588
    if-nez p1, :cond_2

    #@4
    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    #@6
    .line 589
    .local v0, "item":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@9
    move-result-wide v2

    #@a
    .line 590
    .local v2, "ns":J
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    #@c
    if-nez v5, :cond_0

    #@e
    .line 591
    invoke-direct {p0, v0, v6, v2, v3}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .local v1, "v":Ljava/lang/Object;
    if-nez v1, :cond_3

    #@14
    .line 592
    .end local v1    # "v":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_1

    #@1a
    .line 593
    invoke-direct {p0, v0, v6, v2, v3}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    .restart local v1    # "v":Ljava/lang/Object;
    if-nez v1, :cond_3

    #@20
    .line 594
    .end local v1    # "v":Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/InterruptedException;

    #@22
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@25
    throw v4

    #@26
    .line 588
    .end local v0    # "item":Ljava/lang/Object;
    .end local v2    # "ns":J
    :cond_2
    move-object v0, p1

    #@27
    .restart local v0    # "item":Ljava/lang/Object;
    goto :goto_0

    #@28
    .line 595
    .restart local v1    # "v":Ljava/lang/Object;
    .restart local v2    # "ns":J
    :cond_3
    sget-object v5, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    #@2a
    if-ne v1, v5, :cond_4

    #@2c
    .line 596
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    #@2e
    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@31
    throw v4

    #@32
    .line 597
    :cond_4
    sget-object v5, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    #@34
    if-ne v1, v5, :cond_5

    #@36
    move-object v1, v4

    #@37
    .end local v1    # "v":Ljava/lang/Object;
    :cond_5
    return-object v1
.end method
