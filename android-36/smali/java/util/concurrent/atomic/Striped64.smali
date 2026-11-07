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
.field private static final blacklist BASE:Ljava/lang/invoke/VarHandle;

.field private static final blacklist CELLSBUSY:Ljava/lang/invoke/VarHandle;

.field static final greylist-max-o NCPU:I

.field private static final blacklist THREAD_PROBE:Ljava/lang/invoke/VarHandle;


# instance fields
.field volatile transient greylist-max-o base:J

.field volatile transient greylist-max-o cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

.field volatile transient greylist-max-o cellsBusy:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 154
    const-class v0, Ljava/util/concurrent/atomic/Striped64;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    .line 386
    :try_start_c
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 387
    .local v1, "l1":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "base"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/atomic/Striped64;->BASE:Ljava/lang/invoke/VarHandle;

    .line 389
    const-string v2, "cellsBusy"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/Striped64;->CELLSBUSY:Ljava/lang/invoke/VarHandle;

    .line 392
    new-instance v0, Ljava/util/concurrent/atomic/Striped64$1;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/Striped64$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 401
    .local v0, "l2":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v2, Ljava/lang/Thread;

    const-string v3, "threadLocalRandomProbe"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/atomic/Striped64;->THREAD_PROBE:Ljava/lang/invoke/VarHandle;
    :try_end_3b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_c .. :try_end_3b} :catch_3d

    .line 405
    .end local v0    # "l2":Ljava/lang/invoke/MethodHandles$Lookup;
    .end local v1    # "l1":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 406
    return-void

    .line 403
    :catch_3d
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 176
    return-void
.end method

.method static final greylist-max-o advanceProbe(I)I
    .registers 3
    .param p0, "probe"    # I

    .line 210
    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 211
    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    .line 212
    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    .line 213
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->THREAD_PROBE:Ljava/lang/invoke/VarHandle;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-polymorphic {v0, v1, p0}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/lang/Thread;I)V

    .line 214
    return p0
.end method

.method private static greylist-max-o apply(Ljava/util/function/DoubleBinaryOperator;JD)J
    .registers 9
    .param p0, "fn"    # Ljava/util/function/DoubleBinaryOperator;
    .param p1, "v"    # J
    .param p3, "x"    # D

    .line 301
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 302
    .local v0, "d":D
    if-nez p0, :cond_9

    add-double v2, v0, p3

    goto :goto_d

    :cond_9
    invoke-interface {p0, v0, v1, p3, p4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    .line 303
    .end local v0    # "d":D
    .local v2, "d":D
    :goto_d
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0
.end method

.method static final greylist-max-o getProbe()I
    .registers 2

    .line 201
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->THREAD_PROBE:Ljava/lang/invoke/VarHandle;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-polymorphic {v0, v1}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/Thread;)I

    move-result v0

    return v0
.end method


# virtual methods
.method final greylist-max-o casBase(JJ)Z
    .registers 11
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .line 182
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->BASE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "cmp":J
    .end local p3    # "val":J
    .local v2, "cmp":J
    .local v4, "val":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/Striped64;JJ)Z

    move-result p1

    return p1
.end method

.method final greylist-max-o casCellsBusy()Z
    .registers 4

    .line 193
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->CELLSBUSY:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/Striped64;II)Z

    move-result v0

    return v0
.end method

