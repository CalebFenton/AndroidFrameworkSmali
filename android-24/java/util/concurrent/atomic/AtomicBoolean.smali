.class public Ljava/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J

.field private static final serialVersionUID:J = 0x4098b70a4f3ffc33L


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 23
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    #@6
    .line 28
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    #@8
    .line 29
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    const-string/jumbo v3, "value"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 28
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 20
    return-void

    #@18
    .line 30
    :catch_0
    move-exception v0

    #@19
    .line 31
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "initialValue"    # Z

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    if-eqz p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    #@8
    .line 42
    return-void

    #@9
    .line 43
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method


# virtual methods
.method public final compareAndSet(ZZ)Z
    .locals 6
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 71
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    #@4
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    #@6
    .line 72
    if-eqz p1, :cond_0

    #@8
    move v4, v5

    #@9
    .line 73
    :goto_0
    if-eqz p2, :cond_1

    #@b
    :goto_1
    move-object v1, p0

    #@c
    .line 71
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    :cond_0
    move v4, v1

    #@12
    .line 72
    goto :goto_0

    #@13
    :cond_1
    move v5, v1

    #@14
    .line 73
    goto :goto_1
.end method

.method public final get()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 58
    iget v1, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public final getAndSet(Z)Z
    .locals 2
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@3
    move-result v0

    #@4
    .line 123
    .local v0, "prev":Z
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 124
    return v0
.end method

.method public final lazySet(Z)V
    .locals 4
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 110
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    invoke-virtual {v1, p0, v2, v3, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@a
    .line 109
    return-void

    #@b
    .line 110
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final set(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 100
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    #@5
    .line 99
    return-void

    #@6
    .line 100
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public weakCompareAndSet(ZZ)Z
    .locals 6
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 89
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    #@4
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    #@6
    .line 90
    if-eqz p1, :cond_0

    #@8
    move v4, v5

    #@9
    .line 91
    :goto_0
    if-eqz p2, :cond_1

    #@b
    :goto_1
    move-object v1, p0

    #@c
    .line 89
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    :cond_0
    move v4, v1

    #@12
    .line 90
    goto :goto_0

    #@13
    :cond_1
    move v5, v1

    #@14
    .line 91
    goto :goto_1
.end method
