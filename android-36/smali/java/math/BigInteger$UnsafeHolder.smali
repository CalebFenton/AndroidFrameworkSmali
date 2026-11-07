.class Ljava/math/BigInteger$UnsafeHolder;
.super Ljava/lang/Object;
.source "BigInteger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/math/BigInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsafeHolder"
.end annotation


# static fields
.field private static final blacklist magOffset:J

.field private static final blacklist signumOffset:J

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4920
    :try_start_0
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/math/BigInteger$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 4921
    sget-object v0, Ljava/math/BigInteger$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/math/BigInteger;

    const-string v2, "signum"

    .line 4922
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/math/BigInteger$UnsafeHolder;->signumOffset:J

    .line 4923
    sget-object v0, Ljava/math/BigInteger$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/math/BigInteger;

    const-string v2, "mag"

    .line 4924
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/math/BigInteger$UnsafeHolder;->magOffset:J
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    .line 4927
    nop

    .line 4928
    return-void

    .line 4925
    :catch_28
    move-exception v0

    .line 4926
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist putSignAndMag(Ljava/math/BigInteger;I[I)V
    .registers 6
    .param p0, "bi"    # Ljava/math/BigInteger;
    .param p1, "sign"    # I
    .param p2, "magnitude"    # [I

    .line 4931
    sget-object v0, Ljava/math/BigInteger$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/math/BigInteger$UnsafeHolder;->signumOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 4932
    sget-object v0, Ljava/math/BigInteger$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/math/BigInteger$UnsafeHolder;->magOffset:J

    invoke-virtual {v0, p0, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4933
    return-void
.end method
