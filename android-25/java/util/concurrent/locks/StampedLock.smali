.class public Ljava/util/concurrent/locks/StampedLock;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/StampedLock$ReadLockView;,
        Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;,
        Ljava/util/concurrent/locks/StampedLock$WNode;,
        Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    }
.end annotation


# static fields
.field private static final ABITS:J = 0xffL

.field private static final CANCELLED:I = 0x1

.field private static final HEAD_SPINS:I

.field private static final INTERRUPTED:J = 0x1L

.field private static final LG_READERS:I = 0x7

.field private static final MAX_HEAD_SPINS:I

.field private static final NCPU:I

.field private static final ORIGIN:J = 0x100L

.field private static final OVERFLOW_YIELD_RATE:I = 0x7

.field private static final PARKBLOCKER:J

.field private static final RBITS:J = 0x7fL

.field private static final RFULL:J = 0x7eL

.field private static final RMODE:I = 0x0

.field private static final RUNIT:J = 0x1L

.field private static final SBITS:J = -0x80L

.field private static final SPINS:I

.field private static final STATE:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITING:I = -0x1

.field private static final WBIT:J = 0x80L

.field private static final WCOWAIT:J

.field private static final WHEAD:J

.field private static final WMODE:I = 0x1

.field private static final WNEXT:J

.field private static final WSTATUS:J

.field private static final WTAIL:J

.field private static final serialVersionUID:J = -0x5349f9cce5385003L


# instance fields
.field transient readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

.field transient readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

.field private transient readerOverflow:I

.field private volatile transient state:J

.field private volatile transient whead:Ljava/util/concurrent/locks/StampedLock$WNode;

.field transient writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

.field private volatile transient wtail:Ljava/util/concurrent/locks/StampedLock$WNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 239
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    #@9
    move-result v1

    #@a
    sput v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    #@c
    .line 242
    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    #@e
    if-le v1, v3, :cond_1

    #@10
    const/16 v1, 0x40

    #@12
    :goto_0
    sput v1, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    #@14
    .line 245
    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    #@16
    if-le v1, v3, :cond_2

    #@18
    const/16 v1, 0x400

    #@1a
    :goto_1
    sput v1, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    #@1c
    .line 248
    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    #@1e
    if-le v1, v3, :cond_0

    #@20
    const/high16 v2, 0x10000

    #@22
    :cond_0
    sput v2, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    #@24
    .line 1372
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@27
    move-result-object v1

    #@28
    sput-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@2a
    .line 1383
    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@2c
    .line 1384
    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    #@2e
    const-string/jumbo v3, "state"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@34
    move-result-object v2

    #@35
    .line 1383
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@38
    move-result-wide v2

    #@39
    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@3b
    .line 1385
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@3d
    .line 1386
    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    #@3f
    const-string/jumbo v3, "whead"

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@45
    move-result-object v2

    #@46
    .line 1385
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@49
    move-result-wide v2

    #@4a
    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    #@4c
    .line 1387
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@4e
    .line 1388
    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    #@50
    const-string/jumbo v3, "wtail"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@56
    move-result-object v2

    #@57
    .line 1387
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@5a
    move-result-wide v2

    #@5b
    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    #@5d
    .line 1390
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@5f
    .line 1391
    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    #@61
    const-string/jumbo v3, "status"

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@67
    move-result-object v2

    #@68
    .line 1390
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@6b
    move-result-wide v2

    #@6c
    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    #@6e
    .line 1392
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@70
    .line 1393
    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    #@72
    const-string/jumbo v3, "next"

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@78
    move-result-object v2

    #@79
    .line 1392
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@7c
    move-result-wide v2

    #@7d
    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    #@7f
    .line 1394
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@81
    .line 1395
    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    #@83
    const-string/jumbo v3, "cowait"

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@89
    move-result-object v2

    #@8a
    .line 1394
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@8d
    move-result-wide v2

    #@8e
    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    #@90
    .line 1397
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@92
    .line 1398
    const-class v2, Ljava/lang/Thread;

    #@94
    const-string/jumbo v3, "parkBlocker"

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@9a
    move-result-object v2

    #@9b
    .line 1397
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@9e
    move-result-wide v2

    #@9f
    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@a1
    .line 158
    return-void

    #@a2
    :cond_1
    move v1, v2

    #@a3
    .line 242
    goto/16 :goto_0

    #@a5
    :cond_2
    move v1, v2

    #@a6
    .line 245
    goto/16 :goto_1

    #@a8
    .line 1399
    :catch_0
    move-exception v0

    #@a9
    .line 1400
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@ab
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@ae
    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 308
    const-wide/16 v0, 0x100

    #@5
    iput-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@7
    .line 307
    return-void
.end method

