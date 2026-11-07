.class final Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;
.super Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JvmMemoryAccessor"
.end annotation


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .registers 2
    .param p1, "unsafe"    # Lsun/misc/Unsafe;

    .line 613
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 614
    return-void
.end method


# virtual methods
.method public blacklist copyMemory(J[BJJ)V
    .registers 17
    .param p1, "srcOffset"    # J
    .param p3, "target"    # [B
    .param p4, "targetIndex"    # J
    .param p6, "length"    # J

    .line 741
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v5, v1, p4

    const/4 v1, 0x0

    move-wide v2, p1

    move-object v4, p3

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory([BJ[BJJ)V

    .line 742
    return-void
.end method

.method public blacklist copyMemory([BJJJ)V
    .registers 17
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # J
    .param p4, "targetOffset"    # J
    .param p6, "length"    # J

    .line 746
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v2, v1, p2

    const/4 v4, 0x0

    move-object v1, p1

    move-wide v5, p4

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory([BJ[BJJ)V

    .line 747
    return-void
.end method

.method public blacklist getBoolean(Ljava/lang/Object;J)Z
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 657
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public blacklist getByte(J)B
    .registers 4
    .param p1, "address"    # J

    .line 711
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method public blacklist getByte(Ljava/lang/Object;J)B
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 647
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public blacklist getDouble(Ljava/lang/Object;J)D
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 677
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFloat(Ljava/lang/Object;J)F
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 667
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method public blacklist getInt(J)I
    .registers 4
    .param p1, "address"    # J

    .line 721
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method public blacklist getLong(J)J
    .registers 5
    .param p1, "address"    # J

    .line 731
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 618
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist putBoolean(Ljava/lang/Object;JZ)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .line 662
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 663
    return-void
.end method

.method public blacklist putByte(JB)V
    .registers 5
    .param p1, "address"    # J
    .param p3, "value"    # B

    .line 716
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 717
    return-void
.end method

.method public blacklist putByte(Ljava/lang/Object;JB)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # B

    .line 652
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 653
    return-void
.end method

.method public blacklist putDouble(Ljava/lang/Object;JD)V
    .registers 12
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # D

    .line 682
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "target":Ljava/lang/Object;
    .end local p2    # "offset":J
    .end local p4    # "value":D
    .local v1, "target":Ljava/lang/Object;
    .local v2, "offset":J
    .local v4, "value":D
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 683
    return-void
.end method

.method public blacklist putFloat(Ljava/lang/Object;JF)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # F

    .line 672
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 673
    return-void
.end method

.method public blacklist putInt(JI)V
    .registers 5
    .param p1, "address"    # J
    .param p3, "value"    # I

    .line 726
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 727
    return-void
.end method

.method public blacklist putLong(JJ)V
    .registers 6
    .param p1, "address"    # J
    .param p3, "value"    # J

    .line 736
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 737
    return-void
.end method

.method public blacklist supportsUnsafeArrayOperations()Z
    .registers 9

    .line 623
    invoke-super {p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 624
    return v1

    .line 628
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 629
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getByte"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 630
    const-string/jumbo v2, "putByte"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 631
    const-string v2, "getBoolean"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 632
    const-string/jumbo v2, "putBoolean"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 633
    const-string v2, "getFloat"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 634
    const-string/jumbo v2, "putFloat"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 635
    const-string v2, "getDouble"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 636
    const-string/jumbo v2, "putDouble"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_9d
    .catchall {:try_start_8 .. :try_end_9d} :catchall_9e

    .line 638
    return v6

    .line 639
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_9e
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Throwable;
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 642
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public blacklist supportsUnsafeByteBufferOperations()Z
    .registers 9

    .line 687
    const-string v0, "copyMemory"

    invoke-super {p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeByteBufferOperations()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 688
    return v2

    .line 692
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 693
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getByte"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 694
    const-string/jumbo v3, "putByte"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 695
    const-string v3, "getInt"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 696
    const-string/jumbo v3, "putInt"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 697
    const-string v3, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 698
    const-string/jumbo v3, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 699
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 700
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v5

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v3

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v3, v6, v5

    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_90
    .catchall {:try_start_a .. :try_end_90} :catchall_91

    .line 702
    return v4

    .line 703
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_91
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Throwable;
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 706
    .end local v0    # "e":Ljava/lang/Throwable;
    return v2
.end method
