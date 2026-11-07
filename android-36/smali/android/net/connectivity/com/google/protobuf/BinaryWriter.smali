.class abstract Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
.super Landroid/net/connectivity/com/google/protobuf/ByteOutput;
.source "BinaryWriter.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/Writer;


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;,
        Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeDirectWriter;,
        Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeHeapWriter;,
        Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final blacklist MAP_KEY_NUMBER:I = 0x1

.field private static final blacklist MAP_VALUE_NUMBER:I = 0x2


# instance fields
.field private final blacklist alloc:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

.field final blacklist buffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist chunkSize:I

.field blacklist totalDoneBytes:I


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)V
    .registers 5
    .param p1, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .line 146
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/ByteOutput;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 147
    if-lez p2, :cond_1a

    .line 150
    const-string v0, "alloc"

    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->alloc:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    .line 151
    iput p2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->chunkSize:I

    .line 152
    return-void

    .line 148
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkSize must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;ILandroid/net/connectivity/com/google/protobuf/BinaryWriter$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/net/connectivity/com/google/protobuf/BinaryWriter$1;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)V

    return-void
.end method

.method static synthetic blacklist access$200(J)B
    .registers 3
    .param p0, "x0"    # J

    .line 70
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B

    move-result v0

    return v0
.end method

.method private static blacklist computeUInt64SizeNoTag(J)B
    .registers 8
    .param p0, "value"    # J

    .line 894
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 896
    const/4 v0, 0x1

    return v0

    .line 898
    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    .line 900
    const/16 v0, 0xa

    return v0

    .line 903
    :cond_12
    const/4 v0, 0x2

    .line 904
    .local v0, "n":B
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_23

    .line 906
    add-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 907
    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    .line 909
    :cond_23
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_31

    .line 911
    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 912
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 914
    :cond_31
    const-wide/16 v4, -0x4000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3b

    .line 916
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 918
    :cond_3b
    return v0
.end method

.method static blacklist isUnsafeDirectSupported()Z
    .registers 1

    .line 120
    # invokes: Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeDirectWriter;->isSupported()Z
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeDirectWriter;->access$000()Z

    move-result v0

    return v0
.end method

.method static blacklist isUnsafeHeapSupported()Z
    .registers 1

    .line 116
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static blacklist newDirectInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
    .registers 2
    .param p0, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    .line 102
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->newDirectInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newDirectInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
    .registers 3
    .param p0, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 110
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 111
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->newUnsafeDirectInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_f

    .line 112
    :cond_b
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->newSafeDirectInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;

    move-result-object v0

    .line 110
    :goto_f
    return-object v0
.end method

.method public static blacklist newHeapInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
    .registers 2
    .param p0, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    .line 84
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->newHeapInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newHeapInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
    .registers 3
    .param p0, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 92
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->newUnsafeHeapInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_f

    .line 94
    :cond_b
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->newSafeHeapInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;

    move-result-object v0

    .line 92
    :goto_f
    return-object v0
.end method

