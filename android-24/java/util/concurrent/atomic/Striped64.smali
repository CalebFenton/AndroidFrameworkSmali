.class abstract Ljava/util/concurrent/atomic/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/Striped64$Cell;
    }
.end annotation


# static fields
.field private static final BASE:J

.field private static final CELLSBUSY:J

.field static final NCPU:I

.field private static final PROBE:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field volatile transient base:J

.field volatile transient cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

.field volatile transient cellsBusy:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 121
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    #@7
    move-result v1

    #@8
    sput v1, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    #@a
    .line 347
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@d
    move-result-object v1

    #@e
    sput-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    #@10
    .line 353
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    #@12
    .line 354
    const-class v2, Ljava/util/concurrent/atomic/Striped64;

    #@14
    const-string/jumbo v3, "base"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1a
    move-result-object v2

    #@1b
    .line 353
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@1e
    move-result-wide v2

    #@1f
    sput-wide v2, Ljava/util/concurrent/atomic/Striped64;->BASE:J

    #@21
    .line 355
    sget-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    #@23
    .line 356
    const-class v2, Ljava/util/concurrent/atomic/Striped64;

    #@25
    const-string/jumbo v3, "cellsBusy"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2b
    move-result-object v2

    #@2c
    .line 355
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@2f
    move-result-wide v2

    #@30
    sput-wide v2, Ljava/util/concurrent/atomic/Striped64;->CELLSBUSY:J

    #@32
    .line 358
    sget-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    #@34
    .line 359
    const-class v2, Ljava/lang/Thread;

    #@36
    const-string/jumbo v3, "threadLocalRandomProbe"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3c
    move-result-object v2

    #@3d
    .line 358
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@40
    move-result-wide v2

    #@41
    sput-wide v2, Ljava/util/concurrent/atomic/Striped64;->PROBE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 20
    return-void

    #@44
    .line 360
    :catch_0
    move-exception v0

    #@45
    .line 361
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@47
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@4a
    throw v1
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    return-void
.end method

