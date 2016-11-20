.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x200931f59d1d4008L


# instance fields
.field private final array:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 22
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@6
    .line 28
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@8
    const-class v2, [J

    #@a
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@d
    move-result v1

    #@e
    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->ABASE:I

    #@10
    .line 29
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@12
    const-class v2, [J

    #@14
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@17
    move-result v0

    #@18
    .line 30
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    #@1a
    and-int/2addr v1, v0

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 31
    new-instance v1, Ljava/lang/Error;

    #@1f
    const-string/jumbo v2, "array index scale not a power of two"

    #@22
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 32
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@29
    move-result v1

    #@2a
    rsub-int/lit8 v1, v1, 0x1f

    #@2c
    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->ASHIFT:I

    #@2e
    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-array v0, p1, [J

    #@5
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@7
    .line 52
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "array"    # [J

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [J

    #@9
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@b
    .line 63
    return-void
.end method

.method private static byteOffset(I)J
    .locals 4
    .param p0, "i"    # I

    #@0
    .prologue
    .line 43
    int-to-long v0, p0

    #@1
    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ASHIFT:I

    #@3
    shl-long/2addr v0, v2

    #@4
    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ABASE:I

    #@6
    int-to-long v2, v2

    #@7
    add-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 36
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "index "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 39
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    #@24
    move-result-wide v0

    #@25
    return-wide v0
.end method

.method private compareAndSetRaw(JJJ)Z
    .locals 9
    .param p1, "offset"    # J
    .param p3, "expect"    # J
    .param p5, "update"    # J

    #@0
    .prologue
    .line 139
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@4
    move-wide v2, p1

    #@5
    move-wide v4, p3

    #@6
    move-wide v6, p5

    #@7
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private getRaw(J)J
    .locals 3
    .param p1, "offset"    # J

    #@0
    .prologue
    .line 88
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method


# virtual methods
.method public final accumulateAndGet(IJLjava/util/function/LongBinaryOperator;)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 306
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 309
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@7
    move-result-wide v4

    #@8
    .line 310
    .local v4, "prev":J
    invoke-interface {p4, v4, v5, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@b
    move-result-wide v6

    #@c
    .local v6, "next":J
    move-object v1, p0

    #@d
    .line 311
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 312
    return-wide v6
.end method

.method public addAndGet(IJ)J
    .locals 2
    .param p1, "i"    # I
    .param p2, "delta"    # J

    #@0
    .prologue
    .line 218
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    #@3
    move-result-wide v0

    #@4
    add-long/2addr v0, p2

    #@5
    return-wide v0
.end method

.method public final compareAndSet(IJJ)Z
    .locals 8
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    #@0
    .prologue
    .line 135
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p2

    #@6
    move-wide v6, p4

    #@7
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final decrementAndGet(I)J
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 207
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x1

    #@8
    sub-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method public final get(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public final getAndAccumulate(IJLjava/util/function/LongBinaryOperator;)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 280
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 283
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@7
    move-result-wide v4

    #@8
    .line 284
    .local v4, "prev":J
    invoke-interface {p4, v4, v5, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@b
    move-result-wide v6

    #@c
    .local v6, "next":J
    move-object v1, p0

    #@d
    .line 285
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 286
    return-wide v4
.end method

.method public final getAndAdd(IJ)J
    .locals 6
    .param p1, "i"    # I
    .param p2, "delta"    # J

    #@0
    .prologue
    .line 187
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public final getAndDecrement(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 176
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getAndIncrement(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 166
    const-wide/16 v0, 0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getAndSet(IJ)J
    .locals 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    #@0
    .prologue
    .line 121
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public final getAndUpdate(ILjava/util/function/LongUnaryOperator;)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 233
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 236
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@7
    move-result-wide v4

    #@8
    .line 237
    .local v4, "prev":J
    invoke-interface {p2, v4, v5}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@b
    move-result-wide v6

    #@c
    .local v6, "next":J
    move-object v1, p0

    #@d
    .line 238
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 239
    return-wide v4
.end method

.method public final incrementAndGet(I)J
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x1

    #@2
    .line 197
    invoke-virtual {p0, p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    #@5
    move-result-wide v0

    #@6
    add-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method public final lazySet(IJ)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    #@0
    .prologue
    .line 109
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    #@c
    .line 108
    return-void
.end method

.method public final length()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public final set(IJ)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    #@0
    .prologue
    .line 98
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@c
    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 320
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@2
    array-length v3, v3

    #@3
    add-int/lit8 v2, v3, -0x1

    #@5
    .line 321
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 322
    const-string/jumbo v3, "[]"

    #@b
    return-object v3

    #@c
    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 325
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 326
    const/4 v1, 0x0

    #@17
    .line 327
    .local v1, "i":I
    :goto_0
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    #@1a
    move-result-wide v4

    #@1b
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@1e
    move-result-wide v4

    #@1f
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22
    .line 328
    if-ne v1, v2, :cond_1

    #@24
    .line 329
    const/16 v3, 0x5d

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    return-object v3

    #@2f
    .line 330
    :cond_1
    const/16 v3, 0x2c

    #@31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    const/16 v4, 0x20

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 326
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0
.end method

.method public final updateAndGet(ILjava/util/function/LongUnaryOperator;)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 254
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 257
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@7
    move-result-wide v4

    #@8
    .line 258
    .local v4, "prev":J
    invoke-interface {p2, v4, v5}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@b
    move-result-wide v6

    #@c
    .local v6, "next":J
    move-object v1, p0

    #@d
    .line 259
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 260
    return-wide v6
.end method

.method public final weakCompareAndSet(IJJ)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    #@0
    .prologue
    .line 156
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