.method private acquireRead(ZJ)J
    .locals 50
    .param p1, "interruptible"    # Z
    .param p2, "deadline"    # J

    #@0
    .prologue
    .line 1113
    const/16 v48, 0x0

    #@2
    .line 1114
    .local v48, "wasInterrupted":Z
    const/16 v23, 0x0

    #@4
    .line 1115
    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    const/16 v44, -0x1

    #@6
    .line 1117
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v44, "spins":I
    :goto_0
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@a
    move-object/from16 v25, v0

    #@c
    .local v25, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@10
    move-object/from16 v22, v0

    #@12
    .local v22, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v25

    #@14
    move-object/from16 v1, v22

    #@16
    if-ne v0, v1, :cond_37

    #@18
    .line 1119
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@1a
    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@1c
    .local v8, "s":J
    const-wide/16 v4, 0xff

    #@1e
    and-long v38, v8, v4

    #@20
    .local v38, "m":J
    const-wide/16 v4, 0x7e

    #@22
    cmp-long v4, v38, v4

    #@24
    if-gez v4, :cond_3

    #@26
    .line 1120
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@28
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@2a
    const-wide/16 v12, 0x1

    #@2c
    add-long v10, v8, v12

    #@2e
    .local v10, "ns":J
    move-object/from16 v5, p0

    #@30
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@33
    move-result v4

    #@34
    .line 1119
    if-eqz v4, :cond_4

    #@36
    .line 1122
    :cond_1
    if-eqz v48, :cond_2

    #@38
    .line 1123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    #@3f
    .line 1124
    :cond_2
    return-wide v10

    #@40
    .line 1121
    .end local v10    # "ns":J
    :cond_3
    const-wide/16 v4, 0x80

    #@42
    cmp-long v4, v38, v4

    #@44
    if-gez v4, :cond_4

    #@46
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    #@4b
    move-result-wide v10

    #@4c
    .restart local v10    # "ns":J
    const-wide/16 v4, 0x0

    #@4e
    cmp-long v4, v10, v4

    #@50
    if-nez v4, :cond_1

    #@52
    .line 1126
    .end local v10    # "ns":J
    :cond_4
    const-wide/16 v4, 0x80

    #@54
    cmp-long v4, v38, v4

    #@56
    if-ltz v4, :cond_0

    #@58
    .line 1127
    if-lez v44, :cond_5

    #@5a
    .line 1128
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    #@5d
    move-result v4

    #@5e
    if-ltz v4, :cond_0

    #@60
    .line 1129
    add-int/lit8 v44, v44, -0x1

    #@62
    goto :goto_1

    #@63
    .line 1132
    :cond_5
    if-nez v44, :cond_8

    #@65
    .line 1133
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@69
    move-object/from16 v40, v0

    #@6b
    .local v40, "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@6f
    move-object/from16 v41, v0

    #@71
    .line 1134
    .local v41, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v40

    #@73
    move-object/from16 v1, v25

    #@75
    if-ne v0, v1, :cond_7

    #@77
    move-object/from16 v0, v41

    #@79
    move-object/from16 v1, v22

    #@7b
    if-ne v0, v1, :cond_7

    #@7d
    :cond_6
    move-object/from16 v36, v25

    #@7f
    .line 1142
    .end local v8    # "s":J
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v38    # "m":J
    .end local v40    # "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v36, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_2
    if-nez v22, :cond_9

    #@81
    .line 1143
    new-instance v17, Ljava/util/concurrent/locks/StampedLock$WNode;

    #@83
    const/4 v4, 0x1

    #@84
    const/4 v5, 0x0

    #@85
    move-object/from16 v0, v17

    #@87
    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    #@8a
    .line 1144
    .local v17, "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    sget-object v12, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@8c
    sget-wide v14, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    #@8e
    const/16 v16, 0x0

    #@90
    move-object/from16 v13, p0

    #@92
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@95
    move-result v4

    #@96
    if-eqz v4, :cond_36

    #@98
    .line 1145
    move-object/from16 v0, v17

    #@9a
    move-object/from16 v1, p0

    #@9c
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@9e
    move-object/from16 v25, v36

    #@a0
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_0

    #@a2
    .line 1134
    .end local v17    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v8    # "s":J
    .restart local v38    # "m":J
    .restart local v40    # "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_7
    move-object/from16 v25, v40

    #@a4
    move-object/from16 v22, v41

    #@a6
    move-object/from16 v0, v40

    #@a8
    move-object/from16 v1, v41

    #@aa
    if-ne v0, v1, :cond_6

    #@ac
    .line 1137
    .end local v40    # "nh":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_8
    sget v44, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    #@ae
    goto/16 :goto_1

    #@b0
    .line 1147
    .end local v8    # "s":J
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v38    # "m":J
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_9
    if-nez v23, :cond_a

    #@b2
    .line 1148
    new-instance v23, Ljava/util/concurrent/locks/StampedLock$WNode;

    #@b4
    const/4 v4, 0x0

    #@b5
    move-object/from16 v0, v23

    #@b7
    move-object/from16 v1, v22

    #@b9
    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    #@bc
    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v25, v36

    #@be
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_0

    #@c0
    .line 1149
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_a
    move-object/from16 v0, v36

    #@c2
    move-object/from16 v1, v22

    #@c4
    if-eq v0, v1, :cond_b

    #@c6
    move-object/from16 v0, v22

    #@c8
    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    #@ca
    if-eqz v4, :cond_13

    #@cc
    .line 1150
    :cond_b
    move-object/from16 v0, v23

    #@ce
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@d0
    move-object/from16 v0, v22

    #@d2
    if-eq v4, v0, :cond_d

    #@d4
    .line 1151
    move-object/from16 v0, v22

    #@d6
    move-object/from16 v1, v23

    #@d8
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@da
    :cond_c
    move-object/from16 v25, v36

    #@dc
    .line 1149
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_0

    #@de
    .line 1152
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_d
    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@e0
    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    #@e2
    move-object/from16 v19, p0

    #@e4
    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@e7
    move-result v4

    #@e8
    if-eqz v4, :cond_c

    #@ea
    .line 1153
    move-object/from16 v0, v23

    #@ec
    move-object/from16 v1, v22

    #@ee
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@f0
    .line 1212
    const/16 v44, -0x1

    #@f2
    .line 1214
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    #@f4
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@f6
    move-object/from16 v25, v0

    #@f8
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v25

    #@fa
    move-object/from16 v1, v22

    #@fc
    if-ne v0, v1, :cond_2b

    #@fe
    .line 1215
    if-gez v44, :cond_25

    #@100
    .line 1216
    sget v44, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    #@102
    .line 1219
    :cond_f
    :goto_4
    move/from16 v37, v44

    #@104
    .line 1221
    .local v37, "k":I
    :cond_10
    move-object/from16 v0, p0

    #@106
    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@108
    .restart local v8    # "s":J
    const-wide/16 v4, 0xff

    #@10a
    and-long v38, v8, v4

    #@10c
    .restart local v38    # "m":J
    const-wide/16 v4, 0x7e

    #@10e
    cmp-long v4, v38, v4

    #@110
    if-gez v4, :cond_26

    #@112
    .line 1222
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@114
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@116
    const-wide/16 v12, 0x1

    #@118
    add-long v10, v8, v12

    #@11a
    .restart local v10    # "ns":J
    move-object/from16 v5, p0

    #@11c
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@11f
    move-result v4

    #@120
    .line 1221
    if-eqz v4, :cond_27

    #@122
    .line 1225
    :cond_11
    move-object/from16 v0, v23

    #@124
    move-object/from16 v1, p0

    #@126
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@128
    .line 1226
    const/4 v4, 0x0

    #@129
    move-object/from16 v0, v23

    #@12b
    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@12d
    .line 1227
    :cond_12
    :goto_5
    move-object/from16 v0, v23

    #@12f
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@131
    move-object/from16 v28, v0

    #@133
    .local v28, "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v28, :cond_29

    #@135
    .line 1228
    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@137
    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    #@139
    .line 1229
    move-object/from16 v0, v28

    #@13b
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@13d
    move-object/from16 v35, v0

    #@13f
    move-object/from16 v31, v23

    #@141
    move-object/from16 v34, v28

    #@143
    .line 1228
    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@146
    move-result v4

    #@147
    if-eqz v4, :cond_12

    #@149
    .line 1230
    move-object/from16 v0, v28

    #@14b
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@14d
    move-object/from16 v45, v0

    #@14f
    .local v45, "w":Ljava/lang/Thread;
    if-eqz v45, :cond_12

    #@151
    .line 1231
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@153
    move-object/from16 v0, v45

    #@155
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@158
    goto :goto_5

    #@159
    .line 1157
    .end local v8    # "s":J
    .end local v10    # "ns":J
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v37    # "k":I
    .end local v38    # "m":J
    .end local v45    # "w":Ljava/lang/Thread;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_13
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@15b
    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    #@15d
    .line 1158
    move-object/from16 v0, v22

    #@15f
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@161
    move-object/from16 v28, v0

    #@163
    move-object/from16 v0, v28

    #@165
    move-object/from16 v1, v23

    #@167
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@169
    move-object/from16 v25, v22

    #@16b
    move-object/from16 v29, v23

    #@16d
    .line 1157
    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@170
    move-result v4

    #@171
    if-nez v4, :cond_35

    #@173
    .line 1159
    const/4 v4, 0x0

    #@174
    move-object/from16 v0, v23

    #@176
    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@178
    move-object/from16 v25, v36

    #@17a
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_0

    #@17c
    .line 1205
    .local v42, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v46, "time":J
    .local v49, "wt":Ljava/lang/Thread;
    :cond_14
    const/16 v48, 0x1

    #@17e
    .line 1163
    .end local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v46    # "time":J
    .end local v49    # "wt":Ljava/lang/Thread;
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@182
    move-object/from16 v25, v0

    #@184
    if-eqz v25, :cond_16

    #@186
    move-object/from16 v0, v25

    #@188
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@18a
    move-object/from16 v28, v0

    #@18c
    .restart local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v28, :cond_16

    #@18e
    .line 1164
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@190
    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    #@192
    move-object/from16 v0, v28

    #@194
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@196
    move-object/from16 v29, v0

    #@198
    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@19b
    move-result v4

    #@19c
    .line 1163
    if-eqz v4, :cond_16

    #@19e
    .line 1165
    move-object/from16 v0, v28

    #@1a0
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@1a2
    move-object/from16 v45, v0

    #@1a4
    .restart local v45    # "w":Ljava/lang/Thread;
    if-eqz v45, :cond_16

    #@1a6
    .line 1166
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@1a8
    move-object/from16 v0, v45

    #@1aa
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@1ad
    .line 1167
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v45    # "w":Ljava/lang/Thread;
    :cond_16
    move-object/from16 v0, v22

    #@1af
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@1b1
    move-object/from16 v42, v0

    #@1b3
    .restart local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v25

    #@1b5
    move-object/from16 v1, v42

    #@1b7
    if-eq v0, v1, :cond_17

    #@1b9
    move-object/from16 v0, v25

    #@1bb
    move-object/from16 v1, v22

    #@1bd
    if-ne v0, v1, :cond_1a

    #@1bf
    .line 1170
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    #@1c1
    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@1c3
    .restart local v8    # "s":J
    const-wide/16 v4, 0xff

    #@1c5
    and-long v38, v8, v4

    #@1c7
    .restart local v38    # "m":J
    const-wide/16 v4, 0x7e

    #@1c9
    cmp-long v4, v38, v4

    #@1cb
    if-gez v4, :cond_1d

    #@1cd
    .line 1171
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@1cf
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@1d1
    .line 1172
    const-wide/16 v12, 0x1

    #@1d3
    add-long v10, v8, v12

    #@1d5
    .restart local v10    # "ns":J
    move-object/from16 v5, p0

    #@1d7
    .line 1171
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@1da
    move-result v4

    #@1db
    .line 1170
    if-eqz v4, :cond_1e

    #@1dd
    .line 1175
    :cond_18
    if-eqz v48, :cond_19

    #@1df
    .line 1176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e2
    move-result-object v4

    #@1e3
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    #@1e6
    .line 1177
    :cond_19
    return-wide v10

    #@1e7
    .line 1167
    .end local v8    # "s":J
    .end local v10    # "ns":J
    .end local v38    # "m":J
    :cond_1a
    if-eqz v42, :cond_17

    #@1e9
    .line 1181
    :cond_1b
    move-object/from16 v0, p0

    #@1eb
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@1ed
    move-object/from16 v0, v25

    #@1ef
    if-ne v4, v0, :cond_15

    #@1f1
    move-object/from16 v0, v22

    #@1f3
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@1f5
    move-object/from16 v0, v42

    #@1f7
    if-ne v4, v0, :cond_15

    #@1f9
    .line 1183
    if-eqz v42, :cond_1c

    #@1fb
    move-object/from16 v0, v25

    #@1fd
    move-object/from16 v1, v22

    #@1ff
    if-ne v0, v1, :cond_1f

    #@201
    .line 1184
    :cond_1c
    const/16 v23, 0x0

    #@203
    .line 1185
    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_0

    #@205
    .line 1173
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v8    # "s":J
    .restart local v38    # "m":J
    :cond_1d
    const-wide/16 v4, 0x80

    #@207
    cmp-long v4, v38, v4

    #@209
    if-gez v4, :cond_1e

    #@20b
    .line 1174
    move-object/from16 v0, p0

    #@20d
    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    #@210
    move-result-wide v10

    #@211
    .restart local v10    # "ns":J
    const-wide/16 v4, 0x0

    #@213
    cmp-long v4, v10, v4

    #@215
    if-nez v4, :cond_18

    #@217
    .line 1179
    .end local v10    # "ns":J
    :cond_1e
    const-wide/16 v4, 0x80

    #@219
    cmp-long v4, v38, v4

    #@21b
    if-gez v4, :cond_1b

    #@21d
    goto :goto_7

    #@21e
    .line 1183
    .end local v8    # "s":J
    .end local v38    # "m":J
    :cond_1f
    move-object/from16 v0, v22

    #@220
    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@222
    if-gtz v4, :cond_1c

    #@224
    .line 1187
    const-wide/16 v4, 0x0

    #@226
    cmp-long v4, p2, v4

    #@228
    if-nez v4, :cond_23

    #@22a
    .line 1188
    const-wide/16 v46, 0x0

    #@22c
    .line 1194
    .restart local v46    # "time":J
    :cond_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@22f
    move-result-object v49

    #@230
    .line 1195
    .restart local v49    # "wt":Ljava/lang/Thread;
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@232
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    #@234
    move-object/from16 v0, v49

    #@236
    move-object/from16 v1, p0

    #@238
    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@23b
    .line 1196
    move-object/from16 v0, v49

    #@23d
    move-object/from16 v1, v23

    #@23f
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@241
    .line 1197
    move-object/from16 v0, v25

    #@243
    move-object/from16 v1, v42

    #@245
    if-ne v0, v1, :cond_21

    #@247
    move-object/from16 v0, p0

    #@249
    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@24b
    const-wide/16 v6, 0xff

    #@24d
    and-long/2addr v4, v6

    #@24e
    const-wide/16 v6, 0x80

    #@250
    cmp-long v4, v4, v6

    #@252
    if-nez v4, :cond_22

    #@254
    .line 1198
    :cond_21
    move-object/from16 v0, p0

    #@256
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@258
    move-object/from16 v0, v25

    #@25a
    if-ne v4, v0, :cond_22

    #@25c
    move-object/from16 v0, v22

    #@25e
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@260
    move-object/from16 v0, v42

    #@262
    if-ne v4, v0, :cond_22

    #@264
    .line 1199
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@266
    const/4 v5, 0x0

    #@267
    move-wide/from16 v0, v46

    #@269
    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@26c
    .line 1200
    :cond_22
    const/4 v4, 0x0

    #@26d
    move-object/from16 v0, v23

    #@26f
    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@271
    .line 1201
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@273
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    #@275
    const/4 v5, 0x0

    #@276
    move-object/from16 v0, v49

    #@278
    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@27b
    .line 1202
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@27e
    move-result v4

    #@27f
    if-eqz v4, :cond_15

    #@281
    .line 1203
    if-eqz p1, :cond_14

    #@283
    .line 1204
    const/4 v4, 0x1

    #@284
    move-object/from16 v0, p0

    #@286
    move-object/from16 v1, v23

    #@288
    move-object/from16 v2, v22

    #@28a
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    #@28d
    move-result-wide v4

    #@28e
    return-wide v4

    #@28f
    .line 1189
    .end local v46    # "time":J
    .end local v49    # "wt":Ljava/lang/Thread;
    :cond_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@292
    move-result-wide v4

    #@293
    sub-long v46, p2, v4

    #@295
    .restart local v46    # "time":J
    const-wide/16 v4, 0x0

    #@297
    cmp-long v4, v46, v4

    #@299
    if-gtz v4, :cond_20

    #@29b
    .line 1190
    if-eqz v48, :cond_24

    #@29d
    .line 1191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2a0
    move-result-object v4

    #@2a1
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    #@2a4
    .line 1192
    :cond_24
    const/4 v4, 0x0

    #@2a5
    move-object/from16 v0, p0

    #@2a7
    move-object/from16 v1, v23

    #@2a9
    move-object/from16 v2, v22

    #@2ab
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    #@2ae
    move-result-wide v4

    #@2af
    return-wide v4

    #@2b0
    .line 1217
    .end local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v46    # "time":J
    :cond_25
    sget v4, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    #@2b2
    move/from16 v0, v44

    #@2b4
    if-ge v0, v4, :cond_f

    #@2b6
    .line 1218
    shl-int/lit8 v44, v44, 0x1

    #@2b8
    goto/16 :goto_4

    #@2ba
    .line 1223
    .restart local v8    # "s":J
    .restart local v37    # "k":I
    .restart local v38    # "m":J
    :cond_26
    const-wide/16 v4, 0x80

    #@2bc
    cmp-long v4, v38, v4

    #@2be
    if-gez v4, :cond_27

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    #@2c5
    move-result-wide v10

    #@2c6
    .restart local v10    # "ns":J
    const-wide/16 v4, 0x0

    #@2c8
    cmp-long v4, v10, v4

    #@2ca
    if-nez v4, :cond_11

    #@2cc
    .line 1237
    .end local v10    # "ns":J
    :cond_27
    const-wide/16 v4, 0x80

    #@2ce
    cmp-long v4, v38, v4

    #@2d0
    if-ltz v4, :cond_10

    #@2d2
    .line 1238
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    #@2d5
    move-result v4

    #@2d6
    if-ltz v4, :cond_10

    #@2d8
    add-int/lit8 v37, v37, -0x1

    #@2da
    if-gtz v37, :cond_10

    #@2dc
    .line 1250
    .end local v8    # "s":J
    .end local v37    # "k":I
    .end local v38    # "m":J
    :cond_28
    move-object/from16 v0, p0

    #@2de
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@2e0
    move-object/from16 v0, v25

    #@2e2
    if-ne v4, v0, :cond_e

    #@2e4
    .line 1251
    move-object/from16 v0, v23

    #@2e6
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@2e8
    move-object/from16 v41, v0

    #@2ea
    .restart local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v41

    #@2ec
    move-object/from16 v1, v22

    #@2ee
    if-eq v0, v1, :cond_2d

    #@2f0
    .line 1252
    if-eqz v41, :cond_e

    #@2f2
    .line 1253
    move-object/from16 v22, v41

    #@2f4
    move-object/from16 v0, v23

    #@2f6
    move-object/from16 v1, v41

    #@2f8
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@2fa
    goto/16 :goto_3

    #@2fc
    .line 1233
    .end local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v8    # "s":J
    .restart local v10    # "ns":J
    .restart local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v37    # "k":I
    .restart local v38    # "m":J
    :cond_29
    if-eqz v48, :cond_2a

    #@2fe
    .line 1234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@301
    move-result-object v4

    #@302
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    #@305
    .line 1235
    :cond_2a
    return-wide v10

    #@306
    .line 1242
    .end local v8    # "s":J
    .end local v10    # "ns":J
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v37    # "k":I
    .end local v38    # "m":J
    :cond_2b
    if-eqz v25, :cond_28

    #@308
    .line 1244
    :cond_2c
    :goto_8
    move-object/from16 v0, v25

    #@30a
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@30c
    move-object/from16 v28, v0

    #@30e
    .restart local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v28, :cond_28

    #@310
    .line 1245
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@312
    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    #@314
    move-object/from16 v0, v28

    #@316
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@318
    move-object/from16 v29, v0

    #@31a
    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@31d
    move-result v4

    #@31e
    if-eqz v4, :cond_2c

    #@320
    .line 1246
    move-object/from16 v0, v28

    #@322
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@324
    move-object/from16 v45, v0

    #@326
    .restart local v45    # "w":Ljava/lang/Thread;
    if-eqz v45, :cond_2c

    #@328
    .line 1247
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@32a
    move-object/from16 v0, v45

    #@32c
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@32f
    goto :goto_8

    #@330
    .line 1255
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v45    # "w":Ljava/lang/Thread;
    .restart local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_2d
    move-object/from16 v0, v22

    #@332
    iget v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@334
    move/from16 v43, v0

    #@336
    .local v43, "ps":I
    if-nez v43, :cond_2e

    #@338
    .line 1256
    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@33a
    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    #@33c
    const/16 v34, 0x0

    #@33e
    const/16 v35, -0x1

    #@340
    move-object/from16 v31, v22

    #@342
    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@345
    goto/16 :goto_3

    #@347
    .line 1257
    :cond_2e
    const/4 v4, 0x1

    #@348
    move/from16 v0, v43

    #@34a
    if-ne v0, v4, :cond_2f

    #@34c
    .line 1258
    move-object/from16 v0, v22

    #@34e
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@350
    move-object/from16 v42, v0

    #@352
    .restart local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v42, :cond_e

    #@354
    .line 1259
    move-object/from16 v0, v42

    #@356
    move-object/from16 v1, v23

    #@358
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@35a
    .line 1260
    move-object/from16 v0, v23

    #@35c
    move-object/from16 v1, v42

    #@35e
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@360
    goto/16 :goto_3

    #@362
    .line 1265
    .end local v42    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_2f
    const-wide/16 v4, 0x0

    #@364
    cmp-long v4, p2, v4

    #@366
    if-nez v4, :cond_33

    #@368
    .line 1266
    const-wide/16 v46, 0x0

    #@36a
    .line 1269
    .restart local v46    # "time":J
    :cond_30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@36d
    move-result-object v49

    #@36e
    .line 1270
    .restart local v49    # "wt":Ljava/lang/Thread;
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@370
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    #@372
    move-object/from16 v0, v49

    #@374
    move-object/from16 v1, p0

    #@376
    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@379
    .line 1271
    move-object/from16 v0, v49

    #@37b
    move-object/from16 v1, v23

    #@37d
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@37f
    .line 1272
    move-object/from16 v0, v22

    #@381
    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@383
    if-gez v4, :cond_32

    #@385
    .line 1273
    move-object/from16 v0, v22

    #@387
    move-object/from16 v1, v25

    #@389
    if-ne v0, v1, :cond_31

    #@38b
    move-object/from16 v0, p0

    #@38d
    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@38f
    const-wide/16 v6, 0xff

    #@391
    and-long/2addr v4, v6

    #@392
    const-wide/16 v6, 0x80

    #@394
    cmp-long v4, v4, v6

    #@396
    if-nez v4, :cond_32

    #@398
    .line 1274
    :cond_31
    move-object/from16 v0, p0

    #@39a
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@39c
    move-object/from16 v0, v25

    #@39e
    if-ne v4, v0, :cond_32

    #@3a0
    move-object/from16 v0, v23

    #@3a2
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@3a4
    move-object/from16 v0, v22

    #@3a6
    if-ne v4, v0, :cond_32

    #@3a8
    .line 1275
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@3aa
    const/4 v5, 0x0

    #@3ab
    move-wide/from16 v0, v46

    #@3ad
    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@3b0
    .line 1276
    :cond_32
    const/4 v4, 0x0

    #@3b1
    move-object/from16 v0, v23

    #@3b3
    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@3b5
    .line 1277
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@3b7
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    #@3b9
    const/4 v5, 0x0

    #@3ba
    move-object/from16 v0, v49

    #@3bc
    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@3bf
    .line 1278
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3c2
    move-result v4

    #@3c3
    if-eqz v4, :cond_e

    #@3c5
    .line 1279
    if-eqz p1, :cond_34

    #@3c7
    .line 1280
    const/4 v4, 0x1

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    move-object/from16 v1, v23

    #@3cc
    move-object/from16 v2, v23

    #@3ce
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    #@3d1
    move-result-wide v4

    #@3d2
    return-wide v4

    #@3d3
    .line 1267
    .end local v46    # "time":J
    .end local v49    # "wt":Ljava/lang/Thread;
    :cond_33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3d6
    move-result-wide v4

    #@3d7
    sub-long v46, p2, v4

    #@3d9
    .restart local v46    # "time":J
    const-wide/16 v4, 0x0

    #@3db
    cmp-long v4, v46, v4

    #@3dd
    if-gtz v4, :cond_30

    #@3df
    .line 1268
    const/4 v4, 0x0

    #@3e0
    move-object/from16 v0, p0

    #@3e2
    move-object/from16 v1, v23

    #@3e4
    move-object/from16 v2, v23

    #@3e6
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    #@3e9
    move-result-wide v4

    #@3ea
    return-wide v4

    #@3eb
    .line 1281
    .restart local v49    # "wt":Ljava/lang/Thread;
    :cond_34
    const/16 v48, 0x1

    #@3ed
    goto/16 :goto_3

    #@3ef
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v41    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v43    # "ps":I
    .end local v46    # "time":J
    .end local v49    # "wt":Ljava/lang/Thread;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_35
    move-object/from16 v25, v36

    #@3f1
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_6

    #@3f3
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v17    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_36
    move-object/from16 v25, v36

    #@3f5
    .end local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_0

    #@3f7
    .end local v17    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_37
    move-object/from16 v36, v25

    #@3f9
    .end local v25    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v36    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto/16 :goto_2
