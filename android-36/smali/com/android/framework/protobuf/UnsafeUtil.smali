.class final Lcom/android/framework/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;
    }
.end annotation


# static fields
.field private static final blacklist BOOLEAN_ARRAY_BASE_OFFSET:J

.field private static final blacklist BOOLEAN_ARRAY_INDEX_SCALE:J

.field private static final blacklist BUFFER_ADDRESS_OFFSET:J

.field private static final blacklist BYTE_ARRAY_ALIGNMENT:I

.field static final blacklist BYTE_ARRAY_BASE_OFFSET:J

.field private static final blacklist DOUBLE_ARRAY_BASE_OFFSET:J

.field private static final blacklist DOUBLE_ARRAY_INDEX_SCALE:J

.field private static final blacklist FLOAT_ARRAY_BASE_OFFSET:J

.field private static final blacklist FLOAT_ARRAY_INDEX_SCALE:J

.field private static final blacklist HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field private static final blacklist HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field private static final blacklist INT_ARRAY_BASE_OFFSET:J

.field private static final blacklist INT_ARRAY_INDEX_SCALE:J

.field private static final blacklist IS_ANDROID_32:Z

.field private static final blacklist IS_ANDROID_64:Z

.field static final blacklist IS_BIG_ENDIAN:Z

.field private static final blacklist LONG_ARRAY_BASE_OFFSET:J

.field private static final blacklist LONG_ARRAY_INDEX_SCALE:J

.field private static final blacklist MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

.field private static final blacklist MEMORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist OBJECT_ARRAY_BASE_OFFSET:J

.field private static final blacklist OBJECT_ARRAY_INDEX_SCALE:J

.field private static final blacklist STRIDE:I = 0x8

.field private static final blacklist STRIDE_ALIGNMENT_MASK:I = 0x7