.method final blacklist doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;ZI)V
    .registers 22
    .param p1, "x"    # D
    .param p3, "fn"    # Ljava/util/function/DoubleBinaryOperator;
    .param p4, "wasUncontended"    # Z
    .param p5, "index"    # I

    .line 314
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    if-nez p5, :cond_11

    .line 315
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 316
    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v0

    .line 317
    .end local p5    # "index":I
    .local v0, "index":I
    const/4 v5, 0x1

    .end local p4    # "wasUncontended":Z
    .local v5, "wasUncontended":Z
    goto :goto_15

    .line 314
    .end local v0    # "index":I
    .end local v5    # "wasUncontended":Z
    .restart local p4    # "wasUncontended":Z
    .restart local p5    # "index":I
    :cond_11
    move/from16 v5, p4

    move/from16 v0, p5

    .line 319
    .end local p4    # "wasUncontended":Z
    .end local p5    # "index":I
    .restart local v0    # "index":I
    .restart local v5    # "wasUncontended":Z
    :goto_15
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v0

    .line 321
    .end local v0    # "index":I
    .local v5, "index":I
    .local v6, "wasUncontended":Z
    .local v7, "collide":Z
    :goto_19
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v8, v0

    .local v8, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const/4 v9, 0x0

    if-eqz v0, :cond_b6

    array-length v0, v8

    move v10, v0

    .local v10, "n":I
    if-lez v0, :cond_b5

    .line 322
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    aget-object v0, v8, v0

    move-object v11, v0

    .local v11, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_65

    .line 323
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_62

    .line 324
    new-instance v0, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v12

    invoke-direct {v0, v12, v13}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    move-object v12, v0

    .line 325
    .local v12, "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_62

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 328
    :try_start_43
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v13, v0

    .local v13, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_5a

    array-length v0, v13

    move v14, v0

    .local v14, "m":I
    if-lez v0, :cond_5a

    add-int/lit8 v0, v14, -0x1

    and-int/2addr v0, v5

    move v15, v0

    .local v15, "j":I
    aget-object v0, v13, v0

    if-nez v0, :cond_5a

    .line 331
    aput-object v12, v13, v15
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_5e

    .line 335
    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 332
    goto/16 :goto_f5

    .line 335
    .end local v13    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v14    # "m":I
    .end local v15    # "j":I
    :cond_5a
    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 336
    nop

    .line 337
    goto :goto_19

    .line 335
    :catchall_5e
    move-exception v0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 336
    throw v0

    .line 340
    .end local v12    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_62
    const/4 v7, 0x0

    move v9, v10

    goto :goto_af

    .line 342
    :cond_65
    if-nez v6, :cond_6a

    .line 343
    const/4 v6, 0x1

    move v9, v10

    goto :goto_af

    .line 344
    :cond_6a
    iget-wide v12, v11, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v14, v12

    move/from16 p4, v10

    .end local v10    # "n":I
    .local v14, "v":J
    .local p4, "n":I
    invoke-static {v4, v14, v15, v2, v3}, Ljava/util/concurrent/atomic/Striped64;->apply(Ljava/util/function/DoubleBinaryOperator;JD)J

    move-result-wide v9

    invoke-virtual {v11, v12, v13, v9, v10}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 345
    goto/16 :goto_f5

    .line 346
    :cond_7b
    sget v0, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    move/from16 v9, p4

    .end local p4    # "n":I
    .local v9, "n":I
    if-ge v9, v0, :cond_ae

    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eq v0, v8, :cond_86

    goto :goto_ae

    .line 348
    :cond_86
    if-nez v7, :cond_8a

    .line 349
    const/4 v7, 0x1

    goto :goto_af

    .line 350
    :cond_8a
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_af

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 352
    :try_start_94
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_a2

    .line 353
    shl-int/lit8 v0, v9, 0x1

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/atomic/Striped64$Cell;

    iput-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_a2
    .catchall {:try_start_94 .. :try_end_a2} :catchall_a9

    .line 355
    :cond_a2
    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 356
    nop

    .line 357
    const/4 v7, 0x0

    .line 358
    goto/16 :goto_19

    .line 355
    :catchall_a9
    move-exception v0

    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 356
    throw v0

    .line 347
    :cond_ae
    :goto_ae
    const/4 v7, 0x0

    .line 360
    .end local v14    # "v":J
    :cond_af
    :goto_af
    invoke-static {v5}, Ljava/util/concurrent/atomic/Striped64;->advanceProbe(I)I

    move-result v0

    move v5, v0

    .end local v5    # "index":I
    .restart local v0    # "index":I
    goto :goto_f6

    .line 321
    .end local v0    # "index":I
    .end local v9    # "n":I
    .end local v11    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    .restart local v5    # "index":I
    .restart local v10    # "n":I
    :cond_b5
    move v9, v10

    .line 362
    .end local v10    # "n":I
    :cond_b6
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_e7

    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_e7

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 364
    :try_start_c4
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_de

    .line 365
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 366
    .local v0, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    and-int/lit8 v9, v5, 0x1

    new-instance v10, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    aput-object v10, v0, v9

    .line 367
    iput-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_da
    .catchall {:try_start_c4 .. :try_end_da} :catchall_e2

    .line 371
    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 368
    goto :goto_f5

    .line 371
    .end local v0    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_de
    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 372
    goto :goto_f6

    .line 371
    :catchall_e2
    move-exception v0

    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 372
    throw v0

    .line 375
    :cond_e7
    iget-wide v9, v1, Ljava/util/concurrent/atomic/Striped64;->base:J

    move-wide v11, v9

    .local v11, "v":J
    invoke-static {v4, v11, v12, v2, v3}, Ljava/util/concurrent/atomic/Striped64;->apply(Ljava/util/function/DoubleBinaryOperator;JD)J

    move-result-wide v13

    invoke-virtual {v1, v9, v10, v13, v14}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 376
    nop

    .line 378
    .end local v7    # "collide":Z
    .end local v8    # "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v11    # "v":J
    :goto_f5
    return-void

    .line 377
    .restart local v7    # "collide":Z
    :cond_f6
    :goto_f6
    goto/16 :goto_19
