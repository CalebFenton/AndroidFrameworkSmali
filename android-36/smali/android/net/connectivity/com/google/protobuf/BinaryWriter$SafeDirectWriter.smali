.class final Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;
.super Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeDirectWriter"
.end annotation


# instance fields
.field private blacklist buffer:Ljava/nio/ByteBuffer;

.field private blacklist limitMinusOne:I

.field private blacklist pos:I


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;I)V
    .registers 4
    .param p1, "alloc"    # Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .line 1997
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/BufferAllocator;ILandroid/net/connectivity/com/google/protobuf/BinaryWriter$1;)V

    .line 1998
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 1999
    return-void
.end method

.method private blacklist bytesWrittenToCurrentBuffer()I
    .registers 3

    .line 2037
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist nextBuffer()V
    .registers 2

    .line 2002
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->newDirectBuffer()Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;)V

    .line 2003
    return-void
.end method

.method private blacklist nextBuffer(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 2006
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->newDirectBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;)V

    .line 2007
    return-void
.end method

.method private blacklist nextBuffer(Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;)V
    .registers 5
    .param p1, "allocatedBuffer"    # Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    .line 2010
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->hasNioBuffer()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2013
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2014
    .local v0, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2018
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->finishCurrentBuffer()V

    .line 2019
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2021
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2022
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2023
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2025
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2027
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    .line 2028
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2029
    return-void

    .line 2015
    :cond_41
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Allocator returned non-direct buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2011
    .end local v0    # "nioBuffer":Ljava/nio/ByteBuffer;
    :cond_49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Allocated buffer does not have NIO buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist spaceLeft()I
    .registers 2

    .line 2041
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist writeVarint32FiveBytes(I)V
    .registers 6
    .param p1, "value"    # I

    .line 2260
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x1c

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2261
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2262
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v3, p1, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2268
    return-void
.end method

.method private blacklist writeVarint32FourBytes(I)V
    .registers 7
    .param p1, "value"    # I

    .line 2249
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2250
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0xfe00000

    and-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x3

    const v3, 0x1fc000

    and-int/2addr v3, p1

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    and-int/lit16 v3, p1, 0x3f80

    or-int/lit16 v3, v3, 0x4000

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2256
    return-void
.end method

.method private blacklist writeVarint32OneByte(I)V
    .registers 5
    .param p1, "value"    # I

    .line 2228
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2229
    return-void
.end method

.method private blacklist writeVarint32ThreeBytes(I)V
    .registers 6
    .param p1, "value"    # I

    .line 2239
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2240
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const v2, 0x1fc000

    and-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v3, p1, 0x3f80

    or-int/lit16 v3, v3, 0x4000

    shl-int/lit8 v3, v3, 0x9

    or-int/2addr v2, v3

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2245
    return-void
.end method

.method private blacklist writeVarint32TwoBytes(I)V
    .registers 6
    .param p1, "value"    # I

    .line 2233
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2234
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, p1, 0x3f80

    shl-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 2235
    return-void
.end method

.method private blacklist writeVarint64EightBytes(J)V
    .registers 12
    .param p1, "value"    # J

    .line 2363
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2364
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-wide/high16 v3, 0xfe000000000000L

    and-long/2addr v3, p1

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    const-wide v5, 0x1fc0000000000L

    and-long/2addr v5, p1

    const-wide/high16 v7, 0x2000000000000L

    or-long/2addr v5, v7

    const/4 v7, 0x6

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide v5, 0x3f800000000L

    and-long/2addr v5, p1

    const-wide v7, 0x40000000000L

    or-long/2addr v5, v7

    const/4 v7, 0x5

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide v5, 0x7f0000000L

    and-long/2addr v5, p1

    const-wide v7, 0x800000000L

    or-long/2addr v5, v7

    const/4 v7, 0x4

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0xfe00000

    and-long/2addr v5, p1

    const-wide/32 v7, 0x10000000

    or-long/2addr v5, v7

    const/4 v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0x1fc000

    and-long/2addr v5, p1

    const-wide/32 v7, 0x200000

    or-long/2addr v5, v7

    const/4 v7, 0x2

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/16 v5, 0x3f80

    and-long/2addr v5, p1

    const-wide/16 v7, 0x4000

    or-long/2addr v5, v7

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2374
    return-void
.end method