.method static final advanceProbe(I)I
    .locals 4
    .param p0, "probe"    # I

    #@0
    .prologue
    .line 173
    shl-int/lit8 v0, p0, 0xd

    #@2
    xor-int/2addr p0, v0

    #@3
    .line 174
    ushr-int/lit8 v0, p0, 0x11

    #@5
    xor-int/2addr p0, v0

    #@6
    .line 175
    shl-int/lit8 v0, p0, 0x5

    #@8
    xor-int/2addr p0, v0

    #@9
    .line 176
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    #@b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@e
    move-result-object v1

    #@f
    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->PROBE:J

    #@11
    invoke-virtual {v0, v1, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    #@14
    .line 177
    return p0
.end method

.method private static apply(Ljava/util/function/DoubleBinaryOperator;JD)J
    .locals 5
    .param p0, "fn"    # Ljava/util/function/DoubleBinaryOperator;
    .param p1, "v"    # J
    .param p3, "x"    # D

    #@0
    .prologue
    .line 265
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@3
    move-result-wide v0

    #@4
    .line 266
    .local v0, "d":D
    if-nez p0, :cond_0

    #@6
    add-double/2addr v0, p3

    #@7
    .line 267
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@a
    move-result-wide v2

    #@b
    return-wide v2

    #@c
    .line 266
    :cond_0
    invoke-interface {p0, v0, v1, p3, p4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    #@f
    move-result-wide v0

    #@10
    goto :goto_0
.end method

.method static final getProbe()I
    .locals 4

    #@0
    .prologue
    .line 164
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->PROBE:J

    #@8
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    #@b
    move-result v0

    #@c
    return v0
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 9
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    #@0
    .prologue
    .line 149
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->BASE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    move-wide v6, p3

    #@7
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method final casCellsBusy()Z
    .locals 6

    #@0
    .prologue
    .line 156
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->CELLSBUSY:J

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method final doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V
    .locals 21
    .param p1, "x"    # D
    .param p3, "fn"    # Ljava/util/function/DoubleBinaryOperator;
    .param p4, "wasUncontended"    # Z

    #@0
    .prologue
    .line 279
    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    #@3
    move-result v7

    #@4
    .local v7, "h":I
    if-nez v7, :cond_0

    #@6
    .line 280
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@9
    .line 281
    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    #@c
    move-result v7

    #@d
    .line 282
    const/16 p4, 0x1

    #@f
    .line 284
    .end local p4    # "wasUncontended":Z
    :cond_0
    const/4 v6, 0x0

    #@10
    .line 287
    .local v6, "collide":Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@12
    iget-object v5, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@14
    .local v5, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_c

    #@16
    array-length v10, v5

    #@17
    .local v10, "n":I
    if-lez v10, :cond_c

    #@19
    .line 288
    add-int/lit8 v13, v10, -0x1

    #@1b
    and-int/2addr v13, v7

    #@1c
    aget-object v4, v5, v13

    #@1e
    .local v4, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v4, :cond_6

    #@20
    .line 289
    move-object/from16 v0, p0

    #@22
    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@24
    if-nez v13, :cond_4

    #@26
    .line 290
    new-instance v11, Ljava/util/concurrent/atomic/Striped64$Cell;

    #@28
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@2b
    move-result-wide v16

    #@2c
    move-wide/from16 v0, v16

    #@2e
    invoke-direct {v11, v0, v1}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    #@31
    .line 291
    .local v11, "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    move-object/from16 v0, p0

    #@33
    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@35
    if-nez v13, :cond_4

    #@37
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    #@3a
    move-result v13

    #@3b
    if-eqz v13, :cond_4

    #@3d
    .line 294
    :try_start_0
    move-object/from16 v0, p0

    #@3f
    iget-object v12, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@41
    .local v12, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v12, :cond_3

    #@43
    .line 295
    array-length v9, v12

    #@44
    .local v9, "m":I
    if-lez v9, :cond_3

    #@46
    .line 296
    add-int/lit8 v13, v9, -0x1

    #@48
    and-int v8, v13, v7

    #@4a
    .local v8, "j":I
    aget-object v13, v12, v8

    #@4c
    if-nez v13, :cond_3

    #@4e
    .line 297
    aput-object v11, v12, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 301
    const/4 v13, 0x0

    #@51
    move-object/from16 v0, p0

    #@53
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@55
    .line 277
    .end local v4    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v8    # "j":I
    .end local v9    # "m":I
    .end local v10    # "n":I
    .end local v11    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_2
    :goto_1
    return-void

    #@56
    .line 301
    .restart local v4    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .restart local v10    # "n":I
    .restart local v11    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    .restart local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_3
    const/4 v13, 0x0

    #@57
    move-object/from16 v0, p0

    #@59
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@5b
    goto :goto_0

    #@5c
    .line 300
    .end local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :catchall_0
    move-exception v13

    #@5d
    .line 301
    const/16 v16, 0x0

    #@5f
    move/from16 v0, v16

    #@61
    move-object/from16 v1, p0

    #@63
    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@65
    .line 300
    throw v13

    #@66
    .line 306
    .end local v11    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_4
    const/4 v6, 0x0

    #@67
    .line 326
    :cond_5
    :goto_2
    invoke-static {v7}, Ljava/util/concurrent/atomic/Striped64;->advanceProbe(I)I

    #@6a
    move-result v7

    #@6b
    goto :goto_0

    #@6c
    .line 308
    :cond_6
    if-nez p4, :cond_7

    #@6e
    .line 309
    const/16 p4, 0x1

    #@70
    .local p4, "wasUncontended":Z
    goto :goto_2

    #@71
    .line 310
    .end local p4    # "wasUncontended":Z
    :cond_7
    iget-wide v14, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@73
    .local v14, "v":J
    move-object/from16 v0, p3

    #@75
    move-wide/from16 v1, p1

    #@77
    invoke-static {v0, v14, v15, v1, v2}, Ljava/util/concurrent/atomic/Striped64;->apply(Ljava/util/function/DoubleBinaryOperator;JD)J

    #@7a
    move-result-wide v16

    #@7b
    move-wide/from16 v0, v16

    #@7d
    invoke-virtual {v4, v14, v15, v0, v1}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    #@80
    move-result v13

    #@81
    if-nez v13, :cond_2

    #@83
    .line 312
    sget v13, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    #@85
    if-ge v10, v13, :cond_8

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@8b
    if-eq v13, v5, :cond_9

    #@8d
    .line 313
    :cond_8
    const/4 v6, 0x0

    #@8e
    goto :goto_2

    #@8f
    .line 314
    :cond_9
    if-nez v6, :cond_a

    #@91
    .line 315
    const/4 v6, 0x1

    #@92
    goto :goto_2

    #@93
    .line 316
    :cond_a
    move-object/from16 v0, p0

    #@95
    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@97
    if-nez v13, :cond_5

    #@99
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    #@9c
    move-result v13

    #@9d
    if-eqz v13, :cond_5

    #@9f
    .line 318
    :try_start_1
    move-object/from16 v0, p0

    #@a1
    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@a3
    if-ne v13, v5, :cond_b

    #@a5
    .line 319
    shl-int/lit8 v13, v10, 0x1

    #@a7
    invoke-static {v5, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@aa
    move-result-object v13

    #@ab
    check-cast v13, [Ljava/util/concurrent/atomic/Striped64$Cell;

    #@ad
    move-object/from16 v0, p0

    #@af
    iput-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b1
    .line 321
    :cond_b
    const/4 v13, 0x0

    #@b2
    move-object/from16 v0, p0

    #@b4
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@b6
    .line 323
    const/4 v6, 0x0

    #@b7
    goto/16 :goto_0

    #@b9
    .line 320
    :catchall_1
    move-exception v13

    #@ba
    .line 321
    const/16 v16, 0x0

    #@bc
    move/from16 v0, v16

    #@be
    move-object/from16 v1, p0

    #@c0
    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@c2
    .line 320
    throw v13

    #@c3
    .line 328
    .end local v4    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v10    # "n":I
    .end local v14    # "v":J
    :cond_c
    move-object/from16 v0, p0

    #@c5
    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@c7
    if-nez v13, :cond_e

    #@c9
    move-object/from16 v0, p0

    #@cb
    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@cd
    if-ne v13, v5, :cond_e

    #@cf
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    #@d2
    move-result v13

    #@d3
    if-eqz v13, :cond_e

    #@d5
    .line 330
    :try_start_2
    move-object/from16 v0, p0

    #@d7
    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@d9
    if-ne v13, v5, :cond_d

    #@db
    .line 331
    const/4 v13, 0x2

    #@dc
    new-array v12, v13, [Ljava/util/concurrent/atomic/Striped64$Cell;

    #@de
    .line 332
    .restart local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    and-int/lit8 v13, v7, 0x1

    #@e0
    new-instance v16, Ljava/util/concurrent/atomic/Striped64$Cell;

    #@e2
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@e5
    move-result-wide v18

    #@e6
    move-object/from16 v0, v16

    #@e8
    move-wide/from16 v1, v18

    #@ea
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    #@ed
    aput-object v16, v12, v13

    #@ef
    .line 333
    move-object/from16 v0, p0

    #@f1
    iput-object v12, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@f3
    .line 337
    const/4 v13, 0x0

    #@f4
    move-object/from16 v0, p0

    #@f6
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@f8
    goto/16 :goto_1

    #@fa
    .end local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_d
    const/4 v13, 0x0

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@ff
    goto/16 :goto_0

    #@101
    .line 336
    :catchall_2
    move-exception v13

    #@102
    .line 337
    const/16 v16, 0x0

    #@104
    move/from16 v0, v16

    #@106
    move-object/from16 v1, p0

    #@108
    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@10a
    .line 336
    throw v13

    #@10b
    .line 341
    :cond_e
    move-object/from16 v0, p0

    #@10d
    iget-wide v14, v0, Ljava/util/concurrent/atomic/Striped64;->base:J

    #@10f
    .restart local v14    # "v":J
    move-object/from16 v0, p3

    #@111
    move-wide/from16 v1, p1

    #@113
    invoke-static {v0, v14, v15, v1, v2}, Ljava/util/concurrent/atomic/Striped64;->apply(Ljava/util/function/DoubleBinaryOperator;JD)J

    #@116
    move-result-wide v16

    #@117
    move-object/from16 v0, p0

    #@119
    move-wide/from16 v1, v16

    #@11b
    invoke-virtual {v0, v14, v15, v1, v2}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    #@11e
    move-result v13

    #@11f
    if-eqz v13, :cond_1

    #@121
    goto/16 :goto_1
.end method

.method final longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V
    .locals 19
    .param p1, "x"    # J
    .param p3, "fn"    # Ljava/util/function/LongBinaryOperator;
    .param p4, "wasUncontended"    # Z

    #@0
    .prologue
    .line 195
    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    #@3
    move-result v7

    #@4
    .local v7, "h":I
    if-nez v7, :cond_0

    #@6
    .line 196
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@9
    .line 197
    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    #@c
    move-result v7

    #@d
    .line 198
    const/16 p4, 0x1

    #@f
    .line 200
    .end local p4    # "wasUncontended":Z
    :cond_0
    const/4 v6, 0x0

    #@10
    .line 203
    .local v6, "collide":Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@12
    iget-object v5, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@14
    .local v5, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_d

    #@16
    array-length v10, v5

    #@17
    .local v10, "n":I
    if-lez v10, :cond_d

    #@19
    .line 204
    add-int/lit8 v13, v10, -0x1

    #@1b
    and-int/2addr v13, v7

    #@1c
    aget-object v4, v5, v13

    #@1e
    .local v4, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v4, :cond_6

    #@20
    .line 205
    move-object/from16 v0, p0

    #@22
    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@24
    if-nez v13, :cond_4

    #@26
    .line 206
    new-instance v11, Ljava/util/concurrent/atomic/Striped64$Cell;

    #@28
    move-wide/from16 v0, p1

    #@2a
    invoke-direct {v11, v0, v1}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    #@2d
    .line 207
    .local v11, "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    move-object/from16 v0, p0

    #@2f
    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@31
    if-nez v13, :cond_4

    #@33
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    #@36
    move-result v13

    #@37
    if-eqz v13, :cond_4

    #@39
    .line 210
    :try_start_0
    move-object/from16 v0, p0

    #@3b
    iget-object v12, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@3d
    .local v12, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v12, :cond_3

    #@3f
    .line 211
    array-length v9, v12

    #@40
    .local v9, "m":I
    if-lez v9, :cond_3

    #@42
    .line 212
    add-int/lit8 v13, v9, -0x1

    #@44
    and-int v8, v13, v7

    #@46
    .local v8, "j":I
    aget-object v13, v12, v8

    #@48
    if-nez v13, :cond_3

    #@4a
    .line 213
    aput-object v11, v12, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 217
    const/4 v13, 0x0

    #@4d
    move-object/from16 v0, p0

    #@4f
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@51
    .line 193
    .end local v4    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v8    # "j":I
    .end local v9    # "m":I
    .end local v10    # "n":I
    .end local v11    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_2
    :goto_1
    return-void

    #@52
    .line 217
    .restart local v4    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .restart local v10    # "n":I
    .restart local v11    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    .restart local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_3
    const/4 v13, 0x0

    #@53
    move-object/from16 v0, p0

    #@55
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@57
    goto :goto_0

    #@58
    .line 216
    .end local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :catchall_0
    move-exception v13

    #@59
    .line 217
    const/16 v16, 0x0

    #@5b
    move/from16 v0, v16

    #@5d
    move-object/from16 v1, p0

    #@5f
    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@61
    .line 216
    throw v13

    #@62
    .line 222
    .end local v11    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_4
    const/4 v6, 0x0

    #@63
    .line 243
    :cond_5
    :goto_2
    invoke-static {v7}, Ljava/util/concurrent/atomic/Striped64;->advanceProbe(I)I

    #@66
    move-result v7

    #@67
    goto :goto_0

    #@68
    .line 224
    :cond_6
    if-nez p4, :cond_7

    #@6a
    .line 225
    const/16 p4, 0x1

    #@6c
    .local p4, "wasUncontended":Z
    goto :goto_2

    #@6d
    .line 226
    .end local p4    # "wasUncontended":Z
    :cond_7
    iget-wide v14, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@6f
    .line 227
    .local v14, "v":J
    if-nez p3, :cond_9

    #@71
    add-long v16, v14, p1

    #@73
    .line 226
    :goto_3
    move-wide/from16 v0, v16

    #@75
    invoke-virtual {v4, v14, v15, v0, v1}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    #@78
    move-result v13

    #@79
    if-nez v13, :cond_2

    #@7b
    .line 229
    sget v13, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    #@7d
    if-ge v10, v13, :cond_8

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@83
    if-eq v13, v5, :cond_a

    #@85
    .line 230
    :cond_8
    const/4 v6, 0x0

    #@86
    goto :goto_2

    #@87
    .line 227
    :cond_9
    move-object/from16 v0, p3

    #@89
    move-wide/from16 v1, p1

    #@8b
    invoke-interface {v0, v14, v15, v1, v2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@8e
    move-result-wide v16

    #@8f
    goto :goto_3

    #@90
    .line 231
    :cond_a
    if-nez v6, :cond_b

    #@92
    .line 232
    const/4 v6, 0x1

    #@93
    goto :goto_2

    #@94
    .line 233
    :cond_b
    move-object/from16 v0, p0

    #@96
    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@98
    if-nez v13, :cond_5

    #@9a
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    #@9d
    move-result v13

    #@9e
    if-eqz v13, :cond_5

    #@a0
    .line 235
    :try_start_1
    move-object/from16 v0, p0

    #@a2
    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@a4
    if-ne v13, v5, :cond_c

    #@a6
    .line 236
    shl-int/lit8 v13, v10, 0x1

    #@a8
    invoke-static {v5, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@ab
    move-result-object v13

    #@ac
    check-cast v13, [Ljava/util/concurrent/atomic/Striped64$Cell;

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b2
    .line 238
    :cond_c
    const/4 v13, 0x0

    #@b3
    move-object/from16 v0, p0

    #@b5
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@b7
    .line 240
    const/4 v6, 0x0

    #@b8
    goto/16 :goto_0

    #@ba
    .line 237
    :catchall_1
    move-exception v13

    #@bb
    .line 238
    const/16 v16, 0x0

    #@bd
    move/from16 v0, v16

    #@bf
    move-object/from16 v1, p0

    #@c1
    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@c3
    .line 237
    throw v13

    #@c4
    .line 245
    .end local v4    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v10    # "n":I
    .end local v14    # "v":J
    :cond_d
    move-object/from16 v0, p0

    #@c6
    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@c8
    if-nez v13, :cond_f

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@ce
    if-ne v13, v5, :cond_f

    #@d0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    #@d3
    move-result v13

    #@d4
    if-eqz v13, :cond_f

    #@d6
    .line 247
    :try_start_2
    move-object/from16 v0, p0

    #@d8
    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@da
    if-ne v13, v5, :cond_e

    #@dc
    .line 248
    const/4 v13, 0x2

    #@dd
    new-array v12, v13, [Ljava/util/concurrent/atomic/Striped64$Cell;

    #@df
    .line 249
    .restart local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    and-int/lit8 v13, v7, 0x1

    #@e1
    new-instance v16, Ljava/util/concurrent/atomic/Striped64$Cell;

    #@e3
    move-object/from16 v0, v16

    #@e5
    move-wide/from16 v1, p1

    #@e7
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    #@ea
    aput-object v16, v12, v13

    #@ec
    .line 250
    move-object/from16 v0, p0

    #@ee
    iput-object v12, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@f0
    .line 254
    const/4 v13, 0x0

    #@f1
    move-object/from16 v0, p0

    #@f3
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@f5
    goto/16 :goto_1

    #@f7
    .end local v12    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_e
    const/4 v13, 0x0

    #@f8
    move-object/from16 v0, p0

    #@fa
    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@fc
    goto/16 :goto_0

    #@fe
    .line 253
    :catchall_2
    move-exception v13

    #@ff
    .line 254
    const/16 v16, 0x0

    #@101
    move/from16 v0, v16

    #@103
    move-object/from16 v1, p0

    #@105
    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    #@107
    .line 253
    throw v13

    #@108
    .line 258
    :cond_f
    move-object/from16 v0, p0

    #@10a
    iget-wide v14, v0, Ljava/util/concurrent/atomic/Striped64;->base:J

    #@10c
    .line 259
    .restart local v14    # "v":J
    if-nez p3, :cond_10

    #@10e
    add-long v16, v14, p1

    #@110
    .line 258
    :goto_4
    move-object/from16 v0, p0

    #@112
    move-wide/from16 v1, v16

    #@114
    invoke-virtual {v0, v14, v15, v1, v2}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    #@117
    move-result v13

    #@118
    if-eqz v13, :cond_1

    #@11a
    goto/16 :goto_1

    #@11c
    .line 259
    :cond_10
    move-object/from16 v0, p3

    #@11e
    move-wide/from16 v1, p1

    #@120
    invoke-interface {v0, v14, v15, v1, v2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@123
    move-result-wide v16

    #@124
    goto :goto_4
.end method
