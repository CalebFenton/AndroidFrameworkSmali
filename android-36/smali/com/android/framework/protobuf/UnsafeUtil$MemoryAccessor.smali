.class abstract Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoryAccessor"
.end annotation


# instance fields
.field blacklist unsafe:Lsun/misc/Unsafe;


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .registers 2
    .param p1, "unsafe"    # Lsun/misc/Unsafe;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 485
    return-void
.end method


# virtual methods
.method public final blacklist arrayBaseOffset(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 492
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public final blacklist arrayIndexScale(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 496
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public abstract blacklist copyMemory(J[BJJ)V
.end method

.method public abstract blacklist copyMemory([BJJJ)V
.end method

.method public abstract blacklist getBoolean(Ljava/lang/Object;J)Z
.end method

.method public abstract blacklist getByte(J)B
.end method

.method public abstract blacklist getByte(Ljava/lang/Object;J)B
.end method

.method public abstract blacklist getDouble(Ljava/lang/Object;J)D
.end method

.method public abstract blacklist getFloat(Ljava/lang/Object;J)F
.end method

.method public abstract blacklist getInt(J)I
.end method

.method public final blacklist getInt(Ljava/lang/Object;J)I
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 533
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public abstract blacklist getLong(J)J
.end method

.method public final blacklist getLong(Ljava/lang/Object;J)J
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 541
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final blacklist getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 561
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
.end method

.method public final blacklist objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 488
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract blacklist putBoolean(Ljava/lang/Object;JZ)V
.end method

.method public abstract blacklist putByte(JB)V
.end method

.method public abstract blacklist putByte(Ljava/lang/Object;JB)V
.end method

.method public abstract blacklist putDouble(Ljava/lang/Object;JD)V
.end method

.method public abstract blacklist putFloat(Ljava/lang/Object;JF)V
.end method

.method public abstract blacklist putInt(JI)V
.end method

.method public final blacklist putInt(Ljava/lang/Object;JI)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # I

    .line 537
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 538
    return-void
.end method

.method public abstract blacklist putLong(JJ)V
.end method

.method public final blacklist putLong(Ljava/lang/Object;JJ)V
    .registers 12
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # J

    .line 545
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "target":Ljava/lang/Object;
    .end local p2    # "offset":J
    .end local p4    # "value":J
    .local v1, "target":Ljava/lang/Object;
    .local v2, "offset":J
    .local v4, "value":J
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 546
    return-void
.end method

.method public final blacklist putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 566
    return-void
.end method

.method public blacklist supportsUnsafeArrayOperations()Z
    .registers 9

    .line 506
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 507
    return v1

    .line 510
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 511
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 512
    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 513
    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 514
    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 515
    const-string/jumbo v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 516
    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 517
    const-string/jumbo v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 518
    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 519
    const-string/jumbo v2, "putObject"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_99
    .catchall {:try_start_6 .. :try_end_99} :catchall_9a

    .line 521
    return v3

    .line 522
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_9a
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Throwable;
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 525
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public blacklist supportsUnsafeByteBufferOperations()Z
    .registers 7

    .line 573
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 574
    return v1

    .line 577
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 579
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 580
    const-string v2, "getLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 582
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->access$100()Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_30

    if-nez v2, :cond_2f

    .line 583
    return v1

    .line 586
    :cond_2f
    return v3

    .line 587
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_30
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Throwable;
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 590
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method
