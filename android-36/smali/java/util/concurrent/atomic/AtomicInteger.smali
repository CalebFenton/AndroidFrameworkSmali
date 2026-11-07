.class public Ljava/util/concurrent/atomic/AtomicInteger;
.super Ljava/lang/Number;
.source "AtomicInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist VALUE:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = 0x563f5ecc8c6c168aL


# instance fields
.field private volatile greylist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 69
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 70
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v2, "value"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_12

    .line 73
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 74
    return-void

    .line 71
    :catch_12
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 92
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "initialValue"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 85
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    .line 86
    return-void
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(ILjava/util/function/IntBinaryOperator;)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 365
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "prev":I
    const/4 v1, 0x0

    .line 366
    .local v1, "next":I
    const/4 v2, 0x0

    .line 367
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 368
    invoke-interface {p2, v0, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 369
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->weakCompareAndSetVolatile(II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 370
    return v1

    .line 371
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

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

.method public final whitelist test-api addAndGet(I)I
    .registers 3
    .param p1, "delta"    # I

    .line 274
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final whitelist test-api compareAndExchange(II)I
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I

    .line 520
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;II)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api compareAndExchangeAcquire(II)I
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I

    .line 538
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;II)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api compareAndExchangeRelease(II)I
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I

    .line 556
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;II)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api compareAndSet(II)Z
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I

    .line 153
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicInteger;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api decrementAndGet()I
    .registers 3

    .line 261
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    const/4 v1, -0x1

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 421
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 411
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final whitelist test-api get()I
    .registers 2

    .line 101
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    return v0
.end method

.method public final whitelist test-api getAcquire()I
    .registers 2

    .line 489
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndAccumulate(ILjava/util/function/IntBinaryOperator;)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    .line 338
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "prev":I
    const/4 v1, 0x0

    .line 339
    .local v1, "next":I
    const/4 v2, 0x0

    .line 340
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 341
    invoke-interface {p2, v0, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 342
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->weakCompareAndSetVolatile(II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 343
    return v0

    .line 344
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

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

.method public final whitelist test-api getAndAdd(I)I
    .registers 3
    .param p1, "delta"    # I

    .line 233
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndDecrement()I
    .registers 3

    .line 220
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    const/4 v1, -0x1

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndIncrement()I
    .registers 3

    .line 206
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x1

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndSet(I)I
    .registers 3
    .param p1, "newValue"    # I

    .line 137
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndUpdate(Ljava/util/function/IntUnaryOperator;)I
    .registers 7
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 289
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "prev":I
    const/4 v1, 0x0

    .line 290
    .local v1, "next":I
    const/4 v2, 0x0

    .line 291
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 292
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 293
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->weakCompareAndSetVolatile(II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 294
    return v0

    .line 295
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

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

.method public final whitelist test-api getOpaque()I
    .registers 2

    .line 463
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getOpaque([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getPlain()I
    .registers 2

    .line 436
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api incrementAndGet()I
    .registers 3

    .line 247
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x1

    invoke-polymorphic {v0, p0, v1}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 391
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api lazySet(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 124
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 125
    return-void
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 401
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final whitelist test-api set(I)V
    .registers 2
    .param p1, "newValue"    # I

    .line 111
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    .line 112
    return-void
.end method

.method public final whitelist test-api setOpaque(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 476
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setOpaque([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 477
    return-void
.end method

.method public final whitelist test-api setPlain(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 450
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 451
    return-void
.end method

.method public final whitelist test-api setRelease(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 502
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 503
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 380
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api updateAndGet(Ljava/util/function/IntUnaryOperator;)I
    .registers 7
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    .line 311
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "prev":I
    const/4 v1, 0x0

    .line 312
    .local v1, "next":I
    const/4 v2, 0x0

    .line 313
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 314
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 315
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->weakCompareAndSetVolatile(II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 316
    return v1

    .line 317
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

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

.method public final whitelist test-api weakCompareAndSet(II)Z
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 176
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicInteger;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetAcquire(II)Z
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I

    .line 590
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetAcquire([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicInteger;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetPlain(II)Z
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I

    .line 192
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicInteger;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetRelease(II)Z
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I

    .line 607
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicInteger;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetVolatile(II)Z
    .registers 4
    .param p1, "expectedValue"    # I
    .param p2, "newValue"    # I

    .line 573
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicInteger;II)Z

    move-result v0

    return v0
.end method
