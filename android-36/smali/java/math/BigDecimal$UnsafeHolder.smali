.class Ljava/math/BigDecimal$UnsafeHolder;
.super Ljava/lang/Object;
.source "BigDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/math/BigDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsafeHolder"
.end annotation


# static fields
.field private static final blacklist intCompactOffset:J

.field private static final blacklist intValOffset:J

.field private static final blacklist scaleOffset:J

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4285
    :try_start_0
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 4286
    sget-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/math/BigDecimal;

    const-string v2, "intCompact"

    .line 4287
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/math/BigDecimal$UnsafeHolder;->intCompactOffset:J

    .line 4288
    sget-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/math/BigDecimal;

    const-string v2, "intVal"

    .line 4289
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/math/BigDecimal$UnsafeHolder;->intValOffset:J

    .line 4290
    sget-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/math/BigDecimal;

    const-string v2, "scale"

    .line 4291
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/math/BigDecimal$UnsafeHolder;->scaleOffset:J
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38

    .line 4294
    nop

    .line 4295
    return-void

    .line 4292
    :catch_38
    move-exception v0

    .line 4293
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist setIntValAndScale(Ljava/math/BigDecimal;Ljava/math/BigInteger;I)V
    .registers 12
    .param p0, "bd"    # Ljava/math/BigDecimal;
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .line 4298
    sget-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/math/BigDecimal$UnsafeHolder;->intValOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4299
    sget-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/math/BigDecimal$UnsafeHolder;->scaleOffset:J

    invoke-virtual {v0, p0, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 4300
    sget-object v3, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v5, Ljava/math/BigDecimal$UnsafeHolder;->intCompactOffset:J

    invoke-static {p1}, Ljava/math/BigDecimal;->-$$Nest$smcompactValFor(Ljava/math/BigInteger;)J

    move-result-wide v7

    move-object v4, p0

    .end local p0    # "bd":Ljava/math/BigDecimal;
    .local v4, "bd":Ljava/math/BigDecimal;
    invoke-virtual/range {v3 .. v8}, Ljdk/internal/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 4301
    return-void
.end method

.method static blacklist setIntValVolatile(Ljava/math/BigDecimal;Ljava/math/BigInteger;)V
    .registers 5
    .param p0, "bd"    # Ljava/math/BigDecimal;
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 4304
    sget-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/math/BigDecimal$UnsafeHolder;->intValOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4305
    return-void
.end method
