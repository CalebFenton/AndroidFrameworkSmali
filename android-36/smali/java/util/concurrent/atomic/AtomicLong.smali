.class public Ljava/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist VALUE:Ljava/lang/invoke/VarHandle;

.field static final greylist-max-o VM_SUPPORTS_LONG_CAS:Z

.field private static final whitelist serialVersionUID:J = 0x1ac0fab477001718L


# instance fields
.field private volatile greylist-max-o value:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 64
    invoke-static {}, Ljava/util/concurrent/atomic/AtomicLong;->VMSupportsCS8()Z

    move-result v0

    sput-boolean v0, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    .line 83
    :try_start_6
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 84
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "value"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;
    :try_end_16
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_16} :catch_18

    .line 87
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 88
    return-void

    .line 85
    :catch_18
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 106
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 3
    .param p1, "initialValue"    # J

    .line 98
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 99
    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    .line 100
    return-void
.end method

.method private static native greylist-max-o VMSupportsCS8()Z
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(JLjava/util/function/LongBinaryOperator;)J
    .registers 13
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 382
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 383
    .local v2, "next":J
    const/4 v4, 0x0

    .line 384
    .local v4, "haveNext":Z
    :goto_7
    if-nez v4, :cond_d

    .line 385
    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 386
    :cond_d
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->weakCompareAndSetVolatile(JJ)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 387
    return-wide v2

    .line 388
    :cond_14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-wide v7, v5

    .end local v0    # "prev":J
    .local v7, "prev":J
    cmp-long v0, v0, v5

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v4, v0

    move-wide v0, v7

    goto :goto_7
.end method

.method public final whitelist test-api addAndGet(J)J
    .registers 5
    .param p1, "delta"    # J

    .line 291
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final whitelist test-api compareAndExchange(JJ)J
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J

    .line 535
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final whitelist test-api compareAndExchangeAcquire(JJ)J
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J

    .line 553
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final whitelist test-api compareAndExchangeRelease(JJ)J
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J

    .line 571
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final whitelist test-api compareAndSet(JJ)Z
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J

    .line 170
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicLong;JJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api decrementAndGet()J
    .registers 5

    .line 278
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    const-wide/16 v1, -0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 436
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 426
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final whitelist test-api get()J
    .registers 3

    .line 115
    iget-wide v0, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-wide v0
.end method

.method public final whitelist test-api getAcquire()J
    .registers 3

    .line 504
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndAccumulate(JLjava/util/function/LongBinaryOperator;)J
    .registers 13
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    .line 355
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 356
    .local v2, "next":J
    const/4 v4, 0x0

    .line 357
    .local v4, "haveNext":Z
    :goto_7
    if-nez v4, :cond_d

    .line 358
    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 359
    :cond_d
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->weakCompareAndSetVolatile(JJ)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 360
    return-wide v0

    .line 361
    :cond_14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-wide v7, v5

    .end local v0    # "prev":J
    .local v7, "prev":J
    cmp-long v0, v0, v5

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v4, v0

    move-wide v0, v7

    goto :goto_7
.end method

.method public final whitelist test-api getAndAdd(J)J
    .registers 5
    .param p1, "delta"    # J

    .line 250
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndDecrement()J
    .registers 4

    .line 237
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    const-wide/16 v1, -0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndIncrement()J
    .registers 4

    .line 223
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    const-wide/16 v1, 0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndSet(J)J
    .registers 5
    .param p1, "newValue"    # J

    .line 154
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndUpdate(Ljava/util/function/LongUnaryOperator;)J
    .registers 11
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 306
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 307
    .local v2, "next":J
    const/4 v4, 0x0

    .line 308
    .local v4, "haveNext":Z
    :goto_7
    if-nez v4, :cond_d

    .line 309
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    .line 310
    :cond_d
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->weakCompareAndSetVolatile(JJ)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 311
    return-wide v0

    .line 312
    :cond_14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-wide v7, v5

    .end local v0    # "prev":J
    .local v7, "prev":J
    cmp-long v0, v0, v5

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v4, v0

    move-wide v0, v7

    goto :goto_7
.end method

.method public final whitelist test-api getOpaque()J
    .registers 3

    .line 478
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getOpaque([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getPlain()J
    .registers 3

    .line 451
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api incrementAndGet()J
    .registers 6

    .line 264
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    const-wide/16 v1, 0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 407
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final whitelist test-api lazySet(J)V
    .registers 4
    .param p1, "newValue"    # J

    .line 141
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 142
    return-void
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 416
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api set(J)V
    .registers 4
    .param p1, "newValue"    # J

    .line 128
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->setVolatile([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 129
    return-void
.end method

.method public final whitelist test-api setOpaque(J)V
    .registers 4
    .param p1, "newValue"    # J

    .line 491
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->setOpaque([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 492
    return-void
.end method

.method public final whitelist test-api setPlain(J)V
    .registers 4
    .param p1, "newValue"    # J

    .line 465
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 466
    return-void
.end method

.method public final whitelist test-api setRelease(J)V
    .registers 4
    .param p1, "newValue"    # J

    .line 517
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 518
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 397
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api updateAndGet(Ljava/util/function/LongUnaryOperator;)J
    .registers 11
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    .line 328
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 329
    .local v2, "next":J
    const/4 v4, 0x0

    .line 330
    .local v4, "haveNext":Z
    :goto_7
    if-nez v4, :cond_d

    .line 331
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    .line 332
    :cond_d
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->weakCompareAndSetVolatile(JJ)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 333
    return-wide v2

    .line 334
    :cond_14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-wide v7, v5

    .end local v0    # "prev":J
    .local v7, "prev":J
    cmp-long v0, v0, v5

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v4, v0

    move-wide v0, v7

    goto :goto_7
.end method

.method public final whitelist test-api weakCompareAndSet(JJ)Z
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 193
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicLong;JJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api weakCompareAndSetAcquire(JJ)Z
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J

    .line 605
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetAcquire([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicLong;JJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api weakCompareAndSetPlain(JJ)Z
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J

    .line 209
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicLong;JJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api weakCompareAndSetRelease(JJ)Z
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J

    .line 622
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicLong;JJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api weakCompareAndSetVolatile(JJ)Z
    .registers 11
    .param p1, "expectedValue"    # J
    .param p3, "newValue"    # J

    .line 588
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "expectedValue":J
    .end local p3    # "newValue":J
    .local v2, "expectedValue":J
    .local v4, "newValue":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicLong;JJ)Z

    move-result p1

    return p1
.end method
