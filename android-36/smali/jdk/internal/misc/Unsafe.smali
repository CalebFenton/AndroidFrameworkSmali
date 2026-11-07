.class public final Ljdk/internal/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field public static final blacklist ADDRESS_SIZE:I

.field public static final blacklist ARRAY_BOOLEAN_BASE_OFFSET:I

.field public static final blacklist ARRAY_BOOLEAN_INDEX_SCALE:I

.field public static final blacklist ARRAY_BYTE_BASE_OFFSET:I

.field public static final blacklist ARRAY_BYTE_INDEX_SCALE:I

.field public static final blacklist ARRAY_CHAR_BASE_OFFSET:I

.field public static final blacklist ARRAY_CHAR_INDEX_SCALE:I

.field public static final blacklist ARRAY_DOUBLE_BASE_OFFSET:I

.field public static final blacklist ARRAY_DOUBLE_INDEX_SCALE:I

.field public static final blacklist ARRAY_FLOAT_BASE_OFFSET:I

.field public static final blacklist ARRAY_FLOAT_INDEX_SCALE:I

.field public static final blacklist ARRAY_INT_BASE_OFFSET:I

.field public static final blacklist ARRAY_INT_INDEX_SCALE:I

.field public static final blacklist ARRAY_LONG_BASE_OFFSET:I

.field public static final blacklist ARRAY_LONG_INDEX_SCALE:I

.field public static final blacklist ARRAY_OBJECT_BASE_OFFSET:I

.field public static final blacklist ARRAY_OBJECT_INDEX_SCALE:I

.field public static final blacklist ARRAY_SHORT_BASE_OFFSET:I

.field public static final blacklist ARRAY_SHORT_INDEX_SCALE:I

.field public static final blacklist INVALID_FIELD_OFFSET:I = -0x1

.field private static final blacklist THE_ONE:Ljdk/internal/misc/Unsafe;

