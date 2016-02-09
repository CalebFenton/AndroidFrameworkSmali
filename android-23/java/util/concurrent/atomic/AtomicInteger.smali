.class public Ljava/util/concurrent/atomic/AtomicInteger;
.super Ljava/lang/Number;
.source "AtomicInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x563f5ecc8c6c168aL

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


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
    sput-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 33
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

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
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 24
    return-void

    #@18
    .line 35
    :catch_0
    move-exception v0

    #@19
    .local v0, "ex":Ljava/lang/Exception;
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
    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialValue"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 46
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    #@5
    .line 45
    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .locals 3
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 205
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    .line 206
    .local v0, "current":I
    add-int v1, v0, p1

    #@6
    .line 207
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 208
    return v1
.end method

.method public final compareAndSet(II)Z
    .locals 6
    .param p1, "expect"    # I
    .param p2, "update"    # I

    #@0
    .prologue
    .line 107
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J

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
    .locals 3

    #@0
    .prologue
    .line 190
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    .line 191
    .local v0, "current":I
    add-int/lit8 v1, v0, -0x1

    #@6
    .line 192
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 193
    return v1
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 248
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
    .line 240
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
    .line 61
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    #@2
    return v0
.end method

.method public final getAndAdd(I)I
    .locals 3
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    .line 163
    .local v0, "current":I
    add-int v1, v0, p1

    #@6
    .line 164
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 165
    return v0
.end method

.method public final getAndDecrement()I
    .locals 3

    #@0
    .prologue
    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    .line 148
    .local v0, "current":I
    add-int/lit8 v1, v0, -0x1

    #@6
    .line 149
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 150
    return v0
.end method

.method public final getAndIncrement()I
    .locals 3

    #@0
    .prologue
    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    .line 134
    .local v0, "current":I
    add-int/lit8 v1, v0, 0x1

    #@6
    .line 135
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 136
    return v0
.end method

.method public final getAndSet(I)I
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    .line 92
    .local v0, "current":I
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 93
    return v0
.end method

.method public final incrementAndGet()I
    .locals 3

    #@0
    .prologue
    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3
    move-result v0

    #@4
    .line 177
    .local v0, "current":I
    add-int/lit8 v1, v0, 0x1

    #@6
    .line 178
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 179
    return v1
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 224
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
    .line 80
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@7
    .line 79
    return-void
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 232
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
    .line 70
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    #@2
    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 217
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

.method public final weakCompareAndSet(II)Z
    .locals 6
    .param p1, "expect"    # I
    .param p2, "update"    # I

    #@0
    .prologue
    .line 123
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J

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
