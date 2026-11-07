.class public final Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field public static final greylist-max-r INVALID_FIELD_OFFSET:I = -0x1

.field private static final greylist THE_ONE:Lsun/misc/Unsafe;

.field private static final greylist theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lsun/misc/Unsafe;

    invoke-direct {v0}, Lsun/misc/Unsafe;-><init>()V

    sput-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    .line 47
    sget-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Lsun/misc/Unsafe;->theUnsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native greylist-max-o getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o getArrayIndexScaleForComponentType(Ljava/lang/Class;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static greylist test-api getUnsafe()Lsun/misc/Unsafe;
    .registers 4

    .line 60
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 66
    .local v1, "calling":Ljava/lang/ClassLoader;
    :goto_c
    if-eqz v1, :cond_1f

    const-class v2, Lsun/misc/Unsafe;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_17

    goto :goto_1f

    .line 67
    :cond_17
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unsafe access denied"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_1f
    :goto_1f
    sget-object v2, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    return-object v2
.end method


# virtual methods
.method public native greylist addressSize()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native greylist allocateMemory(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public greylist test-api arrayBaseOffset(Ljava/lang/Class;)I
    .registers 6
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_b

    .line 100
    invoke-static {v0}, Lsun/misc/Unsafe;->getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I

    move-result v1

    return v1

    .line 98
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

.method public greylist test-api arrayIndexScale(Ljava/lang/Class;)I
    .registers 6
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_b

    .line 114
    invoke-static {v0}, Lsun/misc/Unsafe;->getArrayIndexScaleForComponentType(Ljava/lang/Class;)I

    move-result v1

    return v1

    .line 112
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

.method public native greylist compareAndSwapInt(Ljava/lang/Object;JII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist compareAndSwapLong(Ljava/lang/Object;JJJ)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api copyMemory(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist-max-r copyMemoryFromPrimitiveArray(Ljava/lang/Object;JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist-max-r copyMemoryToPrimitiveArray(JLjava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist freeMemory(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist fullFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final greylist-max-r getAndAddInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # I

    .line 706
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 707
    .local v4, "v":I
    add-int v5, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 708
    return v4

    .line 707
    :cond_11
    move-object p1, v1

    move-wide p2, v2

    goto :goto_1
.end method

.method public final greylist-max-r getAndAddLong(Ljava/lang/Object;JJ)J
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # J

    .line 726
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 727
    .local v4, "v":J
    add-long v6, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "offset":J
    .local v1, "o":Ljava/lang/Object;
    .local v2, "offset":J
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 728
    return-wide v4

    .line 727
    :cond_11
    move-object p1, v1

    move-wide p2, v2

    goto :goto_1
.end method

.method public final greylist-max-r getAndSetInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # I

    .line 746
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 747
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
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 748
    return v4

    .line 747
    :cond_10
    move-object p1, v1

    move-wide p2, v2

    move p4, v5

    goto :goto_1
.end method

.method public final greylist-max-r getAndSetLong(Ljava/lang/Object;JJ)J
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # J

    .line 766
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 767
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
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 768
    return-wide v4

    .line 767
    :cond_10
    move-object p1, v1

    move-wide p2, v2

    move-wide p4, v6

    goto :goto_1
.end method

.method public final greylist getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 786
    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 787
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
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 788
    return-object v4

    .line 787
    :cond_10
    move-object p1, v1

    move-wide p2, v2

    move-object p4, v5

    goto :goto_1
.end method

.method public native greylist test-api getBoolean(Ljava/lang/Object;J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getByte(J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getByte(Ljava/lang/Object;J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist getChar(J)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist getChar(Ljava/lang/Object;J)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getDouble(J)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getDouble(Ljava/lang/Object;J)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getFloat(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getFloat(Ljava/lang/Object;J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getInt(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getInt(Ljava/lang/Object;J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist getIntVolatile(Ljava/lang/Object;J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getLong(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getLong(Ljava/lang/Object;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist getLongVolatile(Ljava/lang/Object;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist getShort(J)S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist getShort(Ljava/lang/Object;J)S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist loadFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public greylist test-api objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 82
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 85
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getOffset()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 83
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for instance fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native greylist pageSize()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist park(ZJ)V
.end method

.method public native greylist test-api putBoolean(Ljava/lang/Object;JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putByte(JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putByte(Ljava/lang/Object;JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putChar(JC)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putChar(Ljava/lang/Object;JC)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putDouble(JD)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putDouble(Ljava/lang/Object;JD)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putFloat(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putFloat(Ljava/lang/Object;JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putInt(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putInt(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putIntVolatile(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putLong(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putLong(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putLongVolatile(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putOrderedInt(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putOrderedLong(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putShort(JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist putShort(Ljava/lang/Object;JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist setMemory(JJB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist storeFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist unpark(Ljava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
