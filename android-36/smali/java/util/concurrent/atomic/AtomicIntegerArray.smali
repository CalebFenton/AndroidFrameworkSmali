.class public Ljava/util/concurrent/atomic/AtomicIntegerArray;
.super Ljava/lang/Object;
.source "AtomicIntegerArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist AA:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = 0x27b857513300bd8bL


# instance fields
.field private final greylist-max-o array:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    nop

    .line 53
    const-class v0, [I

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    .line 52
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>([I)V
    .registers 3
    .param p1, "array"    # [I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 76
    return-void
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(IILjava/util/function/IntBinaryOperator;)I
    .registers 9
    .param p1, "i"    # I
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 358
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .local v0, "prev":I
    const/4 v1, 0x0

    .line 359
    .local v1, "next":I
    const/4 v2, 0x0

    .line 360
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 361
    invoke-interface {p3, v0, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 362
    :cond_c
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->weakCompareAndSetVolatile(III)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 363
    return v1

    .line 364
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    move v4, v3

    .end local v0    # "prev":I
    .local v4, "prev":I
    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move v2, v0

    move v0, v4

    goto :goto_6
.end method

.method public final whitelist test-api addAndGet(II)I
    .registers 5
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .line 259
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([III)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public final whitelist test-api compareAndExchange(III)I
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I

    .line 478
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, ([IIII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api compareAndExchangeAcquire(III)I
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I

    .line 496
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([IIII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api compareAndExchangeRelease(III)I
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I

    .line 514
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;, ([IIII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api compareAndSet(III)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I

    .line 146
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, ([IIII)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api decrementAndGet(I)I
    .registers 5
    .param p1, "i"    # I

    .line 247
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    const/4 v2, -0x1

    invoke-polymorphic {v0, v1, p1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([III)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final whitelist test-api get(I)I
    .registers 4
    .param p1, "i"    # I

    .line 95
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, ([II)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAcquire(I)I
    .registers 4
    .param p1, "i"    # I

    .line 448
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([II)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndAccumulate(IILjava/util/function/IntBinaryOperator;)I
    .registers 9
    .param p1, "i"    # I
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 329
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .local v0, "prev":I
    const/4 v1, 0x0

    .line 330
    .local v1, "next":I
    const/4 v2, 0x0

    .line 331
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 332
    invoke-interface {p3, v0, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 333
    :cond_c
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->weakCompareAndSetVolatile(III)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 334
    return v0

    .line 335
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    move v4, v3

    .end local v0    # "prev":I
    .local v4, "prev":I
    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move v2, v0

    move v0, v4

    goto :goto_6
.end method

.method public final whitelist test-api getAndAdd(II)I
    .registers 5
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .line 221
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([III)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndDecrement(I)I
    .registers 5
    .param p1, "i"    # I

    .line 209
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    const/4 v2, -0x1

    invoke-polymorphic {v0, v1, p1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([III)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndIncrement(I)I
    .registers 5
    .param p1, "i"    # I

    .line 196
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    const/4 v2, 0x1

    invoke-polymorphic {v0, v1, p1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([III)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndSet(II)I
    .registers 5
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 131
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, ([III)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndUpdate(ILjava/util/function/IntUnaryOperator;)I
    .registers 8
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 276
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .local v0, "prev":I
    const/4 v1, 0x0

    .line 277
    .local v1, "next":I
    const/4 v2, 0x0

    .line 278
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 279
    invoke-interface {p2, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 280
    :cond_c
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->weakCompareAndSetVolatile(III)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 281
    return v0

    .line 282
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    move v4, v3

    .end local v0    # "prev":I
    .local v4, "prev":I
    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move v2, v0

    move v0, v4

    goto :goto_6
.end method

.method public final whitelist test-api getOpaque(I)I
    .registers 4
    .param p1, "i"    # I

    .line 424
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getOpaque([Ljava/lang/Object;)Ljava/lang/Object;, ([II)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getPlain(I)I
    .registers 4
    .param p1, "i"    # I

    .line 399
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, ([II)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api incrementAndGet(I)I
    .registers 5
    .param p1, "i"    # I

    .line 234
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    const/4 v2, 0x1

    invoke-polymorphic {v0, v1, p1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, ([III)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final whitelist test-api lazySet(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 118
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, ([III)V

    .line 119
    return-void
.end method

.method public final whitelist test-api length()I
    .registers 2

    .line 84
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public final whitelist test-api set(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 106
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->setVolatile([Ljava/lang/Object;)V, ([III)V

    .line 107
    return-void
.end method

.method public final whitelist test-api setOpaque(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 436
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->setOpaque([Ljava/lang/Object;)V, ([III)V

    .line 437
    return-void
.end method

.method public final whitelist test-api setPlain(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 412
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, ([III)V

    .line 413
    return-void
.end method

.method public final whitelist test-api setRelease(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .line 460
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, ([III)V

    .line 461
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 373
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

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
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method public final whitelist test-api updateAndGet(ILjava/util/function/IntUnaryOperator;)I
    .registers 8
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 300
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .local v0, "prev":I
    const/4 v1, 0x0

    .line 301
    .local v1, "next":I
    const/4 v2, 0x0

    .line 302
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 303
    invoke-interface {p2, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 304
    :cond_c
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->weakCompareAndSetVolatile(III)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 305
    return v1

    .line 306
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    move v4, v3

    .end local v0    # "prev":I
    .local v4, "prev":I
    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move v2, v0

    move v0, v4

    goto :goto_6
.end method

.method public final whitelist test-api weakCompareAndSet(III)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 168
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, ([IIII)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetAcquire(III)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I

    .line 546
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetAcquire([Ljava/lang/Object;)Z, ([IIII)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetPlain(III)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I

    .line 183
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, ([IIII)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetRelease(III)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I

    .line 562
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, ([IIII)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetVolatile(III)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "expectedValue"    # I
    .param p3, "newValue"    # I

    .line 530
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, ([IIII)Z

    move-result v0

    return v0
.end method