.field private static final blacklist UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 45
    invoke-static {}, Lcom/android/framework/protobuf/Android;->getMemoryClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 46
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    .line 47
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    .line 48
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getMemoryAccessor()Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    .line 50
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 51
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->supportsUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 53
    const-class v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 57
    const-class v0, [Z

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    .line 58
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    .line 60
    const-class v0, [I

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    .line 61
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    .line 63
    const-class v0, [J

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    .line 64
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    .line 66
    const-class v0, [F

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    .line 67
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    .line 69
    const-class v0, [D

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    .line 70
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    .line 72
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    .line 73
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    .line 75
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    .line 79
    sget-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    .line 82
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b5

    const/4 v0, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v0, 0x0

    :goto_b6
    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/Throwable;

    .line 43
    invoke-static {p0}, Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist access$100()Ljava/lang/reflect/Field;
    .registers 1

    .line 43
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/Object;J)B
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Ljava/lang/Object;J)B
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(Ljava/lang/Object;JB)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J
    .param p3, "x2"    # B

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic blacklist access$500(Ljava/lang/Object;JB)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J
    .param p3, "x2"    # B

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic blacklist access$600(Ljava/lang/Object;J)Z
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanBigEndian(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$700(Ljava/lang/Object;J)Z
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanLittleEndian(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$800(Ljava/lang/Object;JZ)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanBigEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic blacklist access$900(Ljava/lang/Object;JZ)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static blacklist addressOffset(Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 279
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 101
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist arrayBaseOffset(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 112
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method private static blacklist arrayIndexScale(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 116
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method private static blacklist bufferAddressField()Ljava/lang/reflect/Field;
    .registers 3

    .line 371
    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 374
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 375
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_11

    .line 376
    return-object v0

    .line 379
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_11
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 380
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_25

    move-object v1, v0

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return-object v1
.end method

.method static blacklist copyMemory(J[BJJ)V
    .registers 15
    .param p0, "srcOffset"    # J
    .param p2, "target"    # [B
    .param p3, "targetIndex"    # J
    .param p5, "length"    # J

    .line 246
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p0    # "srcOffset":J
    .end local p2    # "target":[B
    .end local p3    # "targetIndex":J
    .end local p5    # "length":J
    .local v1, "srcOffset":J
    .local v3, "target":[B
    .local v4, "targetIndex":J
    .local v6, "length":J
    invoke-virtual/range {v0 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory(J[BJJ)V

    .line 247
    return-void
.end method

.method static blacklist copyMemory([BJJJ)V
    .registers 15
    .param p0, "src"    # [B
    .param p1, "srcIndex"    # J
    .param p3, "targetOffset"    # J
    .param p5, "length"    # J

    .line 242
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p0    # "src":[B
    .end local p1    # "srcIndex":J
    .end local p3    # "targetOffset":J
    .end local p5    # "length":J
    .local v1, "src":[B
    .local v2, "srcIndex":J
    .local v4, "targetOffset":J
    .local v6, "length":J
    invoke-virtual/range {v0 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory([BJJJ)V

    .line 243
    return-void
.end method

.method static blacklist copyMemory([BJ[BJJ)V
    .registers 11
    .param p0, "src"    # [B
    .param p1, "srcIndex"    # J
    .param p3, "target"    # [B
    .param p4, "targetIndex"    # J
    .param p6, "length"    # J

    .line 250
    long-to-int v0, p1

    long-to-int v1, p4

    long-to-int v2, p6

    invoke-static {p0, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    return-void
.end method

.method static blacklist determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 350
    .local p0, "addressClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [B

    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 351
    return v2

    .line 354
    :cond_a
    :try_start_a
    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 355
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 356
    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 357
    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 358
    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 359
    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 360
    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 361
    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 362
    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_88
    .catchall {:try_start_a .. :try_end_88} :catchall_89

    .line 363
    return v7

    .line 364
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_89
    move-exception v0

    .line 365
    .local v0, "t":Ljava/lang/Throwable;
    return v2
.end method

.method private static blacklist field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 471
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    .line 475
    .local v0, "field":Ljava/lang/reflect/Field;
    goto :goto_8

    .line 472
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catchall_5
    move-exception v0

    .line 474
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    move-object v0, v1

    .line 476
    .local v0, "field":Ljava/lang/reflect/Field;
    :goto_8
    return-object v0
.end method

.method private static blacklist fieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 462
    if-eqz p0, :cond_e

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_10

    :cond_e
    :goto_e
    const-wide/16 v0, -0x1

    :goto_10
    return-wide v0
.end method

.method private static blacklist firstDifferingByteIndexNativeEndian(JJ)I
    .registers 6
    .param p0, "left"    # J
    .param p2, "right"    # J

    .line 392
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_b

    .line 393
    xor-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    goto :goto_11

    .line 394
    :cond_b
    xor-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    :goto_11
    nop

    .line 395
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x3

    return v1
.end method

.method static blacklist getBoolean(Ljava/lang/Object;J)Z
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 144
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static blacklist getBoolean([ZJ)Z
    .registers 8
    .param p0, "target"    # [Z
    .param p1, "index"    # J

    .line 202
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private static blacklist getBooleanBigEndian(Ljava/lang/Object;J)Z
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 1015
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist getBooleanLittleEndian(Ljava/lang/Object;J)Z
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 1019
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static blacklist getByte(J)B
    .registers 3
    .param p0, "address"    # J

    .line 254
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(J)B

    move-result v0

    return v0
.end method

.method static blacklist getByte(Ljava/lang/Object;J)B
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 120
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static blacklist getByte([BJ)B
    .registers 6
    .param p0, "target"    # [B
    .param p1, "index"    # J

    .line 176
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method private static blacklist getByteBigEndian(Ljava/lang/Object;J)B
    .registers 8
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 993
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    not-long v1, p1

    const-wide/16 v3, 0x3

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    long-to-int v1, v1

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private static blacklist getByteLittleEndian(Ljava/lang/Object;J)B
    .registers 7
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 997
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const-wide/16 v1, 0x3

    and-long/2addr v1, p1

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    long-to-int v1, v1

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method static blacklist getDouble(Ljava/lang/Object;J)D
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 160
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getDouble([DJ)D
    .registers 8
    .param p0, "target"    # [D
    .param p1, "index"    # J

    .line 222
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getFloat(Ljava/lang/Object;J)F
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 152
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method static blacklist getFloat([FJ)F
    .registers 8
    .param p0, "target"    # [F
    .param p1, "index"    # J

    .line 212
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method static blacklist getInt(J)I
    .registers 3
    .param p0, "address"    # J

    .line 262
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(J)I

    move-result v0

    return v0
.end method

.method static blacklist getInt(Ljava/lang/Object;J)I
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 128
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static blacklist getInt([IJ)I
    .registers 8
    .param p0, "target"    # [I
    .param p1, "index"    # J

    .line 184
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static blacklist getLong(J)J
    .registers 4
    .param p0, "address"    # J

    .line 270
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getLong(Ljava/lang/Object;J)J
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 136
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getLong([JJ)J
    .registers 8
    .param p0, "target"    # [J
    .param p1, "index"    # J

    .line 192
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getMemoryAccessor()Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
    .registers 2

    .line 319
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 320
    return-object v1

    .line 322
    :cond_6
    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 323
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    if-eqz v0, :cond_18

    .line 324
    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0

    .line 325
    :cond_18
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    if-eqz v0, :cond_24

    .line 326
    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0

    .line 328
    :cond_24
    return-object v1

    .line 332
    :cond_25
    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0
.end method

.method static blacklist getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 168
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getObject([Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 8
    .param p0, "target"    # [Ljava/lang/Object;
    .param p1, "index"    # J

    .line 232
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 283
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getUnsafe()Lsun/misc/Unsafe;
    .registers 2

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "unsafe":Lsun/misc/Unsafe;
    :try_start_1
    new-instance v1, Lcom/android/framework/protobuf/UnsafeUtil$1;

    invoke-direct {v1}, Lcom/android/framework/protobuf/UnsafeUtil$1;-><init>()V

    .line 293
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    move-object v0, v1

    .line 313
    goto :goto_f

    .line 310
    :catchall_e
    move-exception v1

    .line 314
    :goto_f
    return-object v0
.end method

.method static blacklist hasUnsafeArrayOperations()Z
    .registers 1

    .line 87
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method static blacklist hasUnsafeByteBufferOperations()Z
    .registers 1

    .line 91
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    return v0
.end method

.method static blacklist isAndroid64()Z
    .registers 1

    .line 95
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    return v0
.end method

.method private static blacklist logMissingMethod(Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 1031
    const-class v0, Lcom/android/framework/protobuf/UnsafeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1032
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method static blacklist mismatch([BI[BII)I
    .registers 14
    .param p0, "left"    # [B
    .param p1, "leftOff"    # I
    .param p2, "right"    # [B
    .param p3, "rightOff"    # I
    .param p4, "length"    # I

    .line 407
    if-ltz p1, :cond_6a

    if-ltz p3, :cond_6a

    if-ltz p4, :cond_6a

    add-int v0, p1, p4

    array-length v1, p0

    if-gt v0, v1, :cond_6a

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_6a

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "index":I
    sget-boolean v1, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v1, :cond_58

    .line 417
    sget v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    .line 424
    .local v1, "leftAlignment":I
    :goto_1a
    if-ge v0, p4, :cond_30

    and-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_30

    .line 426
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_2b

    .line 427
    return v0

    .line 425
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 433
    :cond_30
    sub-int v2, p4, v0

    and-int/lit8 v2, v2, -0x8

    add-int/2addr v2, v0

    .line 437
    .local v2, "strideLength":I
    :goto_35
    if-ge v0, v2, :cond_58

    .line 438
    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-static {p0, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 439
    .local v3, "leftLongWord":J
    sget-wide v5, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v7, p3

    add-long/2addr v5, v7

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-static {p2, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 440
    .local v5, "rightLongWord":J
    cmp-long v7, v3, v5

    if-eqz v7, :cond_55

    .line 442
    invoke-static {v3, v4, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->firstDifferingByteIndexNativeEndian(JJ)I

    move-result v7

    add-int/2addr v7, v0

    return v7

    .line 437
    .end local v3    # "leftLongWord":J
    .end local v5    # "rightLongWord":J
    :cond_55
    add-int/lit8 v0, v0, 0x8

    goto :goto_35

    .line 449
    .end local v1    # "leftAlignment":I
    .end local v2    # "strideLength":I
    :cond_58
    :goto_58
    if-ge v0, p4, :cond_68

    .line 450
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_65

    .line 451
    return v0

    .line 449
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 454
    :cond_68
    const/4 v1, -0x1

    return v1

    .line 412
    .end local v0    # "index":I
    :cond_6a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static blacklist objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 108
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist putBoolean(Ljava/lang/Object;JZ)V
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Z

    .line 148
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 149
    return-void
.end method

.method static blacklist putBoolean([ZJZ)V
    .registers 9
    .param p0, "target"    # [Z
    .param p1, "index"    # J
    .param p3, "value"    # Z

    .line 207
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 209
    return-void
.end method

.method private static blacklist putBooleanBigEndian(Ljava/lang/Object;JZ)V
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Z

    .line 1023
    int-to-byte v0, p3

    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    .line 1024
    return-void
.end method

.method private static blacklist putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Z

    .line 1027
    int-to-byte v0, p3

    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    .line 1028
    return-void
.end method

.method static blacklist putByte(JB)V
    .registers 4
    .param p0, "address"    # J
    .param p2, "value"    # B

    .line 258
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(JB)V

    .line 259
    return-void
.end method

.method static blacklist putByte(Ljava/lang/Object;JB)V
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .line 124
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    .line 125
    return-void
.end method

.method static blacklist putByte([BJB)V
    .registers 7
    .param p0, "target"    # [B
    .param p1, "index"    # J
    .param p3, "value"    # B

    .line 180
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    .line 181
    return-void
.end method

.method private static blacklist putByteBigEndian(Ljava/lang/Object;JB)V
    .registers 10
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .line 1001
    const-wide/16 v0, -0x4

    and-long v2, p1, v0

    invoke-static {p0, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    .line 1002
    .local v2, "intValue":I
    long-to-int v3, p1

    not-int v3, v3

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    .line 1003
    .local v3, "shift":I
    const/16 v4, 0xff

    shl-int/2addr v4, v3

    not-int v4, v4

    and-int/2addr v4, v2

    and-int/lit16 v5, p3, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    .line 1004
    .local v4, "output":I
    and-long/2addr v0, p1

    invoke-static {p0, v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1005
    return-void
.end method

.method private static blacklist putByteLittleEndian(Ljava/lang/Object;JB)V
    .registers 10
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .line 1008
    const-wide/16 v0, -0x4

    and-long v2, p1, v0

    invoke-static {p0, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    .line 1009
    .local v2, "intValue":I
    long-to-int v3, p1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    .line 1010
    .local v3, "shift":I
    const/16 v4, 0xff

    shl-int/2addr v4, v3

    not-int v4, v4

    and-int/2addr v4, v2

    and-int/lit16 v5, p3, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    .line 1011
    .local v4, "output":I
    and-long/2addr v0, p1

    invoke-static {p0, v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1012
    return-void
.end method

.method static blacklist putDouble(Ljava/lang/Object;JD)V
    .registers 11
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # D

    .line 164
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p0    # "target":Ljava/lang/Object;
    .end local p1    # "offset":J
    .end local p3    # "value":D
    .local v1, "target":Ljava/lang/Object;
    .local v2, "offset":J
    .local v4, "value":D
    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 165
    return-void
.end method

.method static blacklist putDouble([DJD)V
    .registers 11
    .param p0, "target"    # [D
    .param p1, "index"    # J
    .param p3, "value"    # D

    .line 227
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p3

    .end local p0    # "target":[D
    .end local p3    # "value":D
    .local v1, "target":[D
    .local v4, "value":D
    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 229
    return-void
.end method

.method static blacklist putFloat(Ljava/lang/Object;JF)V
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # F

    .line 156
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 157
    return-void
.end method

.method static blacklist putFloat([FJF)V
    .registers 9
    .param p0, "target"    # [F
    .param p1, "index"    # J
    .param p3, "value"    # F

    .line 217
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 219
    return-void
.end method

.method static blacklist putInt(JI)V
    .registers 4
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 266
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(JI)V

    .line 267
    return-void
.end method

.method static blacklist putInt(Ljava/lang/Object;JI)V
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .line 132
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 133
    return-void
.end method

.method static blacklist putInt([IJI)V
    .registers 9
    .param p0, "target"    # [I
    .param p1, "index"    # J
    .param p3, "value"    # I

    .line 188
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 189
    return-void
.end method

.method static blacklist putLong(JJ)V
    .registers 5
    .param p0, "address"    # J
    .param p2, "value"    # J

    .line 274
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(JJ)V

    .line 275
    return-void
.end method

.method static blacklist putLong(Ljava/lang/Object;JJ)V
    .registers 11
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # J

    .line 140
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p0    # "target":Ljava/lang/Object;
    .end local p1    # "offset":J
    .end local p3    # "value":J
    .local v1, "target":Ljava/lang/Object;
    .local v2, "offset":J
    .local v4, "value":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 141
    return-void
.end method

.method static blacklist putLong([JJJ)V
    .registers 11
    .param p0, "target"    # [J
    .param p1, "index"    # J
    .param p3, "value"    # J

    .line 197
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p3

    .end local p0    # "target":[J
    .end local p3    # "value":J
    .local v1, "target":[J
    .local v4, "value":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 199
    return-void
.end method

.method static blacklist putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 173
    return-void
.end method

.method static blacklist putObject([Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 9
    .param p0, "target"    # [Ljava/lang/Object;
    .param p1, "index"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 239
    return-void
.end method

.method private static blacklist supportsUnsafeArrayOperations()Z
    .registers 1

    .line 336
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_6

    .line 337
    const/4 v0, 0x0

    return v0

    .line 339
    :cond_6
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    move-result v0

    return v0
.end method

.method private static blacklist supportsUnsafeByteBufferOperations()Z
    .registers 1

    .line 343
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_6

    .line 344
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_6
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method
