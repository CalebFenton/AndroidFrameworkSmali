.class public Ljava/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4098b70a4f3ffc33L

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 25
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 30
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    #@8
    .line 31
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    const-string/jumbo v3, "value"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 30
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 22
    return-void

    #@18
    .line 32
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
    .line 71
    if-eqz p1, :cond_0

    #@2
    const/4 v4, 0x1

    #@3
    .line 72
    .local v4, "e":I
    :goto_0
    if-eqz p2, :cond_1

    #@5
    const/4 v5, 0x1

    #@6
    .line 73
    .local v5, "u":I
    :goto_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    #@8
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    #@a
    move-object v1, p0

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 71
    .end local v4    # "e":I
    .end local v5    # "u":I
    :cond_0
    const/4 v4, 0x0

    #@11
    .restart local v4    # "e":I
    goto :goto_0

    #@12
    .line 72
    :cond_1
    const/4 v5, 0x0

    #@13
    .restart local v5    # "u":I
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
    .local v0, "current":Z
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
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 111
    .local v0, "v":I
    :goto_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    #@5
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    #@7
    invoke-virtual {v1, p0, v2, v3, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@a
    .line 109
    return-void

    #@b
    .line 110
    .end local v0    # "v":I
    :cond_0
    const/4 v0, 0x0

    #@c
    .restart local v0    # "v":I
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
    .line 133
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
    .line 89
    if-eqz p1, :cond_0

    #@2
    const/4 v4, 0x1

    #@3
    .line 90
    .local v4, "e":I
    :goto_0
    if-eqz p2, :cond_1

    #@5
    const/4 v5, 0x1

    #@6
    .line 91
    .local v5, "u":I
    :goto_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    #@8
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    #@a
    move-object v1, p0

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 89
    .end local v4    # "e":I
    .end local v5    # "u":I
    :cond_0
    const/4 v4, 0x0

    #@11
    .restart local v4    # "e":I
    goto :goto_0

    #@12
    .line 90
    :cond_1
    const/4 v5, 0x0

    #@13
    .restart local v5    # "u":I
    goto :goto_1
.end method