.end method

.method final blacklist getAndSetBase(J)J
    .registers 5
    .param p1, "val"    # J

    .line 186
    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->BASE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/Striped64;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final blacklist longAccumulate(JLjava/util/function/LongBinaryOperator;ZI)V
    .registers 24
    .param p1, "x"    # J
    .param p3, "fn"    # Ljava/util/function/LongBinaryOperator;
    .param p4, "wasUncontended"    # Z
    .param p5, "index"    # I

    .line 232
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    if-nez p5, :cond_11

    .line 233
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 234
    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v0

    .line 235
    .end local p5    # "index":I
    .local v0, "index":I
    const/4 v5, 0x1

    .end local p4    # "wasUncontended":Z
    .local v5, "wasUncontended":Z
    goto :goto_15

    .line 232
    .end local v0    # "index":I
    .end local v5    # "wasUncontended":Z
    .restart local p4    # "wasUncontended":Z
    .restart local p5    # "index":I
    :cond_11
    move/from16 v5, p4

    move/from16 v0, p5

    .line 237
    .end local p4    # "wasUncontended":Z
    .end local p5    # "index":I
    .restart local v0    # "index":I
    .restart local v5    # "wasUncontended":Z
    :goto_15
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v0

    .line 239
    .end local v0    # "index":I
    .local v5, "index":I
    .local v6, "wasUncontended":Z
    .local v7, "collide":Z
    :goto_19
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v8, v0

    .local v8, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const/4 v9, 0x0

    if-eqz v0, :cond_b9

    array-length v0, v8

    move v10, v0

    .local v10, "n":I
    if-lez v0, :cond_b8

    .line 240
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    aget-object v0, v8, v0

    move-object v11, v0

    .local v11, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_61

    .line 241
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_5e

    .line 242
    new-instance v0, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    move-object v12, v0

    .line 243
    .local v12, "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_5e

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 246
    :try_start_3f
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v13, v0

    .local v13, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_56

    array-length v0, v13

    move v14, v0

    .local v14, "m":I
    if-lez v0, :cond_56

    add-int/lit8 v0, v14, -0x1

    and-int/2addr v0, v5

    move v15, v0

    .local v15, "j":I
    aget-object v0, v13, v0

    if-nez v0, :cond_56

    .line 249
    aput-object v12, v13, v15
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_5a

    .line 253
    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 250
    goto/16 :goto_f9

    .line 253
    .end local v13    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v14    # "m":I
    .end local v15    # "j":I
    :cond_56
    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 254
    nop

    .line 255
    goto :goto_19

    .line 253
    :catchall_5a
    move-exception v0

    iput v9, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 254
    throw v0

    .line 258
    .end local v12    # "r":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_5e
    const/4 v7, 0x0

    move v9, v10

    goto :goto_b2

    .line 260
    :cond_61
    if-nez v6, :cond_66

    .line 261
    const/4 v6, 0x1

    move v9, v10

    goto :goto_b2

    .line 262
    :cond_66
    iget-wide v12, v11, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v14, v12

    .line 263
    .local v14, "v":J
    if-nez v4, :cond_6e

    add-long v16, v14, v2

    goto :goto_72

    :cond_6e
    invoke-interface {v4, v14, v15, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v16

    :goto_72
    move/from16 p4, v10

    move-wide/from16 v9, v16

    .line 262
    .end local v10    # "n":I
    .local p4, "n":I
    invoke-virtual {v11, v12, v13, v9, v10}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 264
    goto/16 :goto_f9

    .line 265
    :cond_7e
    sget v0, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    move/from16 v9, p4

    .end local p4    # "n":I
    .local v9, "n":I
    if-ge v9, v0, :cond_b1

    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eq v0, v8, :cond_89

    goto :goto_b1

    .line 267
    :cond_89
    if-nez v7, :cond_8d

    .line 268
    const/4 v7, 0x1

    goto :goto_b2

    .line 269
    :cond_8d
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_b2

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 271
    :try_start_97
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_a5

    .line 272
    shl-int/lit8 v0, v9, 0x1

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/atomic/Striped64$Cell;

    iput-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_a5
    .catchall {:try_start_97 .. :try_end_a5} :catchall_ac

    .line 274
    :cond_a5
    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 275
    nop

    .line 276
    const/4 v7, 0x0

    .line 277
    goto/16 :goto_19

    .line 274
    :catchall_ac
    move-exception v0

    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 275
    throw v0

    .line 266
    :cond_b1
    :goto_b1
    const/4 v7, 0x0

    .line 279
    .end local v14    # "v":J
    :cond_b2
    :goto_b2
    invoke-static {v5}, Ljava/util/concurrent/atomic/Striped64;->advanceProbe(I)I

    move-result v0

    move v5, v0

    .end local v5    # "index":I
    .restart local v0    # "index":I
    goto :goto_fa

    .line 239
    .end local v0    # "index":I
    .end local v9    # "n":I
    .end local v11    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    .restart local v5    # "index":I
    .restart local v10    # "n":I
    :cond_b8
    move v9, v10

    .line 281
    .end local v10    # "n":I
    :cond_b9
    iget v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v0, :cond_e6

    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_e6

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 283
    :try_start_c7
    iget-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v0, v8, :cond_dd

    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 285
    .local v0, "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    and-int/lit8 v9, v5, 0x1

    new-instance v10, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-direct {v10, v2, v3}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    aput-object v10, v0, v9

    .line 286
    iput-object v0, v1, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_d9
    .catchall {:try_start_c7 .. :try_end_d9} :catchall_e1

    .line 290
    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 287
    goto :goto_f9

    .line 290
    .end local v0    # "rs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_dd
    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 291
    goto :goto_fa

    .line 290
    :catchall_e1
    move-exception v0

    const/4 v10, 0x0

    iput v10, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    .line 291
    throw v0

    .line 294
    :cond_e6
    iget-wide v9, v1, Ljava/util/concurrent/atomic/Striped64;->base:J

    move-wide v11, v9

    .line 295
    .local v11, "v":J
    if-nez v4, :cond_ee

    add-long v13, v11, v2

    goto :goto_f2

    :cond_ee
    invoke-interface {v4, v11, v12, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v13

    .line 294
    :goto_f2
    invoke-virtual {v1, v9, v10, v13, v14}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 296
    nop

    .line 298
    .end local v7    # "collide":Z
    .end local v8    # "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v11    # "v":J
    :goto_f9
    return-void

    .line 297
    .restart local v7    # "collide":Z
    :cond_fa
    :goto_fa
    goto/16 :goto_19
.end method
