.class public Ljava/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J

.field static final VM_SUPPORTS_LONG_CAS:Z

.field private static final serialVersionUID:J = 0x1ac0fab477001718L


# instance fields
.field private volatile value:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 28
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@6
    .line 37
    invoke-static {}, Ljava/util/concurrent/atomic/AtomicLong;->VMSupportsCS8()Z

    #@9
    move-result v1

    #@a
    sput-boolean v1, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    #@c
    .line 47
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@e
    .line 48
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    #@10
    const-string/jumbo v3, "value"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@16
    move-result-object v2

    #@17
    .line 47
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@1a
    move-result-wide v2

    #@1b
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 25
    return-void

    #@1e
    .line 49
    :catch_0
    move-exception v0

    #@1f
    .line 50
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@21
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "initialValue"    # J

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 62
    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    #@5
    .line 61
    return-void
.end method

.method private static native VMSupportsCS8()Z
.end method


# virtual methods
.method public final accumulateAndGet(JLjava/util/function/LongBinaryOperator;)J
    .locals 5
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 276
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v2

    #@4
    .line 277
    .local v2, "prev":J
    invoke-interface {p3, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@7
    move-result-wide v0

    #@8
    .line 278
    .local v0, "next":J
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 279
    return-wide v0
.end method

.method public final addAndGet(J)J
    .locals 7
    .param p1, "delta"    # J

    #@0
    .prologue
    .line 193
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@9
    move-result-wide v0

    #@a
    add-long/2addr v0, p1

    #@b
    return-wide v0
.end method

.method public final compareAndSet(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "update"    # J

    #@0
    .prologue
    .line 121
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

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

.method public final decrementAndGet()J
    .locals 6

    #@0
    .prologue
    .line 183
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@4
    const-wide/16 v4, -0x1

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@a
    move-result-wide v0

    #@b
    const-wide/16 v2, 0x1

    #@d
    sub-long/2addr v0, v2

    #@e
    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 322
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    long-to-double v0, v0

    #@5
    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    long-to-float v0, v0

    #@5
    return v0
.end method

.method public final get()J
    .locals 2

    #@0
    .prologue
    .line 77
    iget-wide v0, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    #@2
    return-wide v0
.end method

.method public final getAndAccumulate(JLjava/util/function/LongBinaryOperator;)J
    .locals 5
    .param p1, "x"    # J
    .param p3, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 252
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v2

    #@4
    .line 253
    .local v2, "prev":J
    invoke-interface {p3, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@7
    move-result-wide v0

    #@8
    .line 254
    .local v0, "next":J
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 255
    return-wide v2
.end method

.method public final getAndAdd(J)J
    .locals 7
    .param p1, "delta"    # J

    #@0
    .prologue
    .line 165
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public final getAndDecrement()J
    .locals 6

    #@0
    .prologue
    .line 155
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@4
    const-wide/16 v4, -0x1

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public final getAndIncrement()J
    .locals 6

    #@0
    .prologue
    .line 146
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@4
    const-wide/16 v4, 0x1

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public final getAndSet(J)J
    .locals 7
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 108
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public final getAndUpdate(Ljava/util/function/LongUnaryOperator;)J
    .locals 5
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 209
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v2

    #@4
    .line 210
    .local v2, "prev":J
    invoke-interface {p1, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@7
    move-result-wide v0

    #@8
    .line 211
    .local v0, "next":J
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 212
    return-wide v2
.end method

.method public final incrementAndGet()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x1

    #@2
    .line 174
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@4
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@a
    move-result-wide v0

    #@b
    add-long/2addr v0, v4

    #@c
    return-wide v0
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 296
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public final lazySet(J)V
    .locals 7
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 98
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    #@9
    .line 97
    return-void
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 304
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public final set(J)V
    .locals 7
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 88
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@9
    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final updateAndGet(Ljava/util/function/LongUnaryOperator;)J
    .locals 5
    .param p1, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 228
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v2

    #@4
    .line 229
    .local v2, "prev":J
    invoke-interface {p1, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@7
    move-result-wide v0

    #@8
    .line 230
    .local v0, "next":J
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 231
    return-wide v0
.end method

.method public final weakCompareAndSet(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "update"    # J

    #@0
    .prologue
    .line 137
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

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
