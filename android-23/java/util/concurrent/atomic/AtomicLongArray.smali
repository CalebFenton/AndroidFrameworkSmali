.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final base:I

.field private static final serialVersionUID:J = -0x200931f59d1d4008L

.field private static final shift:I

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 21
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 22
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    #@8
    const-class v2, [J

    #@a
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@d
    move-result v1

    #@e
    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->base:I

    #@10
    .line 27
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    #@12
    const-class v2, [J

    #@14
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@17
    move-result v0

    #@18
    .line 28
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    #@1a
    and-int/2addr v1, v0

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 29
    new-instance v1, Ljava/lang/Error;

    #@1f
    const-string/jumbo v2, "data type scale not a power of two"

    #@22
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 30
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@29
    move-result v1

    #@2a
    rsub-int/lit8 v1, v1, 0x1f

    #@2c
    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->shift:I

    #@2e
    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-array v0, p1, [J

    #@5
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@7
    .line 50
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "array"    # [J

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [J

    #@9
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@b
    .line 61
    return-void
.end method

.method private static byteOffset(I)J
    .locals 4
    .param p0, "i"    # I

    #@0
    .prologue
    .line 41
    int-to-long v0, p0

    #@1
    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->shift:I

    #@3
    shl-long/2addr v0, v2

    #@4
    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->base:I

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
    .line 34
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 35
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
    .line 37
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
    .line 142
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

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
    .line 86
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

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
.method public addAndGet(IJ)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "delta"    # J

    #@0
    .prologue
    .line 226
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 228
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@7
    move-result-wide v4

    #@8
    .line 229
    .local v4, "current":J
    add-long v6, v4, p2

    #@a
    .local v6, "next":J
    move-object v1, p0

    #@b
    .line 230
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 231
    return-wide v6
.end method

.method public final compareAndSet(IJJ)Z
    .locals 8
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    #@0
    .prologue
    .line 138
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
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 215
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->addAndGet(IJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final get(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 82
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

.method public final getAndAdd(IJ)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "delta"    # J

    #@0
    .prologue
    .line 190
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 192
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@7
    move-result-wide v4

    #@8
    .line 193
    .local v4, "current":J
    add-long v6, v4, p2

    #@a
    move-object v1, p0

    #@b
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 194
    return-wide v4
.end method

.method public final getAndDecrement(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 179
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
    .line 169
    const-wide/16 v0, 0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getAndSet(IJ)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    #@0
    .prologue
    .line 119
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 121
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    #@7
    move-result-wide v4

    #@8
    .local v4, "current":J
    move-object v1, p0

    #@9
    move-wide v6, p2

    #@a
    .line 122
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 123
    return-wide v4
.end method

.method public final incrementAndGet(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 205
    const-wide/16 v0, 0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->addAndGet(IJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final lazySet(IJ)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    #@0
    .prologue
    .line 107
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

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
    .line 106
    return-void
.end method

.method public final length()I
    .locals 1

    #@0
    .prologue
    .line 72
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
    .line 96
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

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
    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 240
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    #@2
    array-length v3, v3

    #@3
    add-int/lit8 v2, v3, -0x1

    #@5
    .line 241
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 242
    const-string/jumbo v3, "[]"

    #@b
    return-object v3

    #@c
    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 245
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 246
    const/4 v1, 0x0

    #@17
    .line 247
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
    .line 248
    if-ne v1, v2, :cond_1

    #@24
    .line 249
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
    .line 250
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
    .line 246
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0
.end method

.method public final weakCompareAndSet(IJJ)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    #@0
    .prologue
    .line 159
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