.end method

.method private acquireWrite(ZJ)J
    .locals 48
    .param p1, "interruptible"    # Z
    .param p2, "deadline"    # J

    #@0
    .prologue
    .line 1005
    const/16 v23, 0x0

    #@2
    .line 1006
    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    const/16 v42, -0x1

    #@4
    .line 1008
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v42, "spins":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@6
    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@8
    .local v8, "s":J
    const-wide/16 v4, 0xff

    #@a
    and-long v38, v8, v4

    #@c
    .local v38, "m":J
    const-wide/16 v4, 0x0

    #@e
    cmp-long v4, v38, v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 1009
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@14
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@16
    const-wide/16 v12, 0x80

    #@18
    add-long v10, v8, v12

    #@1a
    .local v10, "ns":J
    move-object/from16 v5, p0

    #@1c
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 1010
    return-wide v10

    #@23
    .line 1012
    .end local v10    # "ns":J
    :cond_1
    if-gez v42, :cond_3

    #@25
    .line 1013
    const-wide/16 v4, 0x80

    #@27
    cmp-long v4, v38, v4

    #@29
    if-nez v4, :cond_2

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@33
    if-ne v4, v5, :cond_2

    #@35
    sget v42, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    #@37
    goto :goto_0

    #@38
    :cond_2
    const/16 v42, 0x0

    #@3a
    goto :goto_0

    #@3b
    .line 1014
    :cond_3
    if-lez v42, :cond_4

    #@3d
    .line 1015
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    #@40
    move-result v4

    #@41
    if-ltz v4, :cond_0

    #@43
    .line 1016
    add-int/lit8 v42, v42, -0x1

    #@45
    goto :goto_0

    #@46
    .line 1018
    :cond_4
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@4a
    move-object/from16 v22, v0

    #@4c
    .local v22, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-nez v22, :cond_5

    #@4e
    .line 1019
    new-instance v17, Ljava/util/concurrent/locks/StampedLock$WNode;

    #@50
    const/4 v4, 0x1

    #@51
    const/4 v5, 0x0

    #@52
    move-object/from16 v0, v17

    #@54
    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    #@57
    .line 1020
    .local v17, "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    sget-object v12, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@59
    sget-wide v14, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    #@5b
    const/16 v16, 0x0

    #@5d
    move-object/from16 v13, p0

    #@5f
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_0

    #@65
    .line 1021
    move-object/from16 v0, v17

    #@67
    move-object/from16 v1, p0

    #@69
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@6b
    goto :goto_0

    #@6c
    .line 1023
    .end local v17    # "hd":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_5
    if-nez v23, :cond_6

    #@6e
    .line 1024
    new-instance v23, Ljava/util/concurrent/locks/StampedLock$WNode;

    #@70
    const/4 v4, 0x1

    #@71
    move-object/from16 v0, v23

    #@73
    move-object/from16 v1, v22

    #@75
    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    #@78
    .local v23, "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    goto :goto_0

    #@79
    .line 1025
    .end local v23    # "node":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_6
    move-object/from16 v0, v23

    #@7b
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@7d
    move-object/from16 v0, v22

    #@7f
    if-eq v4, v0, :cond_7

    #@81
    .line 1026
    move-object/from16 v0, v22

    #@83
    move-object/from16 v1, v23

    #@85
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@87
    goto/16 :goto_0

    #@89
    .line 1027
    :cond_7
    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@8b
    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    #@8d
    move-object/from16 v19, p0

    #@8f
    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@92
    move-result v4

    #@93
    if-eqz v4, :cond_0

    #@95
    .line 1028
    move-object/from16 v0, v23

    #@97
    move-object/from16 v1, v22

    #@99
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@9b
    .line 1033
    const/16 v46, 0x0

    #@9d
    .line 1034
    .local v46, "wasInterrupted":Z
    const/16 v42, -0x1

    #@9f
    .line 1036
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    #@a1
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@a3
    move-object/from16 v25, v0

    #@a5
    .local v25, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v25

    #@a7
    move-object/from16 v1, v22

    #@a9
    if-ne v0, v1, :cond_f

    #@ab
    .line 1037
    if-gez v42, :cond_c

    #@ad
    .line 1038
    sget v42, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    #@af
    .line 1041
    :cond_9
    :goto_2
    move/from16 v36, v42

    #@b1
    .line 1043
    .local v36, "k":I
    :cond_a
    move-object/from16 v0, p0

    #@b3
    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@b5
    const-wide/16 v4, 0xff

    #@b7
    and-long/2addr v4, v8

    #@b8
    const-wide/16 v6, 0x0

    #@ba
    cmp-long v4, v4, v6

    #@bc
    if-nez v4, :cond_d

    #@be
    .line 1044
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@c0
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@c2
    .line 1045
    const-wide/16 v12, 0x80

    #@c4
    add-long v10, v8, v12

    #@c6
    .restart local v10    # "ns":J
    move-object/from16 v5, p0

    #@c8
    .line 1044
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@cb
    move-result v4

    #@cc
    if-eqz v4, :cond_a

    #@ce
    .line 1046
    move-object/from16 v0, v23

    #@d0
    move-object/from16 v1, p0

    #@d2
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@d4
    .line 1047
    const/4 v4, 0x0

    #@d5
    move-object/from16 v0, v23

    #@d7
    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@d9
    .line 1048
    if-eqz v46, :cond_b

    #@db
    .line 1049
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@de
    move-result-object v4

    #@df
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    #@e2
    .line 1050
    :cond_b
    return-wide v10

    #@e3
    .line 1039
    .end local v10    # "ns":J
    .end local v36    # "k":I
    :cond_c
    sget v4, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    #@e5
    move/from16 v0, v42

    #@e7
    if-ge v0, v4, :cond_9

    #@e9
    .line 1040
    shl-int/lit8 v42, v42, 0x1

    #@eb
    goto :goto_2

    #@ec
    .line 1053
    .restart local v36    # "k":I
    :cond_d
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    #@ef
    move-result v4

    #@f0
    if-ltz v4, :cond_a

    #@f2
    .line 1054
    add-int/lit8 v36, v36, -0x1

    #@f4
    if-gtz v36, :cond_a

    #@f6
    .line 1066
    .end local v36    # "k":I
    :cond_e
    move-object/from16 v0, p0

    #@f8
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@fa
    move-object/from16 v0, v25

    #@fc
    if-ne v4, v0, :cond_8

    #@fe
    .line 1067
    move-object/from16 v0, v23

    #@100
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@102
    move-object/from16 v37, v0

    #@104
    .local v37, "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, v37

    #@106
    move-object/from16 v1, v22

    #@108
    if-eq v0, v1, :cond_11

    #@10a
    .line 1068
    if-eqz v37, :cond_8

    #@10c
    .line 1069
    move-object/from16 v22, v37

    #@10e
    move-object/from16 v0, v23

    #@110
    move-object/from16 v1, v37

    #@112
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@114
    goto :goto_1

    #@115
    .line 1058
    .end local v37    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_f
    if-eqz v25, :cond_e

    #@117
    .line 1060
    :cond_10
    :goto_3
    move-object/from16 v0, v25

    #@119
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@11b
    move-object/from16 v28, v0

    #@11d
    .local v28, "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v28, :cond_e

    #@11f
    .line 1061
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@121
    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    #@123
    move-object/from16 v0, v28

    #@125
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@127
    move-object/from16 v29, v0

    #@129
    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@12c
    move-result v4

    #@12d
    if-eqz v4, :cond_10

    #@12f
    .line 1062
    move-object/from16 v0, v28

    #@131
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@133
    move-object/from16 v43, v0

    #@135
    .local v43, "w":Ljava/lang/Thread;
    if-eqz v43, :cond_10

    #@137
    .line 1063
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@139
    move-object/from16 v0, v43

    #@13b
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@13e
    goto :goto_3

    #@13f
    .line 1071
    .end local v28    # "c":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v43    # "w":Ljava/lang/Thread;
    .restart local v37    # "np":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_11
    move-object/from16 v0, v22

    #@141
    iget v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@143
    move/from16 v41, v0

    #@145
    .local v41, "ps":I
    if-nez v41, :cond_12

    #@147
    .line 1072
    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@149
    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    #@14b
    const/16 v34, 0x0

    #@14d
    const/16 v35, -0x1

    #@14f
    move-object/from16 v31, v22

    #@151
    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@154
    goto/16 :goto_1

    #@156
    .line 1073
    :cond_12
    const/4 v4, 0x1

    #@157
    move/from16 v0, v41

    #@159
    if-ne v0, v4, :cond_13

    #@15b
    .line 1074
    move-object/from16 v0, v22

    #@15d
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@15f
    move-object/from16 v40, v0

    #@161
    .local v40, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v40, :cond_8

    #@163
    .line 1075
    move-object/from16 v0, v40

    #@165
    move-object/from16 v1, v23

    #@167
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@169
    .line 1076
    move-object/from16 v0, v23

    #@16b
    move-object/from16 v1, v40

    #@16d
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@16f
    goto/16 :goto_1

    #@171
    .line 1081
    .end local v40    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_13
    const-wide/16 v4, 0x0

    #@173
    cmp-long v4, p2, v4

    #@175
    if-nez v4, :cond_17

    #@177
    .line 1082
    const-wide/16 v44, 0x0

    #@179
    .line 1085
    .local v44, "time":J
    :cond_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@17c
    move-result-object v47

    #@17d
    .line 1086
    .local v47, "wt":Ljava/lang/Thread;
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@17f
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    #@181
    move-object/from16 v0, v47

    #@183
    move-object/from16 v1, p0

    #@185
    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@188
    .line 1087
    move-object/from16 v0, v47

    #@18a
    move-object/from16 v1, v23

    #@18c
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@18e
    .line 1088
    move-object/from16 v0, v22

    #@190
    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@192
    if-gez v4, :cond_16

    #@194
    move-object/from16 v0, v22

    #@196
    move-object/from16 v1, v25

    #@198
    if-ne v0, v1, :cond_15

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@19e
    const-wide/16 v6, 0xff

    #@1a0
    and-long/2addr v4, v6

    #@1a1
    const-wide/16 v6, 0x0

    #@1a3
    cmp-long v4, v4, v6

    #@1a5
    if-eqz v4, :cond_16

    #@1a7
    .line 1089
    :cond_15
    move-object/from16 v0, p0

    #@1a9
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@1ab
    move-object/from16 v0, v25

    #@1ad
    if-ne v4, v0, :cond_16

    #@1af
    move-object/from16 v0, v23

    #@1b1
    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@1b3
    move-object/from16 v0, v22

    #@1b5
    if-ne v4, v0, :cond_16

    #@1b7
    .line 1090
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@1b9
    const/4 v5, 0x0

    #@1ba
    move-wide/from16 v0, v44

    #@1bc
    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@1bf
    .line 1091
    :cond_16
    const/4 v4, 0x0

    #@1c0
    move-object/from16 v0, v23

    #@1c2
    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@1c4
    .line 1092
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@1c6
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    #@1c8
    const/4 v5, 0x0

    #@1c9
    move-object/from16 v0, v47

    #@1cb
    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@1ce
    .line 1093
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@1d1
    move-result v4

    #@1d2
    if-eqz v4, :cond_8

    #@1d4
    .line 1094
    if-eqz p1, :cond_18

    #@1d6
    .line 1095
    const/4 v4, 0x1

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    move-object/from16 v1, v23

    #@1db
    move-object/from16 v2, v23

    #@1dd
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    #@1e0
    move-result-wide v4

    #@1e1
    return-wide v4

    #@1e2
    .line 1083
    .end local v44    # "time":J
    .end local v47    # "wt":Ljava/lang/Thread;
    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1e5
    move-result-wide v4

    #@1e6
    sub-long v44, p2, v4

    #@1e8
    .restart local v44    # "time":J
    const-wide/16 v4, 0x0

    #@1ea
    cmp-long v4, v44, v4

    #@1ec
    if-gtz v4, :cond_14

    #@1ee
    .line 1084
    const/4 v4, 0x0

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    move-object/from16 v1, v23

    #@1f3
    move-object/from16 v2, v23

    #@1f5
    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    #@1f8
    move-result-wide v4

    #@1f9
    return-wide v4

    #@1fa
    .line 1096
    .restart local v47    # "wt":Ljava/lang/Thread;
    :cond_18
    const/16 v46, 0x1

    #@1fc
    goto/16 :goto_1