.method static blacklist newSafeDirectInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
    .registers 3
    .param p0, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 135
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static blacklist newSafeHeapInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
    .registers 3
    .param p0, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 124
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeHeapWriter;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeHeapWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static blacklist newUnsafeDirectInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
    .registers 4
    .param p0, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 139
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 142
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeDirectWriter;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeDirectWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)V

    return-object v0

    .line 140
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist newUnsafeHeapInstance(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
    .registers 4
    .param p0, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 128
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)V

    return-object v0

    .line 129
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final blacklist writeBoolList_Internal(ILandroid/net/connectivity/com/google/protobuf/BooleanArrayList;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    if-eqz p3, :cond_2e

    .line 521
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 522
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 523
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_21

    .line 524
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBool(Z)V

    .line 523
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 526
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 527
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 528
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 529
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_40

    .line 530
    :cond_2e
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_34
    if-ltz v0, :cond_40

    .line 531
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 530
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    .line 534
    .end local v0    # "i":I
    :cond_40
    :goto_40
    return-void
.end method

.method private final blacklist writeBoolList_Internal(ILjava/util/List;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_34

    .line 503
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 504
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 505
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_27

    .line 506
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBool(Z)V

    .line 505
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 508
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 509
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 510
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 511
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_4c

    .line 512
    :cond_34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3a
    if-ltz v0, :cond_4c

    .line 513
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 512
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 516
    .end local v0    # "i":I
    :cond_4c
    :goto_4c
    return-void
.end method

.method private final blacklist writeDoubleList_Internal(ILandroid/net/connectivity/com/google/protobuf/DoubleArrayList;Z)V
    .registers 8
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    if-eqz p3, :cond_34

    .line 469
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 470
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 471
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_27

    .line 472
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 471
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 474
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 475
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 476
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 477
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_46

    .line 478
    :cond_34
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3a
    if-ltz v0, :cond_46

    .line 479
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 478
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 482
    .end local v0    # "i":I
    :cond_46
    :goto_46
    return-void
.end method

.method private final blacklist writeDoubleList_Internal(ILjava/util/List;Z)V
    .registers 8
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p3, :cond_3a

    .line 451
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 452
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 453
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_2d

    .line 454
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 453
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 456
    .end local v1    # "i":I
    :cond_2d
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 457
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 458
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 459
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_52

    .line 460
    :cond_3a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_40
    if-ltz v0, :cond_52

    .line 461
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 460
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 464
    .end local v0    # "i":I
    :cond_52
    :goto_52
    return-void
.end method

.method private final blacklist writeFixed32List_Internal(ILandroid/net/connectivity/com/google/protobuf/IntArrayList;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    if-eqz p3, :cond_30

    .line 279
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 280
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 281
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_23

    .line 282
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 281
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 284
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 285
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 286
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 287
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_42

    .line 288
    :cond_30
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_42

    .line 289
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 288
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 292
    .end local v0    # "i":I
    :cond_42
    :goto_42
    return-void
.end method

.method private final blacklist writeFixed32List_Internal(ILjava/util/List;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_36

    .line 261
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 262
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 263
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_29

    .line 264
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 263
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 266
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 267
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 268
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 269
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_4e

    .line 270
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3c
    if-ltz v0, :cond_4e

    .line 271
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 270
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 274
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method private final blacklist writeFixed64List_Internal(ILandroid/net/connectivity/com/google/protobuf/LongArrayList;Z)V
    .registers 8
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    if-eqz p3, :cond_30

    .line 377
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 378
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 379
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_23

    .line 380
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 379
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 382
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 383
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 384
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 385
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_42

    .line 386
    :cond_30
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_42

    .line 387
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 386
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 390
    .end local v0    # "i":I
    :cond_42
    :goto_42
    return-void
.end method

.method private final blacklist writeFixed64List_Internal(ILjava/util/List;Z)V
    .registers 8
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_36

    .line 359
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 360
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 361
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_29

    .line 362
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 361
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 364
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 365
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 366
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 367
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_4e

    .line 368
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3c
    if-ltz v0, :cond_4e

    .line 369
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 368
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 372
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method private final blacklist writeFloatList_Internal(ILandroid/net/connectivity/com/google/protobuf/FloatArrayList;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/FloatArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    if-eqz p3, :cond_34

    .line 423
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 424
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 425
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_27

    .line 426
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 425
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 428
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 429
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 430
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 431
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_46

    .line 432
    :cond_34
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3a
    if-ltz v0, :cond_46

    .line 433
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;->getFloat(I)F

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 432
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 436
    .end local v0    # "i":I
    :cond_46
    :goto_46
    return-void
.end method

.method private final blacklist writeFloatList_Internal(ILjava/util/List;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p3, :cond_3a

    .line 405
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 406
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 407
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_2d

    .line 408
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 407
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 410
    .end local v1    # "i":I
    :cond_2d
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 411
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 412
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 413
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_52

    .line 414
    :cond_3a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_40
    if-ltz v0, :cond_52

    .line 415
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 414
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 418
    .end local v0    # "i":I
    :cond_52
    :goto_52
    return-void
.end method

.method private final blacklist writeInt32List_Internal(ILandroid/net/connectivity/com/google/protobuf/IntArrayList;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    if-eqz p3, :cond_30

    .line 233
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 234
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 235
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_23

    .line 236
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeInt32(I)V

    .line 235
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 238
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 239
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 240
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 241
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_42

    .line 242
    :cond_30
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_42

    .line 243
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 242
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 246
    .end local v0    # "i":I
    :cond_42
    :goto_42
    return-void
.end method

.method private final blacklist writeInt32List_Internal(ILjava/util/List;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_36

    .line 215
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 216
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 217
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_29

    .line 218
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeInt32(I)V

    .line 217
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 220
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 221
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 222
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 223
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_4e

    .line 224
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3c
    if-ltz v0, :cond_4e

    .line 225
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 228
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method private blacklist writeLazyString(ILjava/lang/Object;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 552
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    goto :goto_11

    .line 554
    :cond_b
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 556
    :goto_11
    return-void
.end method

.method static final blacklist writeMapEntryField(Landroid/net/connectivity/com/google/protobuf/Writer;ILandroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 7
    .param p0, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f4

    .line 758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported map value type for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :pswitch_24
    instance-of v0, p3, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_34

    .line 750
    move-object v0, p3

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_f2

    .line 751
    :cond_34
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_44

    .line 752
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_f2

    .line 754
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected type for enum in map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :pswitch_4c
    move-object v0, p3

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 747
    goto/16 :goto_f2

    .line 743
    :pswitch_54
    invoke-interface {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 744
    goto/16 :goto_f2

    .line 740
    :pswitch_59
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeDouble(ID)V

    .line 741
    goto/16 :goto_f2

    .line 737
    :pswitch_65
    move-object v0, p3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFloat(IF)V

    .line 738
    goto/16 :goto_f2

    .line 734
    :pswitch_71
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 735
    goto/16 :goto_f2

    .line 731
    :pswitch_7d
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt32(II)V

    .line 732
    goto :goto_f2

    .line 728
    :pswitch_88
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 729
    goto :goto_f2

    .line 725
    :pswitch_8f
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 726
    goto :goto_f2

    .line 722
    :pswitch_9a
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt32(II)V

    .line 723
    goto :goto_f2

    .line 719
    :pswitch_a5
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 720
    goto :goto_f2

    .line 716
    :pswitch_b0
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed32(II)V

    .line 717
    goto :goto_f2

    .line 713
    :pswitch_bb
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt64(IJ)V

    .line 714
    goto :goto_f2

    .line 710
    :pswitch_c6
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    .line 711
    goto :goto_f2

    .line 707
    :pswitch_d1
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 708
    goto :goto_f2

    .line 704
    :pswitch_dc
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed32(II)V

    .line 705
    goto :goto_f2

    .line 701
    :pswitch_e7
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBool(IZ)V

    .line 702
    nop

    .line 760
    :goto_f2
    return-void

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_dc
        :pswitch_d1
        :pswitch_c6
        :pswitch_bb
        :pswitch_b0
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_88
        :pswitch_7d
        :pswitch_71
        :pswitch_65
        :pswitch_59
        :pswitch_54
        :pswitch_4c
        :pswitch_24
    .end packed-switch
.end method

.method private final blacklist writeSInt32List_Internal(ILandroid/net/connectivity/com/google/protobuf/IntArrayList;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    if-eqz p3, :cond_30

    .line 654
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 655
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 656
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_23

    .line 657
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 656
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 659
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 660
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 661
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 662
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_42

    .line 663
    :cond_30
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_42

    .line 664
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 663
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 667
    .end local v0    # "i":I
    :cond_42
    :goto_42
    return-void
.end method

.method private final blacklist writeSInt32List_Internal(ILjava/util/List;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_36

    .line 636
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 637
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 638
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_29

    .line 639
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 638
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 641
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 642
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 643
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 644
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_4e

    .line 645
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3c
    if-ltz v0, :cond_4e

    .line 646
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 645
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 649
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method private final blacklist writeSInt64List_Internal(ILandroid/net/connectivity/com/google/protobuf/LongArrayList;Z)V
    .registers 8
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    if-eqz p3, :cond_30

    .line 783
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 784
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 785
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_23

    .line 786
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 785
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 788
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 789
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 790
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 791
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_42

    .line 792
    :cond_30
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_42

    .line 793
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 792
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 796
    .end local v0    # "i":I
    :cond_42
    :goto_42
    return-void
.end method

.method private final blacklist writeSInt64List_Internal(ILjava/util/List;Z)V
    .registers 8
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_36

    .line 765
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 766
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 767
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_29

    .line 768
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 767
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 770
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 771
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 772
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 773
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_4e

    .line 774
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3c
    if-ltz v0, :cond_4e

    .line 775
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 774
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 778
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method private final blacklist writeUInt32List_Internal(ILandroid/net/connectivity/com/google/protobuf/IntArrayList;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    if-eqz p3, :cond_30

    .line 596
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 597
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 598
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_23

    .line 599
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 598
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 601
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 602
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 603
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 604
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_42

    .line 605
    :cond_30
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_42

    .line 606
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 605
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 609
    .end local v0    # "i":I
    :cond_42
    :goto_42
    return-void
.end method

.method private final blacklist writeUInt32List_Internal(ILjava/util/List;Z)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_36

    .line 578
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 579
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 580
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_29

    .line 581
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 580
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 583
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 584
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 585
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 586
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_4e

    .line 587
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3c
    if-ltz v0, :cond_4e

    .line 588
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 587
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 591
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method private final blacklist writeUInt64List_Internal(ILandroid/net/connectivity/com/google/protobuf/LongArrayList;Z)V
    .registers 8
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Landroid/net/connectivity/com/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    if-eqz p3, :cond_30

    .line 331
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 332
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 333
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_23

    .line 334
    invoke-virtual {p2, v1}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 333
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 336
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 337
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 338
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 339
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_42

    .line 340
    :cond_30
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_42

    .line 341
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 340
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 344
    .end local v0    # "i":I
    :cond_42
    :goto_42
    return-void
.end method

.method private final blacklist writeUInt64List_Internal(ILjava/util/List;Z)V
    .registers 8
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_36

    .line 313
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 314
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 315
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_29

    .line 316
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 315
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 318
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 319
    .local v1, "length":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 320
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 321
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_4e

    .line 322
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3c
    if-ltz v0, :cond_4e

    .line 323
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 322
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 326
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method public final blacklist complete()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->finishCurrentBuffer()V

    .line 169
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public final blacklist fieldOrder()Landroid/net/connectivity/com/google/protobuf/Writer$FieldOrder;
    .registers 2

    .line 156
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/Writer$FieldOrder;->DESCENDING:Landroid/net/connectivity/com/google/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method abstract blacklist finishCurrentBuffer()V
.end method

.method public abstract blacklist getTotalBytesWritten()I
.end method

.method final blacklist newDirectBuffer()Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
    .registers 3

    .line 851
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->alloc:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/BufferAllocator;->allocateDirectBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final blacklist newDirectBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
    .registers 4
    .param p1, "capacity"    # I

    .line 855
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->alloc:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/BufferAllocator;->allocateDirectBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final blacklist newHeapBuffer()Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
    .registers 3

    .line 843
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->alloc:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/BufferAllocator;->allocateHeapBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final blacklist newHeapBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
    .registers 4
    .param p1, "capacity"    # I

    .line 847
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->alloc:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/BufferAllocator;->allocateHeapBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist requireSpace(I)V
.end method

.method abstract blacklist writeBool(Z)V
.end method

.method public final blacklist writeBoolList(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;

    if-eqz v0, :cond_b

    .line 494
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBoolList_Internal(ILandroid/net/connectivity/com/google/protobuf/BooleanArrayList;Z)V

    goto :goto_e

    .line 496
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBoolList_Internal(ILjava/util/List;Z)V

    .line 498
    :goto_e
    return-void
.end method

.method public final blacklist writeBytesList(ILjava/util/List;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 561
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 560
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 563
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public final blacklist writeDouble(ID)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 195
    return-void
.end method

.method public final blacklist writeDoubleList(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;

    if-eqz v0, :cond_b

    .line 442
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeDoubleList_Internal(ILandroid/net/connectivity/com/google/protobuf/DoubleArrayList;Z)V

    goto :goto_e

    .line 444
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeDoubleList_Internal(ILjava/util/List;Z)V

    .line 446
    :goto_e
    return-void
.end method

.method public final blacklist writeEnum(II)V
    .registers 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 200
    return-void
.end method

.method public final blacklist writeEnumList(ILjava/util/List;Z)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeInt32List(ILjava/util/List;Z)V

    .line 488
    return-void
.end method

.method abstract blacklist writeFixed32(I)V
.end method

.method public final blacklist writeFixed32List(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    if-eqz v0, :cond_b

    .line 252
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32List_Internal(ILandroid/net/connectivity/com/google/protobuf/IntArrayList;Z)V

    goto :goto_e

    .line 254
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32List_Internal(ILjava/util/List;Z)V

    .line 256
    :goto_e
    return-void
.end method

.method abstract blacklist writeFixed64(J)V
.end method

.method public final blacklist writeFixed64List(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/LongArrayList;

    if-eqz v0, :cond_b

    .line 350
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64List_Internal(ILandroid/net/connectivity/com/google/protobuf/LongArrayList;Z)V

    goto :goto_e

    .line 352
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64List_Internal(ILjava/util/List;Z)V

    .line 354
    :goto_e
    return-void
.end method

.method public final blacklist writeFloat(IF)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 190
    return-void
.end method

.method public final blacklist writeFloatList(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;

    if-eqz v0, :cond_b

    .line 396
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFloatList_Internal(ILandroid/net/connectivity/com/google/protobuf/FloatArrayList;Z)V

    goto :goto_e

    .line 398
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFloatList_Internal(ILjava/util/List;Z)V

    .line 400
    :goto_e
    return-void
.end method

.method public final blacklist writeGroupList(ILjava/util/List;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 817
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;)V

    .line 816
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 819
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public final blacklist writeGroupList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Schema;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p3, "schema"    # Landroid/net/connectivity/com/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Landroid/net/connectivity/com/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 826
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 825
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 828
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method abstract blacklist writeInt32(I)V
.end method

.method public final blacklist writeInt32List(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    if-eqz v0, :cond_b

    .line 206
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeInt32List_Internal(ILandroid/net/connectivity/com/google/protobuf/IntArrayList;Z)V

    goto :goto_e

    .line 208
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeInt32List_Internal(ILjava/util/List;Z)V

    .line 210
    :goto_e
    return-void
.end method

.method public final blacklist writeInt64(IJ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 180
    return-void
.end method

.method public final blacklist writeInt64List(ILjava/util/List;Z)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt64List(ILjava/util/List;Z)V

    .line 298
    return-void
.end method

.method public blacklist writeMap(ILandroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .registers 11
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    .local p2, "metadata":Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;, "Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 687
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 688
    .local v2, "prevBytes":I
    iget-object v3, p2, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->valueType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p0, v5, v3, v4}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeMapEntryField(Landroid/net/connectivity/com/google/protobuf/Writer;ILandroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 689
    iget-object v3, p2, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->keyType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {p0, v6, v3, v4}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeMapEntryField(Landroid/net/connectivity/com/google/protobuf/Writer;ILandroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 690
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int/2addr v3, v2

    .line 691
    .local v3, "length":I
    invoke-virtual {p0, v3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 692
    invoke-virtual {p0, p1, v5}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 693
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "prevBytes":I
    .end local v3    # "length":I
    goto :goto_8

    .line 694
    :cond_38
    return-void
.end method

.method public final blacklist writeMessageList(ILjava/util/List;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 801
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    .line 800
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 803
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public final blacklist writeMessageList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Schema;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p3, "schema"    # Landroid/net/connectivity/com/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Landroid/net/connectivity/com/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 809
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 808
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 811
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public final blacklist writeMessageSetItem(ILjava/lang/Object;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 833
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    const/4 v2, 0x3

    if-eqz v0, :cond_11

    .line 834
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {p0, v2, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto :goto_14

    .line 836
    :cond_11
    invoke-virtual {p0, v2, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    .line 838
    :goto_14
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 839
    invoke-virtual {p0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 840
    return-void
.end method

.method public final blacklist writeSFixed32(II)V
    .registers 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 175
    return-void
.end method

.method public final blacklist writeSFixed32List(ILjava/util/List;Z)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed32List(ILjava/util/List;Z)V

    .line 615
    return-void
.end method

.method public final blacklist writeSFixed64(IJ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 185
    return-void
.end method

.method public final blacklist writeSFixed64List(ILjava/util/List;Z)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeFixed64List(ILjava/util/List;Z)V

    .line 621
    return-void
.end method

.method abstract blacklist writeSInt32(I)V
.end method

.method public final blacklist writeSInt32List(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    if-eqz v0, :cond_b

    .line 627
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt32List_Internal(ILandroid/net/connectivity/com/google/protobuf/IntArrayList;Z)V

    goto :goto_e

    .line 629
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt32List_Internal(ILjava/util/List;Z)V

    .line 631
    :goto_e
    return-void
.end method

.method abstract blacklist writeSInt64(J)V
.end method

.method public final blacklist writeSInt64List(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/LongArrayList;

    if-eqz v0, :cond_b

    .line 673
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt64List_Internal(ILandroid/net/connectivity/com/google/protobuf/LongArrayList;Z)V

    goto :goto_e

    .line 675
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeSInt64List_Internal(ILjava/util/List;Z)V

    .line 677
    :goto_e
    return-void
.end method

.method abstract blacklist writeString(Ljava/lang/String;)V
.end method

.method public final blacklist writeStringList(ILjava/util/List;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    if-eqz v0, :cond_1a

    .line 539
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    .line 540
    .local v0, "lazyList":Landroid/net/connectivity/com/google/protobuf/LazyStringList;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_19

    .line 541
    invoke-interface {v0, v1}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeLazyString(ILjava/lang/Object;)V

    .line 540
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 543
    .end local v0    # "lazyList":Landroid/net/connectivity/com/google/protobuf/LazyStringList;
    .end local v1    # "i":I
    :cond_19
    goto :goto_2e

    .line 544
    :cond_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2e

    .line 545
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    .line 544
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 548
    .end local v0    # "i":I
    :cond_2e
    :goto_2e
    return-void
.end method

.method abstract blacklist writeTag(II)V
.end method

.method public final blacklist writeUInt32List(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    if-eqz v0, :cond_b

    .line 569
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt32List_Internal(ILandroid/net/connectivity/com/google/protobuf/IntArrayList;Z)V

    goto :goto_e

    .line 571
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt32List_Internal(ILjava/util/List;Z)V

    .line 573
    :goto_e
    return-void
.end method

.method public final blacklist writeUInt64List(ILjava/util/List;Z)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Landroid/net/connectivity/com/google/protobuf/LongArrayList;

    if-eqz v0, :cond_b

    .line 304
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt64List_Internal(ILandroid/net/connectivity/com/google/protobuf/LongArrayList;Z)V

    goto :goto_e

    .line 306
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->writeUInt64List_Internal(ILjava/util/List;Z)V

    .line 308
    :goto_e
    return-void
.end method

.method abstract blacklist writeVarint32(I)V
.end method

.method abstract blacklist writeVarint64(J)V
.end method
