.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist AA:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = -0x200931f59d1d4008L


# instance fields
.field private final greylist-max-o array:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    nop

    .line 53
    const-class v0, [J

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    .line 52
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>([J)V
    .registers 3
    .param p1, "array"    # [J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 76
    return-void
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(IJLjava/util/function/LongBinaryOperator;)J
    .registers 16
    .param p1, "i"    # I
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 358
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 359
    .local v2, "next":J
    const/4 v4, 0x0

    move-wide v7, v0

    .line 360
    .end local v0    # "prev":J
    .local v4, "haveNext":Z
    .local v7, "prev":J
    :goto_8
    if-nez v4, :cond_10

    .line 361
    invoke-interface {p4, v7, v8, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_11

    .line 360
    :cond_10
    move-wide v9, v2

    .line 362
    .end local v2    # "next":J
    .local v9, "next":J
    :goto_11
    move-object v5, p0

    move v6, p1

    .end local p1    # "i":I
    .local v6, "i":I
    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongArray;->weakCompareAndSetVolatile(IJJ)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 363
    return-wide v9

    .line 364
    :cond_1a
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    move-wide v2, v0

    .end local v7    # "prev":J
    .local v2, "prev":J
    cmp-long p1, v7, v0

    if-nez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    move v4, p1

    move-wide v7, v2

    move p1, v6

    move-wide v2, v9

    goto :goto_8
.end method

.method public whitelist test-api addAndGet(IJ)J
    .registers 6
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .line 259
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJ)J

    move-result-wide v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public final whitelist test-api compareAndExchange(IJJ)J
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 478
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final whitelist test-api compareAndExchangeAcquire(IJJ)J
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 496
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final whitelist test-api compareAndExchangeRelease(IJJ)J
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 514
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final whitelist test-api compareAndSet(IJJ)Z
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 146
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, ([JIJJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api decrementAndGet(I)J
    .registers 6
    .param p1, "i"    # I

    .line 247
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    const-wide/16 v2, -0x1

    invoke-polymorphic {v0, v1, p1, v2, v3}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist test-api get(I)J
    .registers 4
    .param p1, "i"    # I

    .line 95
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, ([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAcquire(I)J
    .registers 4
    .param p1, "i"    # I

    .line 448
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndAccumulate(IJLjava/util/function/LongBinaryOperator;)J
    .registers 16
    .param p1, "i"    # I
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 329
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 330
    .local v2, "next":J
    const/4 v4, 0x0

    move-wide v7, v0

    .line 331
    .end local v0    # "prev":J
    .local v4, "haveNext":Z
    .local v7, "prev":J
    :goto_8
    if-nez v4, :cond_10

    .line 332
    invoke-interface {p4, v7, v8, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_11

    .line 331
    :cond_10
    move-wide v9, v2

    .line 333
    .end local v2    # "next":J
    .local v9, "next":J
    :goto_11
    move-object v5, p0

    move v6, p1

    .end local p1    # "i":I
    .local v6, "i":I
    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongArray;->weakCompareAndSetVolatile(IJJ)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 334
    return-wide v7

    .line 335
    :cond_1a
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    move-wide v2, v0

    .end local v7    # "prev":J
    .local v2, "prev":J
    cmp-long p1, v7, v0

    if-nez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    move v4, p1

    move-wide v7, v2

    move p1, v6

    move-wide v2, v9

    goto :goto_8
.end method

.method public final whitelist test-api getAndAdd(IJ)J
    .registers 6
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .line 221
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndDecrement(I)J
    .registers 6
    .param p1, "i"    # I

    .line 209
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    const-wide/16 v2, -0x1

    invoke-polymorphic {v0, v1, p1, v2, v3}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndIncrement(I)J
    .registers 6
    .param p1, "i"    # I

    .line 196
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    const-wide/16 v2, 0x1

    invoke-polymorphic {v0, v1, p1, v2, v3}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndSet(IJ)J
    .registers 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 131
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndUpdate(ILjava/util/function/LongUnaryOperator;)J
    .registers 14
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 276
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 277
    .local v2, "next":J
    const/4 v4, 0x0

    move-wide v7, v0

    .line 278
    .end local v0    # "prev":J
    .local v4, "haveNext":Z
    .local v7, "prev":J
    :goto_8
    if-nez v4, :cond_10

    .line 279
    invoke-interface {p2, v7, v8}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_11

    .line 278
    :cond_10
    move-wide v9, v2

    .line 280
    .end local v2    # "next":J
    .local v9, "next":J
    :goto_11
    move-object v5, p0

    move v6, p1

    .end local p1    # "i":I
    .local v6, "i":I
    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongArray;->weakCompareAndSetVolatile(IJJ)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 281
    return-wide v7

    .line 282
    :cond_1a
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    move-wide v2, v0

    .end local v7    # "prev":J
    .local v2, "prev":J
    cmp-long p1, v7, v0

    if-nez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    move v4, p1

    move-wide v7, v2

    move p1, v6

    move-wide v2, v9

    goto :goto_8
.end method

.method public final whitelist test-api getOpaque(I)J
    .registers 4
    .param p1, "i"    # I

    .line 424
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getOpaque([Ljava/lang/Object;)Ljava/lang/Object;, ([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getPlain(I)J
    .registers 4
    .param p1, "i"    # I

    .line 399
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, ([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api incrementAndGet(I)J
    .registers 6
    .param p1, "i"    # I

    .line 234
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    const-wide/16 v2, 0x1

    invoke-polymorphic {v0, v1, p1, v2, v3}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([JIJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist test-api lazySet(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 118
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, ([JIJ)V

    .line 119
    return-void
.end method

.method public final whitelist test-api length()I
    .registers 2

    .line 84
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    return v0
.end method

.method public final whitelist test-api set(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 106
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->setVolatile([Ljava/lang/Object;)V, ([JIJ)V

    .line 107
    return-void
.end method

.method public final whitelist test-api setOpaque(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 436
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->setOpaque([Ljava/lang/Object;)V, ([JIJ)V

    .line 437
    return-void
.end method

.method public final whitelist test-api setPlain(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 412
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, ([JIJ)V

    .line 413
    return-void
.end method

.method public final whitelist test-api setRelease(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .line 460
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, ([JIJ)V

    .line 461
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 373
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 374
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 375
    const-string v1, "[]"

    return-object v1

    .line 377
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "i":I
    :goto_16
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 381
    if-ne v2, v0, :cond_2a

    .line 382
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 383
    :cond_2a
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public final whitelist test-api updateAndGet(ILjava/util/function/LongUnaryOperator;)J
    .registers 14
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 300
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 301
    .local v2, "next":J
    const/4 v4, 0x0

    move-wide v7, v0

    .line 302
    .end local v0    # "prev":J
    .local v4, "haveNext":Z
    .local v7, "prev":J
    :goto_8
    if-nez v4, :cond_10

    .line 303
    invoke-interface {p2, v7, v8}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_11

    .line 302
    :cond_10
    move-wide v9, v2

    .line 304
    .end local v2    # "next":J
    .local v9, "next":J
    :goto_11
    move-object v5, p0

    move v6, p1

    .end local p1    # "i":I
    .local v6, "i":I
    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongArray;->weakCompareAndSetVolatile(IJJ)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 305
    return-wide v9

    .line 306
    :cond_1a
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    move-wide v2, v0

    .end local v7    # "prev":J
    .local v2, "prev":J
    cmp-long p1, v7, v0

    if-nez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    move v4, p1

    move-wide v7, v2

    move p1, v6

    move-wide v2, v9

    goto :goto_8
.end method

.method public final whitelist test-api weakCompareAndSet(IJJ)Z
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 168
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, ([JIJJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api weakCompareAndSetAcquire(IJJ)Z
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 546
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetAcquire([Ljava/lang/Object;)Z, ([JIJJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api weakCompareAndSetPlain(IJJ)Z
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 183
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, ([JIJJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api weakCompareAndSetRelease(IJJ)Z
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 562
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, ([JIJJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api weakCompareAndSetVolatile(IJJ)Z
    .registers 13
    .param p1, "i"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 530
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "i":I
    .end local p2    # "expectedValue":J
    .end local p4    # "newValue":J
    .local v2, "i":I
    .local v3, "expectedValue":J
    .local v5, "newValue":J
    invoke-polymorphic/range {v0 .. v6}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, ([JIJJ)Z

    move-result p1

    return p1
.end method
