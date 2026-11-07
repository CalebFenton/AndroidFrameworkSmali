.class final Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;
.super Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Android32MemoryAccessor"
.end annotation


# static fields
.field private static final blacklist SMALL_ADDRESS_MASK:J = -0x1L


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .registers 2
    .param p1, "unsafe"    # Lsun/misc/Unsafe;

    .line 878
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 879
    return-void
.end method

.method private static blacklist smallAddress(J)I
    .registers 4
    .param p0, "address"    # J

    .line 874
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public blacklist copyMemory(J[BJJ)V
    .registers 9
    .param p1, "srcOffset"    # J
    .param p3, "target"    # [B
    .param p4, "targetIndex"    # J
    .param p6, "length"    # J

    .line 983
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist copyMemory([BJJJ)V
    .registers 9
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # J
    .param p4, "targetOffset"    # J
    .param p6, "length"    # J

    .line 988
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getBoolean(Ljava/lang/Object;J)Z
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 910
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 911
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanBigEndian(Ljava/lang/Object;J)Z
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$600(Ljava/lang/Object;J)Z

    move-result v0

    return v0

    .line 913
    :cond_9
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanLittleEndian(Ljava/lang/Object;J)Z
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$700(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public blacklist getByte(J)B
    .registers 4
    .param p1, "address"    # J

    .line 953
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getByte(Ljava/lang/Object;J)B
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 892
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 893
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$200(Ljava/lang/Object;J)B

    move-result v0

    return v0

    .line 895
    :cond_9
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$300(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public blacklist getDouble(Ljava/lang/Object;J)D
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 938
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFloat(Ljava/lang/Object;J)F
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 928
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist getInt(J)I
    .registers 4
    .param p1, "address"    # J

    .line 963
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getLong(J)J
    .registers 4
    .param p1, "address"    # J

    .line 973
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 884
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 885
    :catch_6
    move-exception v1

    .line 886
    .local v1, "e":Ljava/lang/IllegalAccessException;
    return-object v0
.end method

.method public blacklist putBoolean(Ljava/lang/Object;JZ)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .line 919
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 920
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanBigEndian(Ljava/lang/Object;JZ)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$800(Ljava/lang/Object;JZ)V

    goto :goto_b

    .line 922
    :cond_8
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$900(Ljava/lang/Object;JZ)V

    .line 924
    :goto_b
    return-void
.end method

.method public blacklist putByte(JB)V
    .registers 5
    .param p1, "address"    # J
    .param p3, "value"    # B

    .line 958
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist putByte(Ljava/lang/Object;JB)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # B

    .line 901
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 902
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$400(Ljava/lang/Object;JB)V

    goto :goto_b

    .line 904
    :cond_8
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$500(Ljava/lang/Object;JB)V

    .line 906
    :goto_b
    return-void
.end method

.method public blacklist putDouble(Ljava/lang/Object;JD)V
    .registers 12
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # D

    .line 943
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "target":Ljava/lang/Object;
    .end local p2    # "offset":J
    .local v1, "target":Ljava/lang/Object;
    .local v2, "offset":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 944
    return-void
.end method

.method public blacklist putFloat(Ljava/lang/Object;JF)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # F

    .line 933
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 934
    return-void
.end method

.method public blacklist putInt(JI)V
    .registers 5
    .param p1, "address"    # J
    .param p3, "value"    # I

    .line 968
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist putLong(JJ)V
    .registers 6
    .param p1, "address"    # J
    .param p3, "value"    # J

    .line 978
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist supportsUnsafeByteBufferOperations()Z
    .registers 2

    .line 948
    const/4 v0, 0x0

    return v0
.end method
