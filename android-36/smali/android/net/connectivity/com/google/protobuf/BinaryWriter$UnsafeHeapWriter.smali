.class final Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;
.super Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeHeapWriter"
.end annotation


# instance fields
.field private blacklist allocatedBuffer:Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

.field private blacklist buffer:[B

.field private blacklist limit:J

.field private blacklist limitMinusOne:J

.field private blacklist offset:J

.field private blacklist offsetMinusOne:J

.field private blacklist pos:J


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)V
    .registers 4
    .param p1, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .line 1462
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;ILandroid/net/connectivity/com/google/protobuf/BinaryWriter$1;)V

    .line 1463
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1464
    return-void
.end method

.method private blacklist arrayPos()I
    .registers 3

    .line 1483
    iget-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v0, v0

    return v0
.end method

.method static blacklist isSupported()Z
    .registers 1

    .line 1468
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    return v0
.end method

.method private blacklist nextBuffer()V
    .registers 2

    .line 1487
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->newHeapBuffer()Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;)V

    .line 1488
    return-void
.end method

.method private blacklist nextBuffer(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 1491
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->newHeapBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;)V

    .line 1492
    return-void
.end method

.method private blacklist nextBuffer(Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;)V
    .registers 7
    .param p1, "allocatedBuffer"    # Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    .line 1495
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1499
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->finishCurrentBuffer()V

    .line 1500
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1502
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    .line 1503
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 1504
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v0

    .line 1505
    .local v0, "arrayOffset":I
    int-to-long v1, v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limit:J

    .line 1506
    int-to-long v1, v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->position()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    .line 1507
    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    .line 1508
    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limit:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    .line 1509
    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    iput-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1510
    return-void

    .line 1496
    .end local v0    # "arrayOffset":I
    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Allocator returned non-heap buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeVarint32FiveBytes(I)V
    .registers 9
    .param p1, "value"    # I

    .line 1716
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x1c

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1717
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x15

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1718
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0xe

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1719
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x7

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1720
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1721
    return-void
.end method

.method private blacklist writeVarint32FourBytes(I)V
    .registers 9
    .param p1, "value"    # I

    .line 1709
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x15

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1710
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0xe

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1711
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x7

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1712
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1713
    return-void
.end method

.method private blacklist writeVarint32OneByte(I)V
    .registers 7
    .param p1, "value"    # I

    .line 1694
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1695
    return-void
.end method

.method private blacklist writeVarint32ThreeBytes(I)V
    .registers 9
    .param p1, "value"    # I

    .line 1703
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0xe

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1704
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x7

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1705
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1706
    return-void
.end method

.method private blacklist writeVarint32TwoBytes(I)V
    .registers 9
    .param p1, "value"    # I

    .line 1698
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x7

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1699
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1700
    return-void
.end method

.method private blacklist writeVarint64EightBytes(J)V
    .registers 14
    .param p1, "value"    # J

    .line 1809
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x31

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1810
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x2a

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1811
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1812
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1813
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1814
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1815
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1816
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v3, p1, v7

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1817
    return-void
.end method

.method private blacklist writeVarint64FiveBytes(J)V
    .registers 14
    .param p1, "value"    # J

    .line 1782
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1783
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1784
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1785
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1786
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v3, p1, v7

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1787
    return-void
.end method

.method private blacklist writeVarint64FourBytes(J)V
    .registers 14
    .param p1, "value"    # J

    .line 1775
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1776
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1777
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1778
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v3, p1, v7

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1779
    return-void
.end method

.method private blacklist writeVarint64NineBytes(J)V
    .registers 14
    .param p1, "value"    # J

    .line 1820
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1821
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x31

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1822
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x2a

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1823
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1824
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1825
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1826
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1827
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1828
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v3, p1, v7

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1829
    return-void
.end method

.method private blacklist writeVarint64OneByte(J)V
    .registers 8
    .param p1, "value"    # J

    .line 1760
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v3, p1

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1761
    return-void
.end method

.method private blacklist writeVarint64SevenBytes(J)V
    .registers 14
    .param p1, "value"    # J

    .line 1799
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x2a

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1800
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1801
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1802
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1803
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1804
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1805
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v3, p1, v7

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1806
    return-void
.end method

.method private blacklist writeVarint64SixBytes(J)V
    .registers 14
    .param p1, "value"    # J

    .line 1790
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1791
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1792
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1793
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1794
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1795
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v3, p1, v7

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1796
    return-void
.end method

.method private blacklist writeVarint64TenBytes(J)V
    .registers 14
    .param p1, "value"    # J

    .line 1832
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x3f

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1833
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1834
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x31

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1835
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x2a

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1836
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1837
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1838
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1839
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1840
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1841
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v3, p1, v7

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1842
    return-void
.end method

.method private blacklist writeVarint64ThreeBytes(J)V
    .registers 14
    .param p1, "value"    # J

    .line 1769
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v5, p1

    ushr-int/lit8 v5, v5, 0xe

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1770
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1771
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long v3, p1, v7

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1772
    return-void
