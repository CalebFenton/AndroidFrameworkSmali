.class public Ljava/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final VM_SUPPORTS_LONG_CAS:Z

.field private static final serialVersionUID:J = 0x1ac0fab477001718L

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


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
    sput-object v1, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

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
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

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
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 24
    return-void

    #@1e
    .line 49
    :catch_0
    move-exception v0

    #@1f
    .local v0, "ex":Ljava/lang/Exception;
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "initialValue"    # J

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 60
    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    #@5
    .line 59
    return-void
.end method

.method private static native VMSupportsCS8()Z
.end method


# virtual methods
.method public final addAndGet(J)J
    .locals 5
    .param p1, "delta"    # J

    #@0
    .prologue
    .line 219
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    .line 220
    .local v0, "current":J
    add-long v2, v0, p1

    #@6
    .line 221
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 222
    return-wide v2
.end method

.method public final compareAndSet(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "update"    # J

    #@0
    .prologue
    .line 121
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

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
    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    .line 205
    .local v0, "current":J
    const-wide/16 v4, 0x1

    #@6
    sub-long v2, v0, v4

    #@8
    .line 206
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 207
    return-wide v2
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 262
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
    .line 254
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
    .line 75
    iget-wide v0, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    #@2
    return-wide v0
.end method

.method public final getAndAdd(J)J
    .locals 5
    .param p1, "delta"    # J

    #@0
    .prologue
    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    .line 177
    .local v0, "current":J
    add-long v2, v0, p1

    #@6
    .line 178
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 179
    return-wide v0
.end method

.method public final getAndDecrement()J
    .locals 6

    #@0
    .prologue
    .line 161
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    .line 162
    .local v0, "current":J
    const-wide/16 v4, 0x1

    #@6
    sub-long v2, v0, v4

    #@8
    .line 163
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 164
    return-wide v0
.end method

.method public final getAndIncrement()J
    .locals 6

    #@0
    .prologue
    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    .line 148
    .local v0, "current":J
    const-wide/16 v4, 0x1

    #@6
    add-long v2, v0, v4

    #@8
    .line 149
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 150
    return-wide v0
.end method

.method public final getAndSet(J)J
    .locals 3
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    .line 106
    .local v0, "current":J
    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 107
    return-wide v0
.end method

.method public final incrementAndGet()J
    .locals 6

    #@0
    .prologue
    .line 190
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    .line 191
    .local v0, "current":J
    const-wide/16 v4, 0x1

    #@6
    add-long v2, v0, v4

    #@8
    .line 192
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 193
    return-wide v2
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 239
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
    .line 94
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    #@9
    .line 93
    return-void
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public final set(J)V
    .locals 1
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 84
    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    #@2
    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 231
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

.method public final weakCompareAndSet(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "update"    # J

    #@0
    .prologue
    .line 137
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

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