.method private blacklist writeVarint64EightBytesWithSign(J)V
    .registers 12
    .param p1, "value"    # J

    .line 2378
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2379
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-wide/high16 v3, 0xfe000000000000L

    and-long/2addr v3, p1

    const-wide/high16 v5, 0x100000000000000L

    or-long/2addr v3, v5

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    const-wide v5, 0x1fc0000000000L

    and-long/2addr v5, p1

    const-wide/high16 v7, 0x2000000000000L

    or-long/2addr v5, v7

    const/4 v7, 0x6

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide v5, 0x3f800000000L

    and-long/2addr v5, p1

    const-wide v7, 0x40000000000L

    or-long/2addr v5, v7

    const/4 v7, 0x5

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide v5, 0x7f0000000L

    and-long/2addr v5, p1

    const-wide v7, 0x800000000L

    or-long/2addr v5, v7

    const/4 v7, 0x4

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0xfe00000

    and-long/2addr v5, p1

    const-wide/32 v7, 0x10000000

    or-long/2addr v5, v7

    const/4 v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0x1fc000

    and-long/2addr v5, p1

    const-wide/32 v7, 0x200000

    or-long/2addr v5, v7

    const/4 v7, 0x2

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/16 v5, 0x3f80

    and-long/2addr v5, p1

    const-wide/16 v7, 0x4000

    or-long/2addr v5, v7

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2389
    return-void
.end method

.method private blacklist writeVarint64FiveBytes(J)V
    .registers 11
    .param p1, "value"    # J

    .line 2324
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2325
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, -0x2

    const-wide v2, 0x7f0000000L

    and-long/2addr v2, p1

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0x1b

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0x1a

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x19

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2332
    return-void
.end method

.method private blacklist writeVarint64FourBytes(J)V
    .registers 4
    .param p1, "value"    # J

    .line 2319
    long-to-int v0, p1

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FourBytes(I)V

    .line 2320
    return-void
.end method

.method private blacklist writeVarint64NineBytes(J)V
    .registers 7
    .param p1, "value"    # J

    .line 2392
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2393
    const-wide v0, 0xffffffffffffffL

    and-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytesWithSign(J)V

    .line 2394
    return-void
.end method

.method private blacklist writeVarint64OneByte(J)V
    .registers 4
    .param p1, "value"    # J

    .line 2307
    long-to-int v0, p1

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32OneByte(I)V

    .line 2308
    return-void
.end method

.method private blacklist writeVarint64SevenBytes(J)V
    .registers 11
    .param p1, "value"    # J

    .line 2349
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x7

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2350
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const-wide v2, 0x1fc0000000000L

    and-long/2addr v2, p1

    const/16 v4, 0xe

    shl-long/2addr v2, v4

    const-wide v4, 0x3f800000000L

    and-long/2addr v4, p1

    const-wide v6, 0x40000000000L

    or-long/2addr v4, v6

    const/16 v6, 0xd

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide v4, 0x7f0000000L

    and-long/2addr v4, p1

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    const/16 v6, 0xc

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0xb

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x9

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2359
    return-void
.end method

.method private blacklist writeVarint64SixBytes(J)V
    .registers 11
    .param p1, "value"    # J

    .line 2336
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2337
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, -0x1

    const-wide v2, 0x3f800000000L

    and-long/2addr v2, p1

    const/16 v4, 0x15

    shl-long/2addr v2, v4

    const-wide v4, 0x7f0000000L

    and-long/2addr v4, p1

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    const/16 v6, 0x14

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0x13

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0x12

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x11

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2345
    return-void
.end method

.method private blacklist writeVarint64TenBytes(J)V
    .registers 9
    .param p1, "value"    # J

    .line 2397
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x3f

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2398
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2399
    const-wide v0, 0xffffffffffffffL

    and-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytesWithSign(J)V

    .line 2400
    return-void
.end method

.method private blacklist writeVarint64ThreeBytes(J)V
    .registers 4
    .param p1, "value"    # J

    .line 2315
    long-to-int v0, p1

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32ThreeBytes(I)V

    .line 2316
    return-void
.end method

.method private blacklist writeVarint64TwoBytes(J)V
    .registers 4
    .param p1, "value"    # J

    .line 2311
    long-to-int v0, p1

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32TwoBytes(I)V

    .line 2312
    return-void