.end method

.method private blacklist writeVarint64TwoBytes(J)V
    .registers 10
    .param p1, "value"    # J

    .line 1764
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1765
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v3, p1

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1766
    return-void
.end method


# virtual methods
.method blacklist bytesWrittenToCurrentBuffer()I
    .registers 5

    .line 1518
    iget-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    iget-wide v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method blacklist finishCurrentBuffer()V
    .registers 4

    .line 1473
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_28

    .line 1474
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1475
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->position(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    .line 1476
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    .line 1477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1478
    iput-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    .line 1480
    :cond_28
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .registers 3

    .line 1514
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist requireSpace(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1984
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_9

    .line 1985
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(I)V

    .line 1987
    :cond_9
    return-void
.end method

.method blacklist spaceLeft()I
    .registers 5

    .line 1522
    iget-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist write(B)V
    .registers 7
    .param p1, "value"    # B

    .line 1918
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    invoke-static {v0, v1, v2, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1919
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 1957
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1958
    .local v0, "length":I
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1960
    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1961
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1962
    return-void
.end method

.method public blacklist write([BII)V
    .registers 8
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1923
    if-ltz p2, :cond_1c

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1c

    .line 1927
    invoke-virtual {p0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1929
    iget-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1930
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1931
    return-void

    .line 1924
    :cond_1c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v1, p1

    .line 1925
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "value.length=%d, offset=%d, length=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z

    .line 1576
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1577
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->write(B)V

    .line 1578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1579
    return-void
.end method

.method blacklist writeBool(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 1670
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->write(B)V

    .line 1671
    return-void
.end method

.method public blacklist writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 1594
    :try_start_0
    invoke-virtual {p2, p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->writeToReverse(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_15

    .line 1598
    nop

    .line 1600
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1601
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1602
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1603
    return-void

    .line 1595
    :catch_15
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeEndGroup(I)V
    .registers 3
    .param p1, "fieldNumber"    # I

    .line 1646
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1647
    return-void
.end method

.method blacklist writeFixed32(I)V
    .registers 9
    .param p1, "value"    # I

    .line 1846
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1847
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1848
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1849
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1850
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 1548
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1549
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeFixed32(I)V

    .line 1550
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1551
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .line 1569
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1570
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeFixed64(J)V

    .line 1571
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1572
    return-void
.end method

.method blacklist writeFixed64(J)V
    .registers 10
    .param p1, "value"    # J

    .line 1854
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x38

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1855
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1856
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1857
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1858
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1859
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1860
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x8

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1861
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1862
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1627
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1628
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 1629
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1630
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "schema"    # Landroid/net/connectivity/com/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1634
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1635
    invoke-interface {p3, p2, p0}, Landroid/net/connectivity/com/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 1636
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1637
    return-void
.end method

.method blacklist writeInt32(I)V
    .registers 4
    .param p1, "value"    # I

    .line 1651
    if-ltz p1, :cond_6

    .line 1652
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    goto :goto_a

    .line 1654
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    .line 1656
    :goto_a
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 1534
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1535
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeInt32(I)V

    .line 1536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1537
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 1966
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1967
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_1b

    .line 1970
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1971
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1975
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1978
    :cond_1b
    iget-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1979
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1980
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 8
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1935
    if-ltz p2, :cond_31

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_31

    .line 1939
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_1f

    .line 1942
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1943
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->wrap([BII)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1947
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1948
    return-void

    .line 1951
    :cond_1f
    iget-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1952
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1953
    return-void

    .line 1936
    :cond_31
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v1, p1

    .line 1937
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "value.length=%d, offset=%d, length=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeMessage(ILjava/lang/Object;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1607
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1608
    .local v0, "prevBytes":I
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 1609
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1610
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1611
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1612
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1613
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V
    .registers 7
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "schema"    # Landroid/net/connectivity/com/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1617
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1618
    .local v0, "prevBytes":I
    invoke-interface {p3, p2, p0}, Landroid/net/connectivity/com/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 1619
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1620
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1621
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1622
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1623
    return-void
.end method

.method blacklist writeSInt32(I)V
    .registers 3
    .param p1, "value"    # I

    .line 1660
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1661
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 1541
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1542
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeSInt32(I)V

    .line 1543
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1544
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .line 1562
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1563
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeSInt64(J)V

    .line 1564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1565
    return-void
.end method

.method blacklist writeSInt64(J)V
    .registers 5
    .param p1, "value"    # J

    .line 1665
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    .line 1666
    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .registers 3
    .param p1, "fieldNumber"    # I

    .line 1641
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1642
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1583
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1584
    .local v0, "prevBytes":I
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeString(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1586
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1587
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1588
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1589
    return-void
.end method

.method blacklist writeString(Ljava/lang/String;)V
    .registers 15
    .param p1, "in"    # Ljava/lang/String;

    .line 1867
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1870
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1875
    .local v0, "i":I
    :goto_d
    const/16 v1, 0x80

    const-wide/16 v2, 0x1

    if-ltz v0, :cond_29

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":C
    if-ge v4, v1, :cond_29

    .line 1876
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v2, v6, v2

    iput-wide v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte v2, v5

    invoke-static {v1, v6, v7, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1875
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1878
    .end local v5    # "c":C
    :cond_29
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2d

    .line 1880
    return-void

    .line 1882
    :cond_2d
    :goto_2d
    if-ltz v0, :cond_12e

    .line 1883
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1884
    .restart local v5    # "c":C
    if-ge v5, v1, :cond_4b

    iget-wide v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4b

    .line 1885
    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte v9, v5

    invoke-static {v6, v7, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    goto/16 :goto_12b

    .line 1886
    :cond_4b
    const/16 v6, 0x800

    if-ge v5, v6, :cond_78

    iget-wide v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_78

    .line 1887
    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v9, v5, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1888
    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v9, v5, 0x6

    or-int/lit16 v9, v9, 0x3c0

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    goto/16 :goto_12b

    .line 1889
    :cond_78
    const v6, 0xd800

    if-lt v5, v6, :cond_82

    const v6, 0xdfff

    if-ge v6, v5, :cond_bc

    :cond_82
    iget-wide v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    add-long/2addr v8, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_bc

    .line 1892
    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v9, v5, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1893
    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1894
    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v9, v5, 0xc

    or-int/lit16 v9, v9, 0x1e0

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    goto :goto_12b

    .line 1895
    :cond_bc
    iget-wide v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_126

    .line 1899
    if-eqz v0, :cond_11e

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "high":C
    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 1902
    add-int/lit8 v0, v0, -0x1

    .line 1903
    invoke-static {v7, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 1904
    .local v6, "codePoint":I
    iget-object v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v11, v9, v2

    iput-wide v11, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v11, v6, 0x3f

    or-int/2addr v11, v1

    int-to-byte v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1905
    iget-object v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v11, v9, v2

    iput-wide v11, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v11, v6, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v1

    int-to-byte v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1906
    iget-object v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v11, v9, v2

    iput-wide v11, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v11, v6, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v1

    int-to-byte v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1907
    iget-object v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v11, v9, v2

    iput-wide v11, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v11, v6, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1908
    .end local v6    # "codePoint":I
    .end local v7    # "high":C
    goto :goto_12b

    .line 1900
    :cond_11e
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v0, -0x1

    invoke-direct {v1, v2, v0}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    .line 1910
    :cond_126
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1911
    add-int/lit8 v0, v0, 0x1

    .line 1882
    :goto_12b
    add-int/2addr v0, v4

    goto/16 :goto_2d

    .line 1914
    .end local v5    # "c":C
    :cond_12e
    return-void
.end method

.method blacklist writeTag(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I

    .line 1675
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1676
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 1527
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1528
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1530
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .line 1555
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1556
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    .line 1557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1558
    return-void
.end method

.method blacklist writeVarint32(I)V
    .registers 3
    .param p1, "value"    # I

    .line 1680
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 1681
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32OneByte(I)V

    goto :goto_25

    .line 1682
    :cond_8
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_10

    .line 1683
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32TwoBytes(I)V

    goto :goto_25

    .line 1684
    :cond_10
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_19

    .line 1685
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_25

    .line 1686
    :cond_19
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    .line 1687
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32FourBytes(I)V

    goto :goto_25

    .line 1689
    :cond_22
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32FiveBytes(I)V

    .line 1691
    :goto_25
    return-void
.end method

.method blacklist writeVarint64(J)V
    .registers 4
    .param p1, "value"    # J

    .line 1725
    # invokes: Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_32

    goto :goto_30

    .line 1754
    :pswitch_8
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64TenBytes(J)V

    goto :goto_30

    .line 1751
    :pswitch_c
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64NineBytes(J)V

    .line 1752
    goto :goto_30

    .line 1748
    :pswitch_10
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64EightBytes(J)V

    .line 1749
    goto :goto_30

    .line 1745
    :pswitch_14
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64SevenBytes(J)V

    .line 1746
    goto :goto_30

    .line 1742
    :pswitch_18
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64SixBytes(J)V

    .line 1743
    goto :goto_30

    .line 1739
    :pswitch_1c
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64FiveBytes(J)V

    .line 1740
    goto :goto_30

    .line 1736
    :pswitch_20
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64FourBytes(J)V

    .line 1737
    goto :goto_30

    .line 1733
    :pswitch_24
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64ThreeBytes(J)V

    .line 1734
    goto :goto_30

    .line 1730
    :pswitch_28
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64TwoBytes(J)V

    .line 1731
    goto :goto_30

    .line 1727
    :pswitch_2c
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64OneByte(J)V

    .line 1728
    nop

    .line 1757
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method