.field private static final blacklist theUnsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 56
    new-instance v0, Ljdk/internal/misc/Unsafe;

    invoke-direct {v0}, Ljdk/internal/misc/Unsafe;-><init>()V

    sput-object v0, Ljdk/internal/misc/Unsafe;->THE_ONE:Ljdk/internal/misc/Unsafe;

    .line 58
    sget-object v0, Ljdk/internal/misc/Unsafe;->THE_ONE:Ljdk/internal/misc/Unsafe;

    sput-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1361
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1362
    const-class v1, [Z

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_BOOLEAN_BASE_OFFSET:I

    .line 1365
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1366
    const-class v2, [B

    invoke-virtual {v0, v2}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    .line 1369
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1370
    const-class v3, [S

    invoke-virtual {v0, v3}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_SHORT_BASE_OFFSET:I

    .line 1373
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1374
    const-class v4, [C

    invoke-virtual {v0, v4}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_CHAR_BASE_OFFSET:I

    .line 1377
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1378
    const-class v5, [I

    invoke-virtual {v0, v5}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_INT_BASE_OFFSET:I

    .line 1381
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1382
    const-class v6, [J

    invoke-virtual {v0, v6}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_LONG_BASE_OFFSET:I

    .line 1385
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1386
    const-class v7, [F

    invoke-virtual {v0, v7}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_FLOAT_BASE_OFFSET:I

    .line 1389
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1390
    const-class v8, [D

    invoke-virtual {v0, v8}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_DOUBLE_BASE_OFFSET:I

    .line 1393
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    const-class v9, [Ljava/lang/Object;

    .line 1394
    invoke-virtual {v0, v9}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_OBJECT_BASE_OFFSET:I

    .line 1411
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1412
    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_BOOLEAN_INDEX_SCALE:I

    .line 1415
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1416
    invoke-virtual {v0, v2}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_INDEX_SCALE:I

    .line 1419
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1420
    invoke-virtual {v0, v3}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_SHORT_INDEX_SCALE:I

    .line 1423
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1424
    invoke-virtual {v0, v4}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_CHAR_INDEX_SCALE:I

    .line 1427
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1428
    invoke-virtual {v0, v5}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_INT_INDEX_SCALE:I

    .line 1431
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1432
    invoke-virtual {v0, v6}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_LONG_INDEX_SCALE:I

    .line 1435
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1436
    invoke-virtual {v0, v7}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_FLOAT_INDEX_SCALE:I

    .line 1439
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    .line 1440
    invoke-virtual {v0, v8}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_DOUBLE_INDEX_SCALE:I

    .line 1443
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    .line 1444
    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ARRAY_OBJECT_INDEX_SCALE:I

    .line 1457
    sget-object v0, Ljdk/internal/misc/Unsafe;->theUnsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->addressSize()I

    move-result v0

    sput v0, Ljdk/internal/misc/Unsafe;->ADDRESS_SIZE:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkNativeAddress(J)V
    .registers 7
    .param p1, "address"    # J

    .line 599
    sget v0, Ljdk/internal/misc/Unsafe;->ADDRESS_SIZE:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 604
    const/16 v0, 0x20

    shr-long v0, p1, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    goto :goto_1b

    .line 605
    :cond_16
    invoke-direct {p0}, Ljdk/internal/misc/Unsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 608
    :cond_1b
    :goto_1b
    return-void
.end method

.method private blacklist checkOffset(Ljava/lang/Object;J)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 622
    sget v0, Ljdk/internal/misc/Unsafe;->ADDRESS_SIZE:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 624
    invoke-direct {p0, p2, p3}, Ljdk/internal/misc/Unsafe;->is32BitClean(J)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_17

    .line 625
    :cond_c
    invoke-direct {p0}, Ljdk/internal/misc/Unsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 627
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_18

    .line 630
    :goto_17
    return-void

    .line 628
    :cond_18
    invoke-direct {p0}, Ljdk/internal/misc/Unsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist checkPointer(Ljava/lang/Object;J)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 660
    if-nez p1, :cond_6

    .line 661
    invoke-direct {p0, p2, p3}, Ljdk/internal/misc/Unsafe;->checkNativeAddress(J)V

    goto :goto_9

    .line 663
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->checkOffset(Ljava/lang/Object;J)V

    .line 665
    :goto_9
    return-void
.end method

.method private blacklist checkPrimitiveArray(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 675
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 676
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 679
    return-void

    .line 677
    :cond_d
    invoke-direct {p0}, Ljdk/internal/misc/Unsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist checkPrimitivePointer(Ljava/lang/Object;J)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 692
    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->checkPointer(Ljava/lang/Object;J)V

    .line 694
    if-eqz p1, :cond_c

    .line 696
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdk/internal/misc/Unsafe;->checkPrimitiveArray(Ljava/lang/Class;)V

    .line 698
    :cond_c
    return-void
.end method

.method private blacklist checkSize(J)V
    .registers 5
    .param p1, "size"    # J

    .line 580
    sget v0, Ljdk/internal/misc/Unsafe;->ADDRESS_SIZE:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 582
    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/Unsafe;->is32BitClean(J)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_17

    .line 583
    :cond_c
    invoke-direct {p0}, Ljdk/internal/misc/Unsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 585
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    .line 588
    :goto_17
    return-void

    .line 586
    :cond_18
    invoke-direct {p0}, Ljdk/internal/misc/Unsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private native blacklist copyMemory0(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist copyMemoryChecks(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .registers 9
    .param p1, "srcBase"    # Ljava/lang/Object;
    .param p2, "srcOffset"    # J
    .param p4, "destBase"    # Ljava/lang/Object;
    .param p5, "destOffset"    # J
    .param p7, "bytes"    # J

    .line 974
    invoke-direct {p0, p7, p8}, Ljdk/internal/misc/Unsafe;->checkSize(J)V

    .line 975
    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->checkPrimitivePointer(Ljava/lang/Object;J)V

    .line 976
    invoke-direct {p0, p4, p5, p6}, Ljdk/internal/misc/Unsafe;->checkPrimitivePointer(Ljava/lang/Object;J)V

    .line 977
    return-void
.end method

.method private static native blacklist getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist getArrayIndexScaleForComponentType(Ljava/lang/Class;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist getUnsafe()Ljdk/internal/misc/Unsafe;
    .registers 4

    .line 72
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 78
    .local v1, "calling":Ljava/lang/ClassLoader;
    :goto_c
    if-eqz v1, :cond_1f

    const-class v2, Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_17

    goto :goto_1f

    .line 79
    :cond_17
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unsafe access denied"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_1f
    :goto_1f
    sget-object v2, Ljdk/internal/misc/Unsafe;->THE_ONE:Ljdk/internal/misc/Unsafe;

    return-object v2
.end method

.method private blacklist invalidInput()Ljava/lang/RuntimeException;
    .registers 2

    .line 557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    return-object v0
.end method

.method private blacklist is32BitClean(J)Z
    .registers 7
    .param p1, "value"    # J

    .line 568
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist makeInt(BBBB)I
    .registers 8
    .param p0, "i0"    # B
    .param p1, "i1"    # B
    .param p2, "i2"    # B
    .param p3, "i3"    # B

    .line 4158
    invoke-static {p0}, Ljdk/internal/misc/Unsafe;->toUnsignedInt(B)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-static {v2, v1}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v1

    shl-int/2addr v0, v1

    .line 4159
    invoke-static {p1}, Ljdk/internal/misc/Unsafe;->toUnsignedInt(B)I

    move-result v1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v3

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 4160
    invoke-static {p2}, Ljdk/internal/misc/Unsafe;->toUnsignedInt(B)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v3

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 4161
    invoke-static {p3}, Ljdk/internal/misc/Unsafe;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v2, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 4158
    return v0
.end method

.method private static blacklist makeInt(SS)I
    .registers 5
    .param p0, "i0"    # S
    .param p1, "i1"    # S

    .line 4154
    invoke-static {p0}, Ljdk/internal/misc/Unsafe;->toUnsignedInt(S)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v1

    shl-int/2addr v0, v1

    .line 4155
    invoke-static {p1}, Ljdk/internal/misc/Unsafe;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v2, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 4154
    return v0
.end method

.method private static blacklist makeLong(BBBBBBBB)J
    .registers 14
    .param p0, "i0"    # B
    .param p1, "i1"    # B
    .param p2, "i2"    # B
    .param p3, "i3"    # B
    .param p4, "i4"    # B
    .param p5, "i5"    # B
    .param p6, "i6"    # B
    .param p7, "i7"    # B

    .line 4134
    invoke-static {p0}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(B)J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x38

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v0, v2

    .line 4135
    invoke-static {p1}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v2, 0x8

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 4136
    invoke-static {p2}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v2, 0x10

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 4137
    invoke-static {p3}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v2, 0x18

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 4138
    invoke-static {p4}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v2, 0x20

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 4139
    invoke-static {p5}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v2, 0x28

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 4140
    invoke-static {p6}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v2, 0x30

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 4141
    invoke-static {p7}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(B)J

    move-result-wide v4

    invoke-static {v3, v3}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    .line 4134
    return-wide v0
.end method

.method private static blacklist makeLong(II)J
    .registers 8
    .param p0, "i0"    # I
    .param p1, "i1"    # I

    .line 4150
    invoke-static {p0}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(I)J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v0, v2

    .line 4151
    invoke-static {p1}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(I)J

    move-result-wide v4

    invoke-static {v3, v3}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    .line 4150
    return-wide v0
.end method

.method private static blacklist makeLong(SSSS)J
    .registers 10
    .param p0, "i0"    # S
    .param p1, "i1"    # S
    .param p2, "i2"    # S
    .param p3, "i3"    # S

    .line 4144
    invoke-static {p0}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(S)J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v0, v2

    .line 4145
    invoke-static {p1}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(S)J

    move-result-wide v4

    const/16 v2, 0x10

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 4146
    invoke-static {p2}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(S)J

    move-result-wide v4

    const/16 v2, 0x20

    invoke-static {v3, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 4147
    invoke-static {p3}, Ljdk/internal/misc/Unsafe;->toUnsignedLong(S)J

    move-result-wide v4

    invoke-static {v3, v3}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    .line 4144
    return-wide v0
.end method

.method private static blacklist makeShort(BB)S
    .registers 5
    .param p0, "i0"    # B
    .param p1, "i1"    # B

    .line 4164
    invoke-static {p0}, Ljdk/internal/misc/Unsafe;->toUnsignedInt(B)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v1

    shl-int/2addr v0, v1

    .line 4165
    invoke-static {p1}, Ljdk/internal/misc/Unsafe;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v2, v2}, Ljdk/internal/misc/Unsafe;->pickPos(II)I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 4164
    return v0
.end method

.method private static blacklist pickPos(II)I
    .registers 3
    .param p0, "top"    # I
    .param p1, "pos"    # I

    .line 4129
    sget-boolean v0, Ljdk/internal/misc/UnsafeConstants;->BIG_ENDIAN:Z

    if-eqz v0, :cond_7

    sub-int v0, p0, p1

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    return v0
.end method

.method private static blacklist toUnsignedInt(B)I
    .registers 2
    .param p0, "n"    # B

    .line 4215
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static blacklist toUnsignedInt(S)I
    .registers 2
    .param p0, "n"    # S

    .line 4216
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static blacklist toUnsignedLong(B)J
    .registers 5
    .param p0, "n"    # B

    .line 4217
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist toUnsignedLong(I)J
    .registers 5
    .param p0, "n"    # I

    .line 4219
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist toUnsignedLong(S)J
    .registers 5
    .param p0, "n"    # S

    .line 4218
    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public native blacklist addressSize()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native blacklist allocateMemory(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public blacklist arrayBaseOffset(Ljava/lang/Class;)I
    .registers 6
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 1353
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1354
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_b

    .line 1357
    invoke-static {v0}, Ljdk/internal/misc/Unsafe;->getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I

    move-result v1

    return v1

    .line 1355
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Valid for array classes only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist arrayIndexScale(Ljava/lang/Class;)I
    .registers 6
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 1403
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1404
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_b

    .line 1407
    invoke-static {v0}, Ljdk/internal/misc/Unsafe;->getArrayIndexScaleForComponentType(Ljava/lang/Class;)I

    move-result v1

    return v1

    .line 1405
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Valid for array classes only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final native blacklist compareAndExchangeLong(Ljava/lang/Object;JJJ)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native blacklist compareAndSetInt(Ljava/lang/Object;JII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native blacklist compareAndSetLong(Ljava/lang/Object;JJJ)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist compareAndSetObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # Ljava/lang/Object;
    .param p5, "x"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "12"
    .end annotation

    .line 4316
    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final native blacklist compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist compareAndSwapInt(Ljava/lang/Object;JII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist compareAndSwapLong(Ljava/lang/Object;JJJ)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public blacklist copyMemory(JJJ)V
    .registers 16
    .param p1, "srcAddr"    # J
    .param p3, "dstAddr"    # J
    .param p5, "bytes"    # J

    .line 960
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "srcAddr":J
    .end local p3    # "dstAddr":J
    .end local p5    # "bytes":J
    .local v2, "srcAddr":J
    .local v5, "dstAddr":J
    .local v7, "bytes":J
    invoke-virtual/range {v0 .. v8}, Ljdk/internal/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 961
    return-void
.end method

.method public blacklist copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .registers 11
    .param p1, "srcBase"    # Ljava/lang/Object;
    .param p2, "srcOffset"    # J
    .param p4, "destBase"    # Ljava/lang/Object;
    .param p5, "destOffset"    # J
    .param p7, "bytes"    # J

    .line 943
    invoke-direct/range {p0 .. p8}, Ljdk/internal/misc/Unsafe;->copyMemoryChecks(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 945
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_a

    .line 946
    return-void

    .line 949
    :cond_a
    invoke-direct/range {p0 .. p8}, Ljdk/internal/misc/Unsafe;->copyMemory0(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 950
    return-void
.end method

.method public blacklist ensureClassInitialized(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1329
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_11

    .line 1336
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_e} :catch_f

    .line 1342
    goto :goto_10

    .line 1337
    :catch_f
    move-exception v0

    .line 1343
    :goto_10
    return-void

    .line 1330
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public native blacklist freeMemory(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist fullFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist getAndAddInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # I

    .line 2815
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 2816
    .local v4, "v":I
    add-int v5, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2817
    return v4

    .line 2816
    :cond_11
    move-object p1, v1

    move-wide p2, v2

    goto :goto_1
.end method

.method public final blacklist getAndAddLong(Ljava/lang/Object;JJ)J
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # J

    .line 2857
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 2860
    .local v4, "v":J
    add-long v6, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2861
    return-wide v4

    .line 2860
    :cond_11
    move-object p1, v1

    move-wide p2, v2

    goto :goto_1
.end method

.method public final blacklist getAndBitwiseAndInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "mask"    # I

    .line 3628
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 3629
    .local v4, "current":I
    and-int v5, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3631
    return v4

    .line 3629
    :cond_11
    move-object p1, v1

    move-wide p2, v2

    goto :goto_1
.end method

.method public final blacklist getAndBitwiseOrInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "mask"    # I

    .line 3581
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 3582
    .local v4, "current":I
    or-int v5, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3584
    return v4

    .line 3582
    :cond_11
    move-object p1, v1

    move-wide p2, v2

    goto :goto_1
.end method

.method public final blacklist getAndBitwiseXorInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "mask"    # I

    .line 3664
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 3665
    .local v4, "current":I
    xor-int v5, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3667
    return v4

    .line 3665
    :cond_11
    move-object p1, v1

    move-wide p2, v2

    goto :goto_1
.end method

.method public final blacklist getAndSetInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # I

    .line 3060
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 3061
    .local v4, "v":I
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .end local p4    # "newValue":I
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    .local v5, "newValue":I
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3062
    return v4

    .line 3061
    :cond_10
    move-object p1, v1

    move-wide p2, v2

    move p4, v5

    goto :goto_1
.end method

.method public final blacklist getAndSetLong(Ljava/lang/Object;JJ)J
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # J

    .line 3102
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 3105
    .local v4, "v":J
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, p4

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .end local p4    # "newValue":J
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    .local v6, "newValue":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3106
    return-wide v4

    .line 3105
    :cond_10
    move-object p1, v1

    move-wide p2, v2

    move-wide p4, v6

    goto :goto_1
.end method

.method public final blacklist getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "12"
    .end annotation

    .line 4311
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->getAndSetReference(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getAndSetReference(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 3146
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3147
    .local v4, "v":Ljava/lang/Object;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .end local p4    # "newValue":Ljava/lang/Object;
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    .local v5, "newValue":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3148
    return-object v4

    .line 3147
    :cond_10
    move-object p1, v1

    move-wide p2, v2

    move-object p4, v5

    goto :goto_1
.end method

.method public native blacklist getBoolean(Ljava/lang/Object;J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getBooleanVolatile(Ljava/lang/Object;J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getByte(J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getByte(Ljava/lang/Object;J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getByteVolatile(Ljava/lang/Object;J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getChar(J)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getChar(Ljava/lang/Object;J)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getCharVolatile(Ljava/lang/Object;J)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getDouble(J)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getDouble(Ljava/lang/Object;J)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getDoubleVolatile(Ljava/lang/Object;J)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getFloat(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getFloat(Ljava/lang/Object;J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getFloatVolatile(Ljava/lang/Object;J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getInt(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getInt(Ljava/lang/Object;J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist getIntAcquire(Ljava/lang/Object;J)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 2500
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public final blacklist getIntOpaque(Ljava/lang/Object;J)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 2644
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public final blacklist getIntUnaligned(Ljava/lang/Object;J)I
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 3957
    const-wide/16 v0, 0x3

    and-long v2, p2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    .line 3958
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0

    .line 3959
    :cond_f
    const-wide/16 v2, 0x1

    and-long v6, p2, v2

    cmp-long v4, v6, v4

    const-wide/16 v5, 0x2

    if-nez v4, :cond_27

    .line 3960
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    add-long/2addr v5, p2

    .line 3961
    invoke-virtual {p0, p1, v5, v6}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v1

    .line 3960
    invoke-static {v0, v1}, Ljdk/internal/misc/Unsafe;->makeInt(SS)I

    move-result v0

    return v0

    .line 3963
    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v4

    add-long/2addr v2, p2

    .line 3964
    invoke-virtual {p0, p1, v2, v3}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    add-long/2addr v5, p2

    .line 3965
    invoke-virtual {p0, p1, v5, v6}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v3

    add-long/2addr v0, p2

    .line 3966
    invoke-virtual {p0, p1, v0, v1}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    .line 3963
    invoke-static {v4, v2, v3, v0}, Ljdk/internal/misc/Unsafe;->makeInt(BBBB)I

    move-result v0

    return v0
.end method

.method public native blacklist getIntVolatile(Ljava/lang/Object;J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getLong(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getLong(Ljava/lang/Object;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist getLongAcquire(Ljava/lang/Object;J)J
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 2516
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final blacklist getLongOpaque(Ljava/lang/Object;J)J
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 2660
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final blacklist getLongUnaligned(Ljava/lang/Object;J)J
    .registers 17
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 3932
    const-wide/16 v0, 0x7

    and-long v2, p2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    .line 3933
    invoke-virtual/range {p0 .. p3}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0

    .line 3934
    :cond_f
    const-wide/16 v2, 0x3

    and-long v6, p2, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x4

    if-nez v6, :cond_27

    .line 3935
    invoke-virtual/range {p0 .. p3}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    add-long/2addr v7, p2

    .line 3936
    invoke-virtual {p0, p1, v7, v8}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 3935
    invoke-static {v0, v1}, Ljdk/internal/misc/Unsafe;->makeLong(II)J

    move-result-wide v0

    return-wide v0

    .line 3937
    :cond_27
    const-wide/16 v9, 0x1

    and-long v11, p2, v9

    cmp-long v4, v11, v4

    const-wide/16 v5, 0x6

    const-wide/16 v11, 0x2

    if-nez v4, :cond_4b

    .line 3938
    invoke-virtual/range {p0 .. p3}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    add-long/2addr v11, p2

    .line 3939
    invoke-virtual {p0, p1, v11, v12}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v1

    add-long/2addr v7, p2

    .line 3940
    invoke-virtual {p0, p1, v7, v8}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v2

    add-long/2addr v5, p2

    .line 3941
    invoke-virtual {p0, p1, v5, v6}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v3

    .line 3938
    invoke-static {v0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->makeLong(SSSS)J

    move-result-wide v0

    return-wide v0

    .line 3943
    :cond_4b
    move-wide v3, v2

    invoke-virtual/range {p0 .. p3}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    add-long/2addr v9, p2

    .line 3944
    invoke-virtual {p0, p1, v9, v10}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v9

    add-long/2addr v11, p2

    .line 3945
    invoke-virtual {p0, p1, v11, v12}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v10

    add-long/2addr v3, p2

    .line 3946
    invoke-virtual {p0, p1, v3, v4}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v3

    add-long/2addr v7, p2

    .line 3947
    invoke-virtual {p0, p1, v7, v8}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v4

    const-wide/16 v7, 0x5

    add-long/2addr v7, p2

    .line 3948
    invoke-virtual {p0, p1, v7, v8}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v7

    add-long/2addr v5, p2

    .line 3949
    invoke-virtual {p0, p1, v5, v6}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v8

    add-long/2addr v0, p2

    .line 3950
    invoke-virtual {p0, p1, v0, v1}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    .line 3943
    move v5, v3

    move v6, v4

    move v3, v9

    move v4, v10

    move v9, v0

    invoke-static/range {v2 .. v9}, Ljdk/internal/misc/Unsafe;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method public native blacklist getLongVolatile(Ljava/lang/Object;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "12"
    .end annotation

    .line 4284
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getReference(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getObjectAcquire(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "12"
    .end annotation

    .line 4292
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getReferenceAcquire(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "12"
    .end annotation

    .line 4288
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public native blacklist getReference(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist getReferenceAcquire(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 2466
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getReferenceOpaque(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 2610
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/Unsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public native blacklist getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getShort(J)S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getShort(Ljava/lang/Object;J)S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist getShortVolatile(Ljava/lang/Object;J)S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist loadFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist loadLoadFence()V
    .registers 1

    .line 3846
    invoke-virtual {p0}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 3847
    return-void
.end method

.method public blacklist objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 1242
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1248
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 1249
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1250
    move-object v0, v4

    .line 1251
    goto :goto_1e

    .line 1248
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1254
    :cond_1e
    :goto_1e
    if-eqz v0, :cond_25

    .line 1257
    invoke-virtual {p0, v0}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    return-wide v2

    .line 1255
    :cond_25
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 1243
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 1216
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1219
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getOffset()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1217
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for instance fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native blacklist pageSize()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist park(ZJ)V
.end method

.method public native blacklist putBoolean(Ljava/lang/Object;JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putBooleanVolatile(Ljava/lang/Object;JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putByte(JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putByte(Ljava/lang/Object;JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putByteVolatile(Ljava/lang/Object;JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putChar(JC)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putChar(Ljava/lang/Object;JC)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putCharVolatile(Ljava/lang/Object;JC)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putDouble(JD)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putDouble(Ljava/lang/Object;JD)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putDoubleVolatile(Ljava/lang/Object;JD)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putFloat(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putFloat(Ljava/lang/Object;JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putFloatVolatile(Ljava/lang/Object;JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putInt(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putInt(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist putIntOpaque(Ljava/lang/Object;JI)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # I

    .line 2710
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 2711
    return-void
.end method

.method public final blacklist putIntRelease(Ljava/lang/Object;JI)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # I

    .line 2576
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 2577
    return-void
.end method

.method public native blacklist putIntVolatile(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putLong(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putLong(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist putLongOpaque(Ljava/lang/Object;JJ)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # J

    .line 2726
    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 2727
    return-void
.end method

.method public final blacklist putLongRelease(Ljava/lang/Object;JJ)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # J

    .line 2592
    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 2593
    return-void
.end method

.method public native blacklist putLongVolatile(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "12"
    .end annotation

    .line 4297
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4298
    return-void
.end method

.method public final blacklist putObjectRelease(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "12"
    .end annotation

    .line 4306
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4307
    return-void
.end method

.method public final blacklist putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "12"
    .end annotation

    .line 4302
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4303
    return-void
.end method

.method public native blacklist putOrderedInt(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putOrderedLong(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putReference(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist putReferenceOpaque(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;

    .line 2676
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2677
    return-void
.end method

.method public final blacklist putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;

    .line 2542
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2543
    return-void
.end method

.method public native blacklist putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putShort(JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putShort(Ljava/lang/Object;JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist putShortVolatile(Ljava/lang/Object;JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native blacklist setMemory(JJB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public blacklist staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 4
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 1308
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1311
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1312
    .local v0, "c":Ljava/lang/Class;
    return-object v0

    .line 1309
    .end local v0    # "c":Ljava/lang/Class;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for static fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist staticFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 1280
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1283
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getOffset()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1281
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for static fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native blacklist storeFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist storeStoreFence()V
    .registers 1

    .line 3859
    invoke-virtual {p0}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 3860
    return-void
.end method

.method public native blacklist unpark(Ljava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final blacklist weakCompareAndSetInt(Ljava/lang/Object;JII)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # I
    .param p5, "x"    # I

    .line 1765
    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public final blacklist weakCompareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # Ljava/lang/Object;
    .param p5, "x"    # Ljava/lang/Object;

    .line 1698
    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