.end method

.method private cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J
    .locals 31
    .param p1, "node"    # Ljava/util/concurrent/locks/StampedLock$WNode;
    .param p2, "group"    # Ljava/util/concurrent/locks/StampedLock$WNode;
    .param p3, "interrupted"    # Z

    #@0
    .prologue
    .line 1305
    if-eqz p1, :cond_c

    #@2
    if-eqz p2, :cond_c

    #@4
    .line 1307
    const/4 v2, 0x1

    #@5
    move-object/from16 v0, p1

    #@7
    iput v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@9
    .line 1309
    move-object/from16 v3, p2

    #@b
    .local v3, "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_0
    iget-object v6, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@d
    .local v6, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_1

    #@f
    .line 1310
    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@11
    const/4 v4, 0x1

    #@12
    if-ne v2, v4, :cond_0

    #@14
    .line 1311
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@16
    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    #@18
    iget-object v7, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@1a
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    .line 1312
    move-object/from16 v3, p2

    #@1f
    goto :goto_0

    #@20
    .line 1315
    :cond_0
    move-object v3, v6

    #@21
    goto :goto_0

    #@22
    .line 1317
    :cond_1
    move-object/from16 v0, p2

    #@24
    move-object/from16 v1, p1

    #@26
    if-ne v0, v1, :cond_c

    #@28
    .line 1318
    move-object/from16 v0, p2

    #@2a
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@2c
    move-object/from16 v25, v0

    #@2e
    .local v25, "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_1
    if-eqz v25, :cond_3

    #@30
    .line 1319
    move-object/from16 v0, v25

    #@32
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@34
    move-object/from16 v30, v0

    #@36
    .local v30, "w":Ljava/lang/Thread;
    if-eqz v30, :cond_2

    #@38
    .line 1320
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@3a
    move-object/from16 v0, v30

    #@3c
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@3f
    .line 1318
    :cond_2
    move-object/from16 v0, v25

    #@41
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@43
    move-object/from16 v25, v0

    #@45
    goto :goto_1

    #@46
    .line 1322
    .end local v30    # "w":Ljava/lang/Thread;
    :cond_3
    move-object/from16 v0, p1

    #@48
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@4a
    move-object/from16 v19, v0

    #@4c
    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v19, "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_2
    if-eqz v19, :cond_c

    #@4e
    .line 1324
    :cond_4
    move-object/from16 v0, p1

    #@50
    iget-object v12, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@52
    .local v12, "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v12, :cond_5

    #@54
    .line 1325
    iget v2, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@56
    const/4 v4, 0x1

    #@57
    if-ne v2, v4, :cond_9

    #@59
    .line 1326
    :cond_5
    const/4 v6, 0x0

    #@5a
    .line 1327
    .local v6, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@5e
    move-object/from16 v29, v0

    #@60
    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v29, "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_3
    if-eqz v29, :cond_7

    #@62
    move-object/from16 v0, v29

    #@64
    move-object/from16 v1, p1

    #@66
    if-eq v0, v1, :cond_7

    #@68
    .line 1328
    move-object/from16 v0, v29

    #@6a
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@6c
    const/4 v4, 0x1

    #@6d
    if-eq v2, v4, :cond_6

    #@6f
    .line 1329
    move-object/from16 v6, v29

    #@71
    .line 1327
    :cond_6
    move-object/from16 v0, v29

    #@73
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@75
    move-object/from16 v29, v0

    #@77
    goto :goto_3

    #@78
    .line 1330
    :cond_7
    if-eq v12, v6, :cond_8

    #@7a
    .line 1331
    sget-object v8, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@7c
    sget-wide v10, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    #@7e
    .line 1332
    move-object/from16 v28, v6

    #@80
    .end local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .local v28, "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    move-object/from16 v9, p1

    #@82
    move-object v13, v6

    #@83
    .line 1331
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    .line 1330
    if-eqz v2, :cond_4

    #@89
    move-object/from16 v12, v28

    #@8b
    .line 1333
    .end local v28    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_8
    if-nez v12, :cond_9

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@91
    move-object/from16 v0, p1

    #@93
    if-ne v0, v2, :cond_9

    #@95
    .line 1334
    sget-object v14, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@97
    sget-wide v16, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    #@99
    move-object/from16 v15, p0

    #@9b
    move-object/from16 v18, p1

    #@9d
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a0
    .line 1338
    .end local v29    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_9
    move-object/from16 v0, v19

    #@a2
    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@a4
    move-object/from16 v0, p1

    #@a6
    if-ne v2, v0, :cond_a

    #@a8
    .line 1339
    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@aa
    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    #@ac
    move-object/from16 v22, p1

    #@ae
    move-object/from16 v23, v12

    #@b0
    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@b3
    .line 1340
    :cond_a
    if-eqz v12, :cond_b

    #@b5
    iget-object v0, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@b7
    move-object/from16 v30, v0

    #@b9
    .restart local v30    # "w":Ljava/lang/Thread;
    if-eqz v30, :cond_b

    #@bb
    .line 1341
    const/4 v2, 0x0

    #@bc
    iput-object v2, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@be
    .line 1342
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@c0
    move-object/from16 v0, v30

    #@c2
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@c5
    .line 1344
    .end local v30    # "w":Ljava/lang/Thread;
    :cond_b
    move-object/from16 v0, v19

    #@c7
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@c9
    const/4 v4, 0x1

    #@ca
    if-ne v2, v4, :cond_c

    #@cc
    move-object/from16 v0, v19

    #@ce
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@d0
    move-object/from16 v16, v0

    #@d2
    .local v16, "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-nez v16, :cond_f

    #@d4
    .line 1353
    .end local v3    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v16    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v19    # "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v25    # "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_c
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@d8
    move-object/from16 v24, v0

    #@da
    .local v24, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v24, :cond_12

    #@dc
    .line 1355
    move-object/from16 v0, v24

    #@de
    iget-object v6, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@e0
    .local v6, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_d

    #@e2
    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@e4
    const/4 v4, 0x1

    #@e5
    if-ne v2, v4, :cond_10

    #@e7
    .line 1356
    :cond_d
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@eb
    move-object/from16 v29, v0

    #@ed
    .restart local v29    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_4
    if-eqz v29, :cond_10

    #@ef
    move-object/from16 v0, v29

    #@f1
    move-object/from16 v1, v24

    #@f3
    if-eq v0, v1, :cond_10

    #@f5
    .line 1357
    move-object/from16 v0, v29

    #@f7
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@f9
    if-gtz v2, :cond_e

    #@fb
    .line 1358
    move-object/from16 v6, v29

    #@fd
    .line 1356
    :cond_e
    move-object/from16 v0, v29

    #@ff
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@101
    move-object/from16 v29, v0

    #@103
    goto :goto_4

    #@104
    .line 1346
    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v24    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v29    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v3    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v16    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v19    # "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v25    # "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_f
    move-object/from16 v0, v16

    #@106
    move-object/from16 v1, p1

    #@108
    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@10a
    .line 1347
    sget-object v15, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@10c
    sget-wide v17, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    #@10e
    move-object/from16 v20, v12

    #@110
    invoke-virtual/range {v15 .. v20}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@113
    .line 1348
    move-object/from16 v19, v16

    #@115
    goto/16 :goto_2

    #@117
    .line 1360
    .end local v3    # "p":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v12    # "succ":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v16    # "pp":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v19    # "pred":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v25    # "r":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v24    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_10
    move-object/from16 v0, p0

    #@119
    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@11b
    move-object/from16 v0, v24

    #@11d
    if-ne v0, v2, :cond_c

    #@11f
    .line 1361
    if-eqz v6, :cond_12

    #@121
    move-object/from16 v0, v24

    #@123
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@125
    if-nez v2, :cond_12

    #@127
    .line 1362
    move-object/from16 v0, p0

    #@129
    iget-wide v0, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@12b
    move-wide/from16 v26, v0

    #@12d
    .local v26, "s":J
    const-wide/16 v4, 0xff

    #@12f
    and-long v4, v4, v26

    #@131
    const-wide/16 v8, 0x80

    #@133
    cmp-long v2, v4, v8

    #@135
    if-eqz v2, :cond_12

    #@137
    .line 1363
    const-wide/16 v4, 0x0

    #@139
    cmp-long v2, v26, v4

    #@13b
    if-eqz v2, :cond_11

    #@13d
    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    #@13f
    if-nez v2, :cond_12

    #@141
    .line 1364
    :cond_11
    move-object/from16 v0, p0

    #@143
    move-object/from16 v1, v24

    #@145
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@148
    .line 1368
    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v26    # "s":J
    :cond_12
    if-nez p3, :cond_13

    #@14a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@14d
    move-result v2

    #@14e
    if-eqz v2, :cond_14

    #@150
    :cond_13
    const-wide/16 v4, 0x1

    #@152
    :goto_5
    return-wide v4

    #@153
    :cond_14
    const-wide/16 v4, 0x0

    #@155
    goto :goto_5
