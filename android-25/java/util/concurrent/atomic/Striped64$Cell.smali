.class final Ljava/util/concurrent/atomic/Striped64$Cell;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/Striped64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cell"
.end annotation


# static fields
.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J


# instance fields
.field volatile value:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 108
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    #@6
    .line 112
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    #@8
    .line 113
    const-class v2, Ljava/util/concurrent/atomic/Striped64$Cell;

    #@a
    const-string/jumbo v3, "value"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 112
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 94
    return-void

    #@18
    .line 114
    :catch_0
    move-exception v0

    #@19
    .line 115
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "x"    # J

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@5
    return-void
.end method


# virtual methods
.method final cas(JJ)Z
    .locals 9
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    #@0
    .prologue
    .line 98
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:J

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

.method final reset()V
    .locals 6

    #@0
    .prologue
    .line 101
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@a
    .line 100
    return-void
.end method

.method final reset(J)V
    .locals 7
    .param p1, "identity"    # J

    #@0
    .prologue
    .line 104
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@9
    .line 103
    return-void
.end method
