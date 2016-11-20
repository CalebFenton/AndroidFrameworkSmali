.class public Ljava/util/concurrent/atomic/AtomicIntegerArray;
.super Ljava/lang/Object;
.source "AtomicIntegerArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x27b857513300bd8bL


# instance fields
.field private final array:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 23
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@6
    .line 29
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@8
    const-class v2, [I

    #@a
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@d
    move-result v1

    #@e
    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ABASE:I

    #@10
    .line 30
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@12
    const-class v2, [I

    #@14
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@17
    move-result v0

    #@18
    .line 31
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    #@1a
    and-int/2addr v1, v0

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 32
    new-instance v1, Ljava/lang/Error;

    #@1f
    const-string/jumbo v2, "array index scale not a power of two"

    #@22
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 33
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@29
    move-result v1

    #@2a
    rsub-int/lit8 v1, v1, 0x1f

    #@2c
    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ASHIFT:I

    #@2e
    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-array v0, p1, [I

    #@5
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@7
    .line 53
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "array"    # [I

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [I

    #@9
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@b
    .line 64
    return-void
.end method

.method private static byteOffset(I)J
    .locals 4
    .param p0, "i"    # I

    #@0
    .prologue
    .line 44
    int-to-long v0, p0

    #@1
    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ASHIFT:I

    #@3
    shl-long/2addr v0, v2

    #@4
    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->ABASE:I

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
    .line 37
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 38
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
    .line 40
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    #@24
    move-result-wide v0

    #@25
    return-wide v0
.end method

.method private compareAndSetRaw(JII)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "expect"    # I
    .param p4, "update"    # I

    #@0
    .prologue
    .line 140
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@4
    move-wide v2, p1

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private getRaw(J)I
    .locals 3
    .param p1, "offset"    # J

    #@0
    .prologue
    .line 89
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    #@7
    move-result v0

    #@8
    return v0
.end method


# virtual methods
.method public final accumulateAndGet(IILjava/util/function/IntBinaryOperator;)I
    .locals 5
    .param p1, "i"    # I
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 307
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 310
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    #@7
    move-result v1

    #@8
    .line 311
    .local v1, "prev":I
    invoke-interface {p3, v1, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@b
    move-result v0

    #@c
    .line 312
    .local v0, "next":I
    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 313
    return v0
.end method

.method public final addAndGet(II)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "delta"    # I

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    #@3
    move-result v0

    #@4
    add-int/2addr v0, p2

    #@5
    return v0
.end method

.method public final compareAndSet(III)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    #@0
    .prologue
    .line 136
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final decrementAndGet(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 208
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    #@4
    move-result v0

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    return v0
.end method

.method public final get(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getAndAccumulate(IILjava/util/function/IntBinaryOperator;)I
    .locals 5
    .param p1, "i"    # I
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 281
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 284
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    #@7
    move-result v1

    #@8
    .line 285
    .local v1, "prev":I
    invoke-interface {p3, v1, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@b
    move-result v0

    #@c
    .line 286
    .local v0, "next":I
    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 287
    return v1
.end method

.method public final getAndAdd(II)I
    .locals 4
    .param p1, "i"    # I
    .param p2, "delta"    # I

    #@0
    .prologue
    .line 188
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final getAndDecrement(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 177
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final getAndIncrement(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 167
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final getAndSet(II)I
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    #@0
    .prologue
    .line 122
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final getAndUpdate(ILjava/util/function/IntUnaryOperator;)I
    .locals 5
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 234
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 237
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    #@7
    move-result v1

    #@8
    .line 238
    .local v1, "prev":I
    invoke-interface {p2, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@b
    move-result v0

    #@c
    .line 239
    .local v0, "next":I
    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 240
    return v1
.end method

.method public final incrementAndGet(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 198
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    #@4
    move-result v0

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    return v0
.end method

.method public final lazySet(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    #@0
    .prologue
    .line 110
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@b
    .line 109
    return-void
.end method

.method public final length()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public final set(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    #@0
    .prologue
    .line 99
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->U:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    #@b
    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 321
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    #@2
    array-length v3, v3

    #@3
    add-int/lit8 v2, v3, -0x1

    #@5
    .line 322
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 323
    const-string/jumbo v3, "[]"

    #@b
    return-object v3

    #@c
    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 326
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 327
    const/4 v1, 0x0

    #@17
    .line 328
    .local v1, "i":I
    :goto_0
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    #@1a
    move-result-wide v4

    #@1b
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    .line 329
    if-ne v1, v2, :cond_1

    #@24
    .line 330
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
    .line 331
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
    .line 327
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0
.end method

.method public final updateAndGet(ILjava/util/function/IntUnaryOperator;)I
    .locals 5
    .param p1, "i"    # I
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 255
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 258
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    #@7
    move-result v1

    #@8
    .line 259
    .local v1, "prev":I
    invoke-interface {p2, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@b
    move-result v0

    #@c
    .line 260
    .local v0, "next":I
    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 261
    return v0
.end method

.method public final weakCompareAndSet(III)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    #@0
    .prologue
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