.end method

.method private getReadLockCount(J)I
    .locals 7
    .param p1, "s"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x7e

    #@2
    .line 750
    const-wide/16 v2, 0x7f

    #@4
    and-long v0, p1, v2

    #@6
    .local v0, "readers":J
    cmp-long v2, v0, v4

    #@8
    if-ltz v2, :cond_0

    #@a
    .line 751
    iget v2, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    #@c
    int-to-long v2, v2

    #@d
    add-long v0, v4, v2

    #@f
    .line 752
    :cond_0
    long-to-int v2, v0

    #@10
    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 918
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 919
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@5
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@7
    const-wide/16 v4, 0x100

    #@9
    move-object v1, p0

    #@a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@d
    .line 917
    return-void
.end method

.method private release(Ljava/util/concurrent/locks/StampedLock$WNode;)V
    .locals 9
    .param p1, "h"    # Ljava/util/concurrent/locks/StampedLock$WNode;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 982
    if-eqz p1, :cond_3

    #@3
    .line 984
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@5
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    #@7
    const/4 v4, -0x1

    #@8
    move-object v1, p1

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@c
    .line 985
    iget-object v6, p1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@e
    .local v6, "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_0

    #@10
    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@12
    const/4 v1, 0x1

    #@13
    if-ne v0, v1, :cond_2

    #@15
    .line 986
    :cond_0
    iget-object v7, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@17
    .local v7, "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :goto_0
    if-eqz v7, :cond_2

    #@19
    if-eq v7, p1, :cond_2

    #@1b
    .line 987
    iget v0, v7, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@1d
    if-gtz v0, :cond_1

    #@1f
    .line 988
    move-object v6, v7

    #@20
    .line 986
    :cond_1
    iget-object v7, v7, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@22
    goto :goto_0

    #@23
    .line 990
    .end local v7    # "t":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_2
    if-eqz v6, :cond_3

    #@25
    iget-object v8, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    #@27
    .local v8, "w":Ljava/lang/Thread;
    if-eqz v8, :cond_3

    #@29
    .line 991
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@2b
    invoke-virtual {v0, v8}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@2e
    .line 981
    .end local v6    # "q":Ljava/util/concurrent/locks/StampedLock$WNode;
    .end local v8    # "w":Ljava/lang/Thread;
    :cond_3
    return-void
.end method

.method private tryDecReaderOverflow(J)J
    .locals 9
    .param p1, "s"    # J

    #@0
    .prologue
    .line 955
    const-wide/16 v0, 0xff

    #@2
    and-long/2addr v0, p1

    #@3
    const-wide/16 v2, 0x7e

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_1

    #@9
    .line 956
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@b
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@d
    const-wide/16 v6, 0x7f

    #@f
    or-long/2addr v6, p1

    #@10
    move-object v1, p0

    #@11
    move-wide v4, p1

    #@12
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 958
    iget v8, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    #@1a
    .local v8, "r":I
    if-lez v8, :cond_0

    #@1c
    .line 959
    add-int/lit8 v0, v8, -0x1

    #@1e
    iput v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    #@20
    .line 960
    move-wide v4, p1

    #@21
    .line 964
    .local v4, "next":J
    :goto_0
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@23
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@25
    move-object v1, p0

    #@26
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@29
    .line 965
    return-wide v4

    #@2a
    .line 963
    .end local v4    # "next":J
    :cond_0
    const-wide/16 v0, 0x1

    #@2c
    sub-long v4, p1, v0

    #@2e
    .restart local v4    # "next":J
    goto :goto_0

    #@2f
    .line 968
    .end local v4    # "next":J
    .end local v8    # "r":I
    :cond_1
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    #@32
    move-result v0

    #@33
    and-int/lit8 v0, v0, 0x7

    #@35
    if-nez v0, :cond_2

    #@37
    .line 970
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@3a
    .line 971
    :cond_2
    const-wide/16 v0, 0x0

    #@3c
    return-wide v0
.end method

.method private tryIncReaderOverflow(J)J
    .locals 9
    .param p1, "s"    # J

    #@0
    .prologue
    .line 934
    const-wide/16 v0, 0xff

    #@2
    and-long/2addr v0, p1

    #@3
    const-wide/16 v2, 0x7e

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    .line 935
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@b
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@d
    const-wide/16 v4, 0x7f

    #@f
    or-long v6, p1, v4

    #@11
    move-object v1, p0

    #@12
    move-wide v4, p1

    #@13
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 936
    iget v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    iput v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    #@1f
    .line 937
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@21
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@23
    move-object v1, p0

    #@24
    move-wide v4, p1

    #@25
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@28
    .line 938
    return-wide p1

    #@29
    .line 941
    :cond_0
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    #@2c
    move-result v0

    #@2d
    and-int/lit8 v0, v0, 0x7

    #@2f
    if-nez v0, :cond_1

    #@31
    .line 943
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@34
    .line 944
    :cond_1
    const-wide/16 v0, 0x0

    #@36
    return-wide v0
.end method


# virtual methods
.method public asReadLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    #@0
    .prologue
    .line 814
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    #@2
    .local v0, "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    :goto_0
    return-object v0

    #@5
    .line 815
    .restart local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    #@7
    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    #@c
    goto :goto_0
.end method

.method public asReadWriteLock()Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1

    #@0
    .prologue
    .line 844
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    #@2
    .local v0, "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    :goto_0
    return-object v0

    #@5
    .line 845
    .restart local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    #@7
    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    #@c
    goto :goto_0
.end method