.end method


# virtual methods
.method blacklist finishCurrentBuffer()V
    .registers 3

    .line 2046
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1e

    .line 2047
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 2049
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2050
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2051
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2052
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    .line 2054
    :cond_1e
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .registers 3

    .line 2033
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist requireSpace(I)V
    .registers 3
    .param p1, "size"    # I

    .line 2535
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_9

    .line 2536
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2538
    :cond_9
    return-void
.end method

.method public blacklist write(B)V
    .registers 5
    .param p1, "value"    # B

    .line 2468
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2469
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 2503
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2504
    .local v0, "length":I
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_d

    .line 2505
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2508
    :cond_d
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2509
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2510
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2511
    return-void
.end method

.method public blacklist write([BII)V
    .registers 6
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 2473
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_9

    .line 2474
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2477
    :cond_9
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2478
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2479
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2480
    return-void
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z

    .line 2107
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2108
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->write(B)V

    .line 2109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2110
    return-void
.end method

.method blacklist writeBool(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 2204
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->write(B)V

    .line 2205
    return-void
.end method

.method public blacklist writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 2125
    :try_start_0
    invoke-virtual {p2, p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->writeToReverse(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_15

    .line 2129
    nop

    .line 2131
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2132
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2133
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2134
    return-void

    .line 2126
    :catch_15
    move-exception v0

    .line 2128
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeEndGroup(I)V
    .registers 3
    .param p1, "fieldNumber"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2180
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2181
    return-void
.end method

.method blacklist writeFixed32(I)V
    .registers 4
    .param p1, "value"    # I

    .line 2404
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2405
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2406
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 2079
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2080
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeFixed32(I)V

    .line 2081
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2082
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .line 2100
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2101
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeFixed64(J)V

    .line 2102
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2103
    return-void
.end method

.method blacklist writeFixed64(J)V
    .registers 5
    .param p1, "value"    # J

    .line 2410
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2411
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2412
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2159
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2160
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2161
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2162
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

    .line 2166
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2167
    invoke-interface {p3, p2, p0}, Landroid/net/connectivity/com/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2168
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2169
    return-void
.end method

.method blacklist writeInt32(I)V
    .registers 4
    .param p1, "value"    # I

    .line 2185
    if-ltz p1, :cond_6

    .line 2186
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    goto :goto_a

    .line 2188
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    .line 2190
    :goto_a
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 2065
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2066
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeInt32(I)V

    .line 2067
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2068
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 2515
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2516
    .local v0, "length":I
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_1c

    .line 2519
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 2520
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2524
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 2525
    return-void

    .line 2528
    :cond_1c
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2529
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2530
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2531
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 6
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 2484
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_18

    .line 2487
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 2488
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->wrap([BII)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2492
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 2493
    return-void

    .line 2496
    :cond_18
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2497
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2498
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2499
    return-void
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

    .line 2138
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2139
    .local v0, "prevBytes":I
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2140
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2141
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2142
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2143
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2144
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

    .line 2148
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2149
    .local v0, "prevBytes":I
    invoke-interface {p3, p2, p0}, Landroid/net/connectivity/com/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2150
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2151
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2152
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2153
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2154
    return-void
.end method

.method blacklist writeSInt32(I)V
    .registers 3
    .param p1, "value"    # I

    .line 2194
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2195
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 2072
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2073
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeSInt32(I)V

    .line 2074
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2075
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .line 2093
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2094
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeSInt64(J)V

    .line 2095
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2096
    return-void
.end method

.method blacklist writeSInt64(J)V
    .registers 5
    .param p1, "value"    # J

    .line 2199
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    .line 2200
    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .registers 3
    .param p1, "fieldNumber"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2174
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2175
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 2114
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2115
    .local v0, "prevBytes":I
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeString(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2117
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2118
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2119
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2120
    return-void
.end method

.method blacklist writeString(Ljava/lang/String;)V
    .registers 12
    .param p1, "in"    # Ljava/lang/String;

    .line 2417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2421
    .local v0, "i":I
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2424
    :goto_12
    const/16 v2, 0x80

    if-ltz v0, :cond_29

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v4, v3

    .local v4, "c":C
    if-ge v3, v2, :cond_29

    .line 2425
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/2addr v3, v0

    int-to-byte v5, v4

    invoke-virtual {v2, v3, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2424
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2427
    .end local v4    # "c":C
    :cond_29
    const/4 v3, -0x1

    if-ne v0, v3, :cond_32

    .line 2429
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2430
    return-void

    .line 2432
    :cond_32
    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2433
    :goto_37
    if-ltz v0, :cond_126

    .line 2434
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2435
    .restart local v4    # "c":C
    if-ge v4, v2, :cond_51

    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    if-ltz v5, :cond_51

    .line 2436
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    int-to-byte v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_123

    .line 2437
    :cond_51
    const/16 v5, 0x800

    if-ge v4, v5, :cond_7a

    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    if-lez v5, :cond_7a

    .line 2438
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v7, v4, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2439
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v7, v4, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_123

    .line 2440
    :cond_7a
    const v5, 0xd800

    if-lt v4, v5, :cond_84

    const v5, 0xdfff

    if-ge v5, v4, :cond_b9

    :cond_84
    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    if-le v5, v1, :cond_b9

    .line 2442
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v7, v4, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2443
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2444
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v7, v4, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_123

    .line 2445
    :cond_b9
    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_11e

    .line 2448
    const/4 v5, 0x0

    .line 2449
    .local v5, "high":C
    if-eqz v0, :cond_116

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    invoke-static {v6, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 2452
    add-int/lit8 v0, v0, -0x1

    .line 2453
    invoke-static {v5, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 2454
    .local v6, "codePoint":I
    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v9, v6, 0x3f

    or-int/2addr v9, v2

    int-to-byte v9, v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2455
    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v2

    int-to-byte v9, v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2456
    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v2

    int-to-byte v9, v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2457
    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v8, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v9, v6, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2458
    .end local v5    # "high":C
    .end local v6    # "codePoint":I
    goto :goto_123

    .line 2450
    .restart local v5    # "high":C
    :cond_116
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v0, -0x1

    invoke-direct {v1, v2, v0}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    .line 2460
    .end local v5    # "high":C
    :cond_11e
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2461
    add-int/lit8 v0, v0, 0x1

    .line 2433
    :goto_123
    add-int/2addr v0, v3

    goto/16 :goto_37

    .line 2464
    .end local v4    # "c":C
    :cond_126
    return-void
.end method

.method blacklist writeTag(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I

    .line 2209
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2210
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 2058
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2059
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2060
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2061
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .line 2086
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2087
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    .line 2088
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2089
    return-void
.end method

.method blacklist writeVarint32(I)V
    .registers 3
    .param p1, "value"    # I

    .line 2214
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 2215
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32OneByte(I)V

    goto :goto_25

    .line 2216
    :cond_8
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_10

    .line 2217
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32TwoBytes(I)V

    goto :goto_25

    .line 2218
    :cond_10
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_19

    .line 2219
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_25

    .line 2220
    :cond_19
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    .line 2221
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FourBytes(I)V

    goto :goto_25

    .line 2223
    :cond_22
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FiveBytes(I)V

    .line 2225
    :goto_25
    return-void
.end method

.method blacklist writeVarint64(J)V
    .registers 4
    .param p1, "value"    # J

    .line 2272
    # invokes: Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_32

    goto :goto_30

    .line 2301
    :pswitch_8
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64TenBytes(J)V

    goto :goto_30

    .line 2298
    :pswitch_c
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64NineBytes(J)V

    .line 2299
    goto :goto_30

    .line 2295
    :pswitch_10
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytes(J)V

    .line 2296
    goto :goto_30

    .line 2292
    :pswitch_14
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64SevenBytes(J)V

    .line 2293
    goto :goto_30

    .line 2289
    :pswitch_18
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64SixBytes(J)V

    .line 2290
    goto :goto_30

    .line 2286
    :pswitch_1c
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64FiveBytes(J)V

    .line 2287
    goto :goto_30

    .line 2283
    :pswitch_20
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64FourBytes(J)V

    .line 2284
    goto :goto_30

    .line 2280
    :pswitch_24
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64ThreeBytes(J)V

    .line 2281
    goto :goto_30

    .line 2277
    :pswitch_28
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64TwoBytes(J)V

    .line 2278
    goto :goto_30

    .line 2274
    :pswitch_2c
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64OneByte(J)V

    .line 2275
    nop

    .line 2304
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
