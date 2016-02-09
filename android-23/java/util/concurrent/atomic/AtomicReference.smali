.class public Ljava/util/concurrent/atomic/AtomicReference;
.super Ljava/lang/Object;
.source "AtomicReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x19a88e2baa87ab3aL

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 22
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/AtomicReference;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 27
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicReference;->unsafe:Lsun/misc/Unsafe;

    #@8
    .line 28
    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    const-string/jumbo v3, "value"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 27
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicReference;->valueOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 19
    return-void

    #@18
    .line 29
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
    .line 46
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 39
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    #@5
    .line 39
    return-void
.end method


# virtual methods
.method public final compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expect":Ljava/lang/Object;, "TV;"
    .local p2, "update":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicReference;->valueOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final getAndSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "x":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 115
    return-object v0
.end method

.method public final lazySet(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicReference;->valueOffset:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@7
    .line 73
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    #@2
    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 124
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expect":Ljava/lang/Object;, "TV;"
    .local p2, "update":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicReference;->valueOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method
