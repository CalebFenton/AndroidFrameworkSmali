.class public Ljava/util/concurrent/atomic/AtomicInteger;
.super Ljava/lang/Number;
.source "AtomicInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J

.field private static final serialVersionUID:J = 0x563f5ecc8c6c168aL


# instance fields
.field private volatile value:I


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
    sput-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@6
    .line 33
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@8
    .line 34
    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    const-string/jumbo v3, "value"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 33
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 25
    return-void

    #@18
    .line 35
    :catch_0
    move-exception v0

    #@19
    .line 36
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialValue"    # I

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 48
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    #@5
    .line 47
    return-void
.end method


# virtual methods
.method public final accumulateAndGet(ILjava/util/function/IntBinaryOperator;)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 260
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v1

    #@4
    .line 261
    .local v1, "prev":I
    invoke-interface {p2, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@7
    move-result v0

    #@8
    .line 262
    .local v0, "next":I
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 263
    return v0
.end method

.method public final addAndGet(I)I
    .locals 4
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 177
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@7
    move-result v0

    #@8
    add-int/2addr v0, p1

    #@9
    return v0
.end method

.method public final compareAndSet(II)Z
    .locals 6
    .param p1, "expect"    # I
    .param p2, "update"    # I

    #@0
    .prologue
    .line 105
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    move-object v1, p0

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final decrementAndGet()I
    .locals 4

    #@0
    .prologue
    .line 167
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    const/4 v1, -0x1

    #@5
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    int-to-double v0, v0

    #@5
    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 297
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    return v0
.end method

.method public final get()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    #@2
    return v0
.end method

.method public final getAndAccumulate(ILjava/util/function/IntBinaryOperator;)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 236
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v1

    #@4
    .line 237
    .local v1, "prev":I
    invoke-interface {p2, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@7
    move-result v0

    #@8
    .line 238
    .local v0, "next":I
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 239
    return v1
.end method

.method public final getAndAdd(I)I
    .locals 4
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 149
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getAndDecrement()I
    .locals 4

    #@0
    .prologue
    .line 139
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    const/4 v1, -0x1

    #@5
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getAndIncrement()I
    .locals 4

    #@0
    .prologue
    .line 130
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getAndSet(I)I
    .locals 4
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 92
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getAndUpdate(Ljava/util/function/IntUnaryOperator;)I
    .locals 3
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v1

    #@4
    .line 194
    .local v1, "prev":I
    invoke-interface {p1, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@7
    move-result v0

    #@8
    .line 195
    .local v0, "next":I
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 196
    return v1
.end method

.method public final incrementAndGet()I
    .locals 4

    #@0
    .prologue
    .line 158
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final lazySet(I)V
    .locals 4
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 82
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@7
    .line 81
    return-void
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    return-wide v0
.end method

.method public final set(I)V
    .locals 0
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 72
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    #@2
    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final updateAndGet(Ljava/util/function/IntUnaryOperator;)I
    .locals 3
    .param p1, "updateFunction"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v1

    #@4
    .line 213
    .local v1, "prev":I
    invoke-interface {p1, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@7
    move-result v0

    #@8
    .line 214
    .local v0, "next":I
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 215
    return v0
.end method

.method public final weakCompareAndSet(II)Z
    .locals 6
    .param p1, "expect"    # I
    .param p2, "update"    # I

    #@0
    .prologue
    .line 121
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->VALUE:J

    #@4
    move-object v1, p0

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    return v0
.end method