.method public asWriteLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    #@0
    .prologue
    .line 830
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    #@2
    .local v0, "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    :goto_0
    return-object v0

    #@5
    .line 831
    .restart local v0    # "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    #@7
    .end local v0    # "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$WriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    #@c
    goto :goto_0
.end method

.method public getReadLockCount()I
    .locals 2

    #@0
    .prologue
    .line 780
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@2
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReadLocked()Z
    .locals 4

    #@0
    .prologue
    .line 770
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@2
    const-wide/16 v2, 0x7f

    #@4
    and-long/2addr v0, v2

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isWriteLocked()Z
    .locals 4

    #@0
    .prologue
    .line 761
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@2
    const-wide/16 v2, 0x80

    #@4
    and-long/2addr v0, v2

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public readLock()J
    .locals 10

    #@0
    .prologue
    .line 392
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@2
    .line 393
    .local v4, "s":J
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@4
    iget-object v1, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const-wide/16 v0, 0xff

    #@a
    and-long/2addr v0, v4

    #@b
    const-wide/16 v2, 0x7e

    #@d
    cmp-long v0, v0, v2

    #@f
    if-gez v0, :cond_0

    #@11
    .line 394
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@13
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@15
    const-wide/16 v8, 0x1

    #@17
    add-long v6, v4, v8

    #@19
    .local v6, "next":J
    move-object v1, p0

    #@1a
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@1d
    move-result v0

    #@1e
    .line 393
    if-eqz v0, :cond_0

    #@20
    .end local v6    # "next":J
    :goto_0
    return-wide v6

    #@21
    .line 395
    :cond_0
    const/4 v0, 0x0

    #@22
    const-wide/16 v2, 0x0

    #@24
    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    #@27
    move-result-wide v6

    #@28
    goto :goto_0
.end method

.method public readLockInterruptibly()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 466
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 467
    const/4 v2, 0x1

    #@7
    const-wide/16 v4, 0x0

    #@9
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    #@c
    move-result-wide v0

    #@d
    .local v0, "next":J
    const-wide/16 v2, 0x1

    #@f
    cmp-long v2, v0, v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 468
    return-wide v0

    #@14
    .line 469
    .end local v0    # "next":J
    :cond_0
    new-instance v2, Ljava/lang/InterruptedException;

    #@16
    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    #@19
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 793
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@4
    .line 794
    .local v0, "s":J
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    .line 795
    const-wide/16 v4, 0xff

    #@13
    and-long/2addr v4, v0

    #@14
    cmp-long v2, v4, v6

    #@16
    if-nez v2, :cond_0

    #@18
    const-string/jumbo v2, "[Unlocked]"

    #@1b
    .line 794
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 796
    :cond_0
    const-wide/16 v4, 0x80

    #@26
    and-long/2addr v4, v0

    #@27
    cmp-long v2, v4, v6

    #@29
    if-eqz v2, :cond_1

    #@2b
    const-string/jumbo v2, "[Write-locked]"

    #@2e
    goto :goto_0

    #@2f
    .line 797
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "[Read-locks:"

    #@37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    #@3e
    move-result v4

    #@3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v4, "]"

    #@46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    goto :goto_0
.end method

.method public tryConvertToOptimisticRead(J)J
    .locals 23
    .param p1, "stamp"    # J

    #@0
    .prologue
    .line 667
    const-wide/16 v2, 0xff

    #@2
    and-long v16, p1, v2

    #@4
    .line 668
    .local v16, "a":J
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@6
    invoke-virtual {v2}, Lsun/misc/Unsafe;->loadFence()V

    #@9
    .line 670
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-wide v12, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@d
    .local v12, "s":J
    const-wide/16 v2, -0x80

    #@f
    and-long/2addr v2, v12

    #@10
    const-wide/16 v4, -0x80

    #@12
    and-long v4, v4, p1

    #@14
    cmp-long v2, v2, v4

    #@16
    if-eqz v2, :cond_2

    #@18
    .line 698
    :cond_1
    const-wide/16 v2, 0x0

    #@1a
    return-wide v2

    #@1b
    .line 672
    :cond_2
    const-wide/16 v2, 0xff

    #@1d
    and-long v20, v12, v2

    #@1f
    .local v20, "m":J
    const-wide/16 v2, 0x0

    #@21
    cmp-long v2, v20, v2

    #@23
    if-nez v2, :cond_3

    #@25
    .line 673
    const-wide/16 v2, 0x0

    #@27
    cmp-long v2, v16, v2

    #@29
    if-nez v2, :cond_1

    #@2b
    .line 675
    return-wide v12

    #@2c
    .line 677
    :cond_3
    const-wide/16 v2, 0x80

    #@2e
    cmp-long v2, v20, v2

    #@30
    if-nez v2, :cond_6

    #@32
    .line 678
    cmp-long v2, v16, v20

    #@34
    if-nez v2, :cond_1

    #@36
    .line 680
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@38
    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@3a
    .line 681
    const-wide/16 v8, 0x80

    #@3c
    add-long/2addr v12, v8

    #@3d
    const-wide/16 v8, 0x0

    #@3f
    cmp-long v3, v12, v8

    #@41
    if-nez v3, :cond_5

    #@43
    const-wide/16 v6, 0x100

    #@45
    .local v6, "next":J
    :goto_0
    move-object/from16 v3, p0

    #@47
    .line 680
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@4a
    .line 682
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@4e
    move-object/from16 v18, v0

    #@50
    .local v18, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v18, :cond_4

    #@52
    move-object/from16 v0, v18

    #@54
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@56
    if-eqz v2, :cond_4

    #@58
    .line 683
    move-object/from16 v0, p0

    #@5a
    move-object/from16 v1, v18

    #@5c
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@5f
    .line 684
    :cond_4
    return-wide v6

    #@60
    .end local v6    # "next":J
    .end local v18    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_5
    move-wide v6, v12

    #@61
    .line 681
    goto :goto_0

    #@62
    .line 686
    :cond_6
    const-wide/16 v2, 0x0

    #@64
    cmp-long v2, v16, v2

    #@66
    if-eqz v2, :cond_1

    #@68
    const-wide/16 v2, 0x80

    #@6a
    cmp-long v2, v16, v2

    #@6c
    if-gez v2, :cond_1

    #@6e
    .line 688
    const-wide/16 v2, 0x7e

    #@70
    cmp-long v2, v20, v2

    #@72
    if-gez v2, :cond_8

    #@74
    .line 689
    sget-object v8, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@76
    sget-wide v10, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@78
    const-wide/16 v2, 0x1

    #@7a
    sub-long v6, v12, v2

    #@7c
    .restart local v6    # "next":J
    move-object/from16 v9, p0

    #@7e
    move-wide v14, v6

    #@7f
    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@82
    move-result v2

    #@83
    if-eqz v2, :cond_0

    #@85
    .line 690
    const-wide/16 v2, 0x1

    #@87
    cmp-long v2, v20, v2

    #@89
    if-nez v2, :cond_7

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@8f
    move-object/from16 v18, v0

    #@91
    .restart local v18    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v18, :cond_7

    #@93
    move-object/from16 v0, v18

    #@95
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@97
    if-eqz v2, :cond_7

    #@99
    .line 691
    move-object/from16 v0, p0

    #@9b
    move-object/from16 v1, v18

    #@9d
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@a0
    .line 692
    .end local v18    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_7
    const-wide/16 v2, -0x80

    #@a2
    and-long/2addr v2, v6

    #@a3
    return-wide v2

    #@a4
    .line 695
    .end local v6    # "next":J
    :cond_8
    move-object/from16 v0, p0

    #@a6
    invoke-direct {v0, v12, v13}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    #@a9
    move-result-wide v6

    #@aa
    .restart local v6    # "next":J
    const-wide/16 v2, 0x0

    #@ac
    cmp-long v2, v6, v2

    #@ae
    if-eqz v2, :cond_0

    #@b0
    .line 696
    const-wide/16 v2, -0x80

    #@b2
    and-long/2addr v2, v6

    #@b3
    return-wide v2
.end method

.method public tryConvertToReadLock(J)J
    .locals 23
    .param p1, "stamp"    # J

    #@0
    .prologue
    .line 628
    const-wide/16 v2, 0xff

    #@2
    and-long v16, p1, v2

    #@4
    .line 629
    .local v16, "a":J
    :cond_0
    move-object/from16 v0, p0

    #@6
    iget-wide v6, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@8
    .local v6, "s":J
    const-wide/16 v2, -0x80

    #@a
    and-long/2addr v2, v6

    #@b
    const-wide/16 v4, -0x80

    #@d
    and-long v4, v4, p1

    #@f
    cmp-long v2, v2, v4

    #@11
    if-nez v2, :cond_1

    #@13
    .line 630
    const-wide/16 v2, 0xff

    #@15
    and-long v20, v6, v2

    #@17
    .local v20, "m":J
    const-wide/16 v2, 0x0

    #@19
    cmp-long v2, v20, v2

    #@1b
    if-nez v2, :cond_4

    #@1d
    .line 631
    const-wide/16 v2, 0x0

    #@1f
    cmp-long v2, v16, v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 653
    .end local v20    # "m":J
    :cond_1
    const-wide/16 v2, 0x0

    #@25
    return-wide v2

    #@26
    .line 633
    .restart local v20    # "m":J
    :cond_2
    const-wide/16 v2, 0x7e

    #@28
    cmp-long v2, v20, v2

    #@2a
    if-gez v2, :cond_3

    #@2c
    .line 634
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@2e
    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@30
    const-wide/16 v10, 0x1

    #@32
    add-long v8, v6, v10

    #@34
    .local v8, "next":J
    move-object/from16 v3, p0

    #@36
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_0

    #@3c
    .line 635
    return-wide v8

    #@3d
    .line 637
    .end local v8    # "next":J
    :cond_3
    move-object/from16 v0, p0

    #@3f
    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    #@42
    move-result-wide v8

    #@43
    .restart local v8    # "next":J
    const-wide/16 v2, 0x0

    #@45
    cmp-long v2, v8, v2

    #@47
    if-eqz v2, :cond_0

    #@49
    .line 638
    return-wide v8

    #@4a
    .line 640
    .end local v8    # "next":J
    :cond_4
    const-wide/16 v2, 0x80

    #@4c
    cmp-long v2, v20, v2

    #@4e
    if-nez v2, :cond_6

    #@50
    .line 641
    cmp-long v2, v16, v20

    #@52
    if-nez v2, :cond_1

    #@54
    .line 643
    sget-object v10, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@56
    sget-wide v12, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@58
    const-wide/16 v2, 0x81

    #@5a
    add-long v8, v6, v2

    #@5c
    .restart local v8    # "next":J
    move-object/from16 v11, p0

    #@5e
    move-wide v14, v8

    #@5f
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@62
    .line 644
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@66
    move-object/from16 v18, v0

    #@68
    .local v18, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v18, :cond_5

    #@6a
    move-object/from16 v0, v18

    #@6c
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@6e
    if-eqz v2, :cond_5

    #@70
    .line 645
    move-object/from16 v0, p0

    #@72
    move-object/from16 v1, v18

    #@74
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@77
    .line 646
    :cond_5
    return-wide v8

    #@78
    .line 648
    .end local v8    # "next":J
    .end local v18    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_6
    const-wide/16 v2, 0x0

    #@7a
    cmp-long v2, v16, v2

    #@7c
    if-eqz v2, :cond_1

    #@7e
    const-wide/16 v2, 0x80

    #@80
    cmp-long v2, v16, v2

    #@82
    if-gez v2, :cond_1

    #@84
    .line 649
    return-wide p1
