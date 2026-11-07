.class final enum Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
.super Ljava/lang/Enum;
.source "UnsignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnsafeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

.field static final blacklist BIG_ENDIAN:Z

.field static final blacklist BYTE_ARRAY_BASE_OFFSET:I

.field public static final enum blacklist INSTANCE:Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

.field static final blacklist theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method private static synthetic blacklist $values()[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .registers 1

    .line 296
    sget-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->INSTANCE:Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    filled-new-array {v0}, [Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 299
    new-instance v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->INSTANCE:Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    .line 296
    invoke-static {}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$values()[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$VALUES:[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    .line 301
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BIG_ENDIAN:Z

    .line 319
    invoke-static {}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    .line 322
    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    .line 327
    const-string v3, "sun.arch.data.model"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "64"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    rem-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_44

    .line 330
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    return-void

    .line 331
    :cond_44
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static blacklist getUnsafe()Lsun/misc/Unsafe;
    .registers 3

    .line 343
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 348
    :catch_5
    :try_start_5
    new-instance v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$1;

    invoke-direct {v0}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_10
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 364
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 296
    const-class v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    return-object p0
.end method

.method public static blacklist values()[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .registers 1

    .line 296
    sget-object v0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$VALUES:[Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    invoke-virtual {v0}, [Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 296
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->compare([B[B)I

    move-result p0

    return p0
.end method

.method public blacklist compare([B[B)I
    .registers 13

    .line 373
    array-length p0, p1

    array-length v0, p2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    and-int/lit8 v0, p0, -0x8

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_3f

    .line 382
    sget-object v2, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    sget v3, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    int-to-long v4, v3

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    int-to-long v8, v3

    add-long/2addr v8, v6

    .line 383
    invoke-virtual {v2, p2, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3c

    .line 385
    sget-boolean p0, Landroid/media/internal/guava_common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BIG_ENDIAN:Z

    if-eqz p0, :cond_29

    .line 386
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    return p0

    :cond_29
    xor-long p0, v4, v2

    .line 396
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    and-int/lit8 p0, p0, -0x8

    ushr-long p1, v4, p0

    const-wide/16 v0, 0xff

    and-long/2addr p1, v0

    long-to-int p1, p1

    ushr-long/2addr v2, p0

    and-long/2addr v0, v2

    long-to-int p0, v0

    sub-int/2addr p1, p0

    return p1

    :cond_3c
    add-int/lit8 v1, v1, 0x8

    goto :goto_9

    :cond_3f
    :goto_3f
    if-ge v1, p0, :cond_4f

    .line 403
    aget-byte v0, p1, v1

    aget-byte v2, p2, v1

    invoke-static {v0, v2}, Landroid/media/internal/guava_common/primitives/UnsignedBytes;->compare(BB)I

    move-result v0

    if-eqz v0, :cond_4c

    return v0

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 408
    :cond_4f
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 413
    const-string p0, "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)"

    return-object p0
.end method