.end method

.method public tryConvertToWriteLock(J)J
    .locals 19
    .param p1, "stamp"    # J

    #@0
    .prologue
    .line 592
    const-wide/16 v2, 0xff

    #@2
    and-long v10, p1, v2

    #@4
    .line 593
    .local v10, "a":J
    :cond_0
    move-object/from16 v0, p0

    #@6
    iget-wide v6, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@8
    .local v6, "s":J
    const-wide/16 v2, -0x80

    #@a
    and-long/2addr v2, v6

    #@b
    const-wide/16 v4, -0x80

    #@d
    and-long v4, v4, p1

    #@f
    cmp-long v2, v2, v4

    #@11
    if-nez v2, :cond_1

    #@13
    .line 594
    const-wide/16 v2, 0xff

    #@15
    and-long v12, v6, v2

    #@17
    .local v12, "m":J
    const-wide/16 v2, 0x0

    #@19
    cmp-long v2, v12, v2

    #@1b
    if-nez v2, :cond_3

    #@1d
    .line 595
    const-wide/16 v2, 0x0

    #@1f
    cmp-long v2, v10, v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 613
    .end local v12    # "m":J
    :cond_1
    const-wide/16 v2, 0x0

    #@25
    return-wide v2

    #@26
    .line 597
    .restart local v12    # "m":J
    :cond_2
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@28
    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@2a
    const-wide/16 v14, 0x80

    #@2c
    add-long v8, v6, v14

    #@2e
    .local v8, "next":J
    move-object/from16 v3, p0

    #@30
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_0

    #@36
    .line 598
    return-wide v8

    #@37
    .line 600
    .end local v8    # "next":J
    :cond_3
    const-wide/16 v2, 0x80

    #@39
    cmp-long v2, v12, v2

    #@3b
    if-nez v2, :cond_4

    #@3d
    .line 601
    cmp-long v2, v10, v12

    #@3f
    if-nez v2, :cond_1

    #@41
    .line 603
    return-wide p1

    #@42
    .line 605
    :cond_4
    const-wide/16 v2, 0x1

    #@44
    cmp-long v2, v12, v2

    #@46
    if-nez v2, :cond_1

    #@48
    const-wide/16 v2, 0x0

    #@4a
    cmp-long v2, v10, v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    .line 606
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@50
    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@52
    .line 607
    const-wide/16 v14, 0x1

    #@54
    sub-long v14, v6, v14

    #@56
    const-wide/16 v16, 0x80

    #@58
    add-long v8, v14, v16

    #@5a
    .restart local v8    # "next":J
    move-object/from16 v3, p0

    #@5c
    .line 606
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_0

    #@62
    .line 608
    return-wide v8
.end method

.method public tryOptimisticRead()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 480
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@4
    .local v0, "s":J
    const-wide/16 v4, 0x80

    #@6
    and-long/2addr v4, v0

    #@7
    cmp-long v4, v4, v2

    #@9
    if-nez v4, :cond_0

    #@b
    const-wide/16 v2, -0x80

    #@d
    and-long/2addr v2, v0

    #@e
    :cond_0
    return-wide v2
.end method

.method public tryReadLock()J
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 407
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@4
    .local v4, "s":J
    const-wide/16 v0, 0xff

    #@6
    and-long v8, v4, v0

    #@8
    .local v8, "m":J
    const-wide/16 v0, 0x80

    #@a
    cmp-long v0, v8, v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 408
    return-wide v12

    #@f
    .line 409
    :cond_1
    const-wide/16 v0, 0x7e

    #@11
    cmp-long v0, v8, v0

    #@13
    if-gez v0, :cond_2

    #@15
    .line 410
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@17
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@19
    const-wide/16 v10, 0x1

    #@1b
    add-long v6, v4, v10

    #@1d
    .local v6, "next":J
    move-object v1, p0

    #@1e
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 411
    return-wide v6

    #@25
    .line 413
    .end local v6    # "next":J
    :cond_2
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    #@28
    move-result-wide v6

    #@29
    .restart local v6    # "next":J
    cmp-long v0, v6, v12

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 414
    return-wide v6
.end method

.method public tryReadLock(JLjava/util/concurrent/TimeUnit;)J
    .locals 21
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 434
    move-object/from16 v0, p3

    #@2
    move-wide/from16 v1, p1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@7
    move-result-wide v16

    #@8
    .line 435
    .local v16, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_4

    #@e
    .line 436
    move-object/from16 v0, p0

    #@10
    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@12
    .local v8, "s":J
    const-wide/16 v4, 0xff

    #@14
    and-long v14, v8, v4

    #@16
    .local v14, "m":J
    const-wide/16 v4, 0x80

    #@18
    cmp-long v4, v14, v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 437
    const-wide/16 v4, 0x7e

    #@1e
    cmp-long v4, v14, v4

    #@20
    if-gez v4, :cond_0

    #@22
    .line 438
    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@24
    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@26
    const-wide/16 v18, 0x1

    #@28
    add-long v10, v8, v18

    #@2a
    .local v10, "next":J
    move-object/from16 v5, p0

    #@2c
    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_1

    #@32
    .line 439
    return-wide v10

    #@33
    .line 441
    .end local v10    # "next":J
    :cond_0
    move-object/from16 v0, p0

    #@35
    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    #@38
    move-result-wide v10

    #@39
    .restart local v10    # "next":J
    const-wide/16 v4, 0x0

    #@3b
    cmp-long v4, v10, v4

    #@3d
    if-eqz v4, :cond_1

    #@3f
    .line 442
    return-wide v10

    #@40
    .line 444
    .end local v10    # "next":J
    :cond_1
    const-wide/16 v4, 0x0

    #@42
    cmp-long v4, v16, v4

    #@44
    if-gtz v4, :cond_2

    #@46
    .line 445
    const-wide/16 v4, 0x0

    #@48
    return-wide v4

    #@49
    .line 446
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4c
    move-result-wide v4

    #@4d
    add-long v12, v4, v16

    #@4f
    .local v12, "deadline":J
    const-wide/16 v4, 0x0

    #@51
    cmp-long v4, v12, v4

    #@53
    if-nez v4, :cond_3

    #@55
    .line 447
    const-wide/16 v12, 0x1

    #@57
    .line 448
    :cond_3
    const/4 v4, 0x1

    #@58
    move-object/from16 v0, p0

    #@5a
    invoke-direct {v0, v4, v12, v13}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    #@5d
    move-result-wide v10

    #@5e
    .restart local v10    # "next":J
    const-wide/16 v4, 0x1

    #@60
    cmp-long v4, v10, v4

    #@62
    if-eqz v4, :cond_4

    #@64
    .line 449
    return-wide v10

    #@65
    .line 451
    .end local v8    # "s":J
    .end local v10    # "next":J
    .end local v12    # "deadline":J
    .end local v14    # "m":J
    :cond_4
    new-instance v4, Ljava/lang/InterruptedException;

    #@67
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@6a
    throw v4
.end method

.method public tryUnlockRead()Z
    .locals 12

    #@0
    .prologue
    .line 728
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@2
    .local v4, "s":J
    const-wide/16 v0, 0xff

    #@4
    and-long v10, v4, v0

    #@6
    .local v10, "m":J
    const-wide/16 v0, 0x0

    #@8
    cmp-long v0, v10, v0

    #@a
    if-eqz v0, :cond_3

    #@c
    const-wide/16 v0, 0x80

    #@e
    cmp-long v0, v10, v0

    #@10
    if-gez v0, :cond_3

    #@12
    .line 729
    const-wide/16 v0, 0x7e

    #@14
    cmp-long v0, v10, v0

    #@16
    if-gez v0, :cond_2

    #@18
    .line 730
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@1a
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@1c
    const-wide/16 v6, 0x1

    #@1e
    sub-long v6, v4, v6

    #@20
    move-object v1, p0

    #@21
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 731
    const-wide/16 v0, 0x1

    #@29
    cmp-long v0, v10, v0

    #@2b
    if-nez v0, :cond_1

    #@2d
    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@2f
    .local v8, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v8, :cond_1

    #@31
    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 732
    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@38
    .line 733
    .end local v8    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_1
    const/4 v0, 0x1

    #@39
    return v0

    #@3a
    .line 736
    :cond_2
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    #@3d
    move-result-wide v0

    #@3e
    const-wide/16 v2, 0x0

    #@40
    cmp-long v0, v0, v2

    #@42
    if-eqz v0, :cond_0

    #@44
    .line 737
    const/4 v0, 0x1

    #@45
    return v0

    #@46
    .line 739
    :cond_3
    const/4 v0, 0x0

    #@47
    return v0
.end method

.method public tryUnlockWrite()Z
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x80

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 710
    iget-wide v8, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@7
    .local v8, "s":J
    and-long v0, v8, v10

    #@9
    cmp-long v0, v0, v4

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 711
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@f
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@11
    add-long/2addr v8, v10

    #@12
    cmp-long v1, v8, v4

    #@14
    if-nez v1, :cond_1

    #@16
    const-wide/16 v4, 0x100

    #@18
    :goto_0
    move-object v1, p0

    #@19
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@1c
    .line 712
    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@1e
    .local v6, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_0

    #@20
    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 713
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@27
    .line 714
    :cond_0
    const/4 v0, 0x1

    #@28
    return v0

    #@29
    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_1
    move-wide v4, v8

    #@2a
    .line 711
    goto :goto_0

    #@2b
    .line 716
    :cond_2
    return v2
.end method

.method public tryWriteLock()J
    .locals 12

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 332
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@4
    .local v4, "s":J
    const-wide/16 v0, 0xff

    #@6
    and-long/2addr v0, v4

    #@7
    cmp-long v0, v0, v8

    #@9
    if-nez v0, :cond_0

    #@b
    .line 333
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@d
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@f
    const-wide/16 v10, 0x80

    #@11
    add-long v6, v4, v10

    #@13
    .local v6, "next":J
    move-object v1, p0

    #@14
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@17
    move-result v0

    #@18
    .line 332
    if-eqz v0, :cond_0

    #@1a
    .end local v6    # "next":J
    :goto_0
    return-wide v6

    #@1b
    :cond_0
    move-wide v6, v8

    #@1c
    .line 334
    goto :goto_0
.end method

.method public tryWriteLock(JLjava/util/concurrent/TimeUnit;)J
    .locals 11
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 352
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@5
    move-result-wide v2

    #@6
    .line 353
    .local v2, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@9
    move-result v6

    #@a
    if-nez v6, :cond_3

    #@c
    .line 355
    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock()J

    #@f
    move-result-wide v4

    #@10
    .local v4, "next":J
    cmp-long v6, v4, v8

    #@12
    if-eqz v6, :cond_0

    #@14
    .line 356
    return-wide v4

    #@15
    .line 357
    :cond_0
    cmp-long v6, v2, v8

    #@17
    if-gtz v6, :cond_1

    #@19
    .line 358
    return-wide v8

    #@1a
    .line 359
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1d
    move-result-wide v6

    #@1e
    add-long v0, v6, v2

    #@20
    .local v0, "deadline":J
    cmp-long v6, v0, v8

    #@22
    if-nez v6, :cond_2

    #@24
    .line 360
    const-wide/16 v0, 0x1

    #@26
    .line 361
    :cond_2
    const/4 v6, 0x1

    #@27
    invoke-direct {p0, v6, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    #@2a
    move-result-wide v4

    #@2b
    const-wide/16 v6, 0x1

    #@2d
    cmp-long v6, v4, v6

    #@2f
    if-eqz v6, :cond_3

    #@31
    .line 362
    return-wide v4

    #@32
    .line 364
    .end local v0    # "deadline":J
    .end local v4    # "next":J
    :cond_3
    new-instance v6, Ljava/lang/InterruptedException;

    #@34
    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    #@37
    throw v6
.end method

.method public unlock(J)V
    .locals 15
    .param p1, "stamp"    # J

    #@0
    .prologue
    .line 552
    const-wide/16 v0, 0xff

    #@2
    and-long v8, p1, v0

    #@4
    .line 553
    .local v8, "a":J
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@6
    .local v4, "s":J
    const-wide/16 v0, -0x80

    #@8
    and-long/2addr v0, v4

    #@9
    const-wide/16 v2, -0x80

    #@b
    and-long v2, v2, p1

    #@d
    cmp-long v0, v0, v2

    #@f
    if-nez v0, :cond_1

    #@11
    .line 554
    const-wide/16 v0, 0xff

    #@13
    and-long v12, v4, v0

    #@15
    .local v12, "m":J
    const-wide/16 v0, 0x0

    #@17
    cmp-long v0, v12, v0

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 576
    .end local v12    # "m":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    #@1d
    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@20
    throw v0

    #@21
    .line 556
    .restart local v12    # "m":J
    :cond_2
    const-wide/16 v0, 0x80

    #@23
    cmp-long v0, v12, v0

    #@25
    if-nez v0, :cond_5

    #@27
    .line 557
    cmp-long v0, v8, v12

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 559
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@2d
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@2f
    const-wide/16 v6, 0x80

    #@31
    add-long/2addr v4, v6

    #@32
    const-wide/16 v6, 0x0

    #@34
    cmp-long v1, v4, v6

    #@36
    if-nez v1, :cond_3

    #@38
    const-wide/16 v4, 0x100

    #@3a
    .end local v4    # "s":J
    :cond_3
    move-object v1, p0

    #@3b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@3e
    .line 560
    iget-object v10, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@40
    .local v10, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v10, :cond_4

    #@42
    iget v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@44
    if-eqz v0, :cond_4

    #@46
    .line 561
    invoke-direct {p0, v10}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@49
    .line 562
    :cond_4
    return-void

    #@4a
    .line 564
    .end local v10    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    .restart local v4    # "s":J
    :cond_5
    const-wide/16 v0, 0x0

    #@4c
    cmp-long v0, v8, v0

    #@4e
    if-eqz v0, :cond_1

    #@50
    const-wide/16 v0, 0x80

    #@52
    cmp-long v0, v8, v0

    #@54
    if-gez v0, :cond_1

    #@56
    .line 566
    const-wide/16 v0, 0x7e

    #@58
    cmp-long v0, v12, v0

    #@5a
    if-gez v0, :cond_7

    #@5c
    .line 567
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@5e
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@60
    const-wide/16 v6, 0x1

    #@62
    sub-long v6, v4, v6

    #@64
    move-object v1, p0

    #@65
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_0

    #@6b
    .line 568
    const-wide/16 v0, 0x1

    #@6d
    cmp-long v0, v12, v0

    #@6f
    if-nez v0, :cond_6

    #@71
    iget-object v10, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@73
    .restart local v10    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v10, :cond_6

    #@75
    iget v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@77
    if-eqz v0, :cond_6

    #@79
    .line 569
    invoke-direct {p0, v10}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@7c
    .line 570
    .end local v10    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_6
    return-void

    #@7d
    .line 573
    :cond_7
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    #@80
    move-result-wide v0

    #@81
    const-wide/16 v2, 0x0

    #@83
    cmp-long v0, v0, v2

    #@85
    if-eqz v0, :cond_0

    #@87
    .line 574
    return-void
.end method

.method public unlockRead(J)V
    .locals 13
    .param p1, "stamp"    # J

    #@0
    .prologue
    .line 528
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@2
    .local v4, "s":J
    const-wide/16 v0, -0x80

    #@4
    and-long/2addr v0, v4

    #@5
    const-wide/16 v2, -0x80

    #@7
    and-long/2addr v2, p1

    #@8
    cmp-long v0, v0, v2

    #@a
    if-nez v0, :cond_1

    #@c
    .line 529
    const-wide/16 v0, 0xff

    #@e
    and-long/2addr v0, p1

    #@f
    const-wide/16 v2, 0x0

    #@11
    cmp-long v0, v0, v2

    #@13
    if-nez v0, :cond_2

    #@15
    .line 530
    :cond_1
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    #@17
    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 529
    :cond_2
    const-wide/16 v0, 0xff

    #@1d
    and-long v10, v4, v0

    #@1f
    .local v10, "m":J
    const-wide/16 v0, 0x0

    #@21
    cmp-long v0, v10, v0

    #@23
    if-eqz v0, :cond_1

    #@25
    const-wide/16 v0, 0x80

    #@27
    cmp-long v0, v10, v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 531
    const-wide/16 v0, 0x7e

    #@2d
    cmp-long v0, v10, v0

    #@2f
    if-gez v0, :cond_4

    #@31
    .line 532
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@33
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@35
    const-wide/16 v6, 0x1

    #@37
    sub-long v6, v4, v6

    #@39
    move-object v1, p0

    #@3a
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_0

    #@40
    .line 533
    const-wide/16 v0, 0x1

    #@42
    cmp-long v0, v10, v0

    #@44
    if-nez v0, :cond_3

    #@46
    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@48
    .local v8, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v8, :cond_3

    #@4a
    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@4c
    if-eqz v0, :cond_3

    #@4e
    .line 534
    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@51
    .line 525
    .end local v8    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3
    :goto_0
    return-void

    #@52
    .line 538
    :cond_4
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    #@55
    move-result-wide v0

    #@56
    const-wide/16 v2, 0x0

    #@58
    cmp-long v0, v0, v2

    #@5a
    if-eqz v0, :cond_0

    #@5c
    goto :goto_0
.end method

.method public unlockWrite(J)V
    .locals 11
    .param p1, "stamp"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x80

    #@2
    const-wide/16 v4, 0x0

    #@4
    .line 510
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@6
    cmp-long v0, v0, p1

    #@8
    if-nez v0, :cond_0

    #@a
    and-long v0, p1, v8

    #@c
    cmp-long v0, v0, v4

    #@e
    if-nez v0, :cond_1

    #@10
    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    #@12
    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@15
    throw v0

    #@16
    .line 512
    :cond_1
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@18
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@1a
    add-long/2addr p1, v8

    #@1b
    cmp-long v1, p1, v4

    #@1d
    if-nez v1, :cond_3

    #@1f
    const-wide/16 v4, 0x100

    #@21
    :goto_0
    move-object v1, p0

    #@22
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@25
    .line 513
    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@27
    .local v6, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_2

    #@29
    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 514
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@30
    .line 508
    :cond_2
    return-void

    #@31
    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3
    move-wide v4, p1

    #@32
    .line 512
    goto :goto_0
.end method

.method final unstampedUnlockRead()V
    .locals 12

    #@0
    .prologue
    .line 902
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@2
    .local v4, "s":J
    const-wide/16 v0, 0xff

    #@4
    and-long v10, v4, v0

    #@6
    .local v10, "m":J
    const-wide/16 v0, 0x0

    #@8
    cmp-long v0, v10, v0

    #@a
    if-eqz v0, :cond_1

    #@c
    const-wide/16 v0, 0x80

    #@e
    cmp-long v0, v10, v0

    #@10
    if-ltz v0, :cond_2

    #@12
    .line 903
    :cond_1
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    #@14
    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@17
    throw v0

    #@18
    .line 904
    :cond_2
    const-wide/16 v0, 0x7e

    #@1a
    cmp-long v0, v10, v0

    #@1c
    if-gez v0, :cond_4

    #@1e
    .line 905
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@20
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@22
    const-wide/16 v6, 0x1

    #@24
    sub-long v6, v4, v6

    #@26
    move-object v1, p0

    #@27
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 906
    const-wide/16 v0, 0x1

    #@2f
    cmp-long v0, v10, v0

    #@31
    if-nez v0, :cond_3

    #@33
    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@35
    .local v8, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v8, :cond_3

    #@37
    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@39
    if-eqz v0, :cond_3

    #@3b
    .line 907
    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@3e
    .line 899
    .end local v8    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_3
    :goto_0
    return-void

    #@3f
    .line 911
    :cond_4
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    #@42
    move-result-wide v0

    #@43
    const-wide/16 v2, 0x0

    #@45
    cmp-long v0, v0, v2

    #@47
    if-eqz v0, :cond_0

    #@49
    goto :goto_0
.end method

.method final unstampedUnlockWrite()V
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x80

    #@2
    const-wide/16 v4, 0x0

    #@4
    .line 892
    iget-wide v8, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@6
    .local v8, "s":J
    and-long v0, v8, v10

    #@8
    cmp-long v0, v0, v4

    #@a
    if-nez v0, :cond_0

    #@c
    .line 893
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    #@e
    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@11
    throw v0

    #@12
    .line 894
    :cond_0
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@14
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@16
    add-long/2addr v8, v10

    #@17
    cmp-long v1, v8, v4

    #@19
    if-nez v1, :cond_2

    #@1b
    const-wide/16 v4, 0x100

    #@1d
    :goto_0
    move-object v1, p0

    #@1e
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@21
    .line 895
    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    #@23
    .local v6, "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    if-eqz v6, :cond_1

    #@25
    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 896
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    #@2c
    .line 890
    :cond_1
    return-void

    #@2d
    .end local v6    # "h":Ljava/util/concurrent/locks/StampedLock$WNode;
    :cond_2
    move-wide v4, v8

    #@2e
    .line 894
    goto :goto_0
.end method

.method public validate(J)Z
    .locals 7
    .param p1, "stamp"    # J

    #@0
    .prologue
    const-wide/16 v4, -0x80

    #@2
    .line 496
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@4
    invoke-virtual {v0}, Lsun/misc/Unsafe;->loadFence()V

    #@7
    .line 497
    and-long v0, p1, v4

    #@9
    iget-wide v2, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@b
    and-long/2addr v2, v4

    #@c
    cmp-long v0, v0, v2

    #@e
    if-nez v0, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public writeLock()J
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 319
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    #@4
    .local v4, "s":J
    const-wide/16 v0, 0xff

    #@6
    and-long/2addr v0, v4

    #@7
    cmp-long v0, v0, v10

    #@9
    if-nez v0, :cond_0

    #@b
    .line 320
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    #@d
    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    #@f
    const-wide/16 v8, 0x80

    #@11
    add-long v6, v4, v8

    #@13
    .local v6, "next":J
    move-object v1, p0

    #@14
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@17
    move-result v0

    #@18
    .line 319
    if-eqz v0, :cond_0

    #@1a
    .end local v6    # "next":J
    :goto_0
    return-wide v6

    #@1b
    .line 321
    :cond_0
    const/4 v0, 0x0

    #@1c
    invoke-direct {p0, v0, v10, v11}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    #@1f
    move-result-wide v6

    #@20
    goto :goto_0
.end method

.method public writeLockInterruptibly()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 380
    const/4 v2, 0x1

    #@7
    const-wide/16 v4, 0x0

    #@9
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    #@c
    move-result-wide v0

    #@d
    .local v0, "next":J
    const-wide/16 v2, 0x1

    #@f
    cmp-long v2, v0, v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 381
    return-wide v0

    #@14
    .line 382
    .end local v0    # "next":J
    :cond_0
    new-instance v2, Ljava/lang/InterruptedException;

    #@16
    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    #@19
    throw v2
.end method
