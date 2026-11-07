.class final Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/android/framework/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final blacklist address:J

.field private final blacklist buffer:Ljava/nio/ByteBuffer;

.field private blacklist bufferSizeAfterLimit:I

.field private blacklist currentLimit:I

.field private blacklist enableAliasing:Z

.field private final blacklist immutable:Z

.field private blacklist lastTag:I

.field private blacklist limit:J

.field private blacklist pos:J

.field private blacklist startPos:J


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "immutable"    # Z

    .line 1328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 1322
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1329
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1330
    invoke-static {p1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    .line 1331
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1332
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1333
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1334
    iput-boolean p2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    .line 1335
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;ZLcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/android/framework/protobuf/CodedInputStream$1;

    .line 1287
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private blacklist bufferPos(J)I
    .registers 5
    .param p1, "pos"    # J

    .line 2010
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method static blacklist isSupported()Z
    .registers 1

    .line 1325
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 6

    .line 1994
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1995
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1996
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-le v0, v1, :cond_21

    .line 1998
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    .line 1999
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    goto :goto_24

    .line 2001
    :cond_21
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    .line 2003
    :goto_24
    return-void
.end method

.method private blacklist remaining()I
    .registers 5

    .line 2006
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private blacklist skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1755
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_c

    .line 1756
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintFastPath()V

    goto :goto_f

    .line 1758
    :cond_c
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintSlowPath()V

    .line 1760
    :goto_f
    return-void
.end method

.method private blacklist skipRawVarintFastPath()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 1764
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_13

    .line 1765
    return-void

    .line 1763
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1768
    .end local v0    # "i":I
    :cond_16
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1773
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 1774
    return-void

    .line 1772
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1777
    .end local v0    # "i":I
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist slice(JJ)Ljava/nio/ByteBuffer;
    .registers 10
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2014
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2015
    .local v0, "prevPos":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 2018
    .local v1, "prevLimit":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 2020
    .local v2, "asBuffer":Ljava/nio/Buffer;
    :try_start_e
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2021
    invoke-direct {p0, p3, p4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 2022
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_22} :catch_2b
    .catchall {:try_start_e .. :try_end_22} :catchall_29

    .line 2028
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2029
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 2022
    return-object v3

    .line 2028
    :catchall_29
    move-exception v3

    goto :goto_35

    .line 2023
    :catch_2b
    move-exception v3

    .line 2024
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    .line 2025
    .local v4, "ex":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v4, v3}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2026
    nop

    .end local v0    # "prevPos":I
    .end local v1    # "prevLimit":I
    .end local v2    # "asBuffer":Ljava/nio/Buffer;
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
    .end local p1    # "begin":J
    .end local p3    # "end":J
    throw v4
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_29

    .line 2028
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "ex":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "prevPos":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "asBuffer":Ljava/nio/Buffer;
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
    .restart local p1    # "begin":J
    .restart local p3    # "end":J
    :goto_35
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2029
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 2030
    throw v3
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1355
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 1358
    return-void

    .line 1356
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist enableAliasing(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1901
    iput-boolean p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    .line 1902
    return-void
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 1934
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 1935
    const/4 v0, -0x1

    return v0

    .line 1938
    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getLastTag()I
    .registers 2

    .line 1362
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 5

    .line 1948
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist isAtEnd()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1943
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist popLimit(I)V
    .registers 2
    .param p1, "oldLimit"    # I

    .line 1928
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1929
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1930
    return-void
.end method

.method public blacklist pushLimit(I)I
    .registers 4
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1911
    if-ltz p1, :cond_16

    .line 1914
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 1915
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1916
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_11

    .line 1919
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1921
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1923
    return v0

    .line 1917
    :cond_11
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1912
    .end local v0    # "oldLimit":I
    :cond_16
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readBool()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1503
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist readByteArray()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1647
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1652
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1653
    .local v0, "size":I
    if-lez v0, :cond_3a

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3a

    .line 1657
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_25

    .line 1658
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1659
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1660
    return-object v1

    .line 1663
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_25
    new-array v6, v0, [B

    .line 1664
    .local v6, "bytes":[B
    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v7, 0x0

    int-to-long v9, v0

    invoke-static/range {v4 .. v10}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1665
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1666
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 1671
    .end local v6    # "bytes":[B
    :cond_3a
    if-nez v0, :cond_3f

    .line 1672
    sget-object v1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 1674
    :cond_3f
    if-gez v0, :cond_46

    .line 1675
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1677
    :cond_46
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1621
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1622
    .local v0, "size":I
    if-lez v0, :cond_3e

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3e

    .line 1623
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_29

    .line 1624
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1625
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1626
    invoke-static {v1}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 1629
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_29
    new-array v5, v0, [B

    .line 1630
    .local v5, "bytes":[B
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v6, 0x0

    int-to-long v8, v0

    invoke-static/range {v3 .. v9}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1631
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1632
    invoke-static {v5}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 1636
    .end local v5    # "bytes":[B
    :cond_3e
    if-nez v0, :cond_43

    .line 1637
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    .line 1639
    :cond_43
    if-gez v0, :cond_4a

    .line 1640
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1642
    :cond_4a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1468
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1687
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1473
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(I",
            "Lcom/android/framework/protobuf/Parser<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1569
    .local p2, "parser":Lcom/android/framework/protobuf/Parser;, "Lcom/android/framework/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1570
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1571
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    .line 1572
    .local v0, "result":Lcom/android/framework/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1573
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1574
    return-object v0
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/android/framework/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1555
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1556
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1557
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 1558
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1559
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1560
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1488
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readMessage(Lcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 7
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(",
            "Lcom/android/framework/protobuf/Parser<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1605
    .local p1, "parser":Lcom/android/framework/protobuf/Parser;, "Lcom/android/framework/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1606
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1607
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    .line 1608
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1609
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    .line 1610
    .local v2, "result":Lcom/android/framework/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1611
    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1612
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getBytesUntilLimit()I

    move-result v3

    if-nez v3, :cond_2b

    .line 1615
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1616
    return-object v2

    .line 1613
    :cond_2b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public blacklist readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 6
    .param p1, "builder"    # Lcom/android/framework/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1588
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1589
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1590
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    .line 1591
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1592
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 1593
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1594
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1595
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getBytesUntilLimit()I

    move-result v2

    if-nez v2, :cond_28

    .line 1598
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1599
    return-void

    .line 1596
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readRawByte()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1953
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 1956
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0

    .line 1954
    :cond_14
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 9
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1961
    if-ltz p1, :cond_1e

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_1e

    .line 1962
    new-array v0, p1, [B

    .line 1963
    .local v0, "bytes":[B
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1964
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1965
    return-object v0

    .line 1968
    .end local v0    # "bytes":[B
    :cond_1e
    if-gtz p1, :cond_2a

    .line 1969
    if-nez p1, :cond_25

    .line 1970
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 1972
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1976
    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawLittleEndian32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1869
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_39

    .line 1873
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1874
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 1875
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 1876
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    .line 1877
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 1874
    return v2

    .line 1870
    :cond_39
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1882
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1884
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_72

    .line 1888
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1889
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    .line 1890
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 1891
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    .line 1892
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    .line 1893
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    .line 1894
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 1895
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v6, v0

    .line 1896
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 1889
    return-wide v2

    .line 1885
    :cond_72
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readRawVarint32()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1717
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1719
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_a

    .line 1720
    goto/16 :goto_8d

    .line 1724
    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .end local v0    # "tempPos":J
    .local v4, "tempPos":J
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    .local v1, "x":I
    if-ltz v0, :cond_18

    .line 1725
    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1726
    return v1

    .line 1727
    :cond_18
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v0, v6, v8

    if-gez v0, :cond_23

    .line 1728
    goto/16 :goto_8d

    .line 1729
    :cond_23
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_33

    .line 1730
    xor-int/lit8 v0, v1, -0x80

    .end local v1    # "x":I
    .local v0, "x":I
    goto/16 :goto_a1

    .line 1731
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_33
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_44

    .line 1732
    xor-int/lit16 v0, v1, 0x3f80

    move-wide v6, v4

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto/16 :goto_a1

    .line 1733
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_44
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_55

    .line 1734
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto :goto_a1

    .line 1736
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_55
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    .line 1737
    .local v0, "y":I
    shl-int/lit8 v6, v0, 0x1c

    xor-int/2addr v1, v6

    .line 1738
    const v6, 0xfe03f80

    xor-int/2addr v1, v6

    .line 1739
    if-gez v0, :cond_9f

    add-long v6, v4, v2

    .line 1740
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_9d

    add-long v4, v6, v2

    .line 1741
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_9a

    add-long v6, v4, v2

    .line 1742
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_98

    add-long v4, v6, v2

    .line 1743
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_95

    add-long v6, v4, v2

    .line 1744
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-gez v2, :cond_93

    .line 1745
    nop

    .line 1751
    .end local v0    # "y":I
    .end local v1    # "x":I
    .end local v6    # "tempPos":J
    :goto_8d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1744
    .restart local v0    # "y":I
    .restart local v1    # "x":I
    .restart local v6    # "tempPos":J
    :cond_93
    move v0, v1

    goto :goto_a1

    .line 1743
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_95
    move v0, v1

    move-wide v6, v4

    goto :goto_a1

    .line 1742
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    :cond_98
    move v0, v1

    goto :goto_a1

    .line 1741
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_9a
    move v0, v1

    move-wide v6, v4

    goto :goto_a1

    .line 1740
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    :cond_9d
    move v0, v1

    goto :goto_a1

    .line 1739
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_9f
    move v0, v1

    move-wide v6, v4

    .line 1748
    .end local v1    # "x":I
    .end local v4    # "tempPos":J
    .local v0, "x":I
    .restart local v6    # "tempPos":J
    :goto_a1
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1749
    return v0
.end method

.method public blacklist readRawVarint64()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1795
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1797
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_a

    .line 1798
    goto/16 :goto_dd

    .line 1803
    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .end local v0    # "tempPos":J
    .local v4, "tempPos":J
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    .local v1, "y":I
    if-ltz v0, :cond_19

    .line 1804
    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1805
    int-to-long v2, v1

    return-wide v2

    .line 1806
    :cond_19
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v0, v6, v8

    if-gez v0, :cond_24

    .line 1807
    goto/16 :goto_dd

    .line 1808
    :cond_24
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_35

    .line 1809
    xor-int/lit8 v0, v1, -0x80

    int-to-long v2, v0

    .local v2, "x":J
    goto/16 :goto_e6

    .line 1810
    .end local v2    # "x":J
    :cond_35
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_47

    .line 1811
    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move-wide v6, v4

    .restart local v2    # "x":J
    goto/16 :goto_e6

    .line 1812
    .end local v2    # "x":J
    :cond_47
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_5a

    .line 1813
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v2, v0

    .restart local v2    # "x":J
    goto/16 :goto_e6

    .line 1814
    .end local v2    # "x":J
    :cond_5a
    int-to-long v4, v1

    add-long v8, v6, v2

    .end local v6    # "tempPos":J
    .local v8, "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-ltz v0, :cond_74

    .line 1815
    const-wide/32 v2, 0xfe03f80

    xor-long/2addr v2, v6

    move-wide v6, v8

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto/16 :goto_e6

    .line 1816
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_74
    add-long v4, v8, v2

    .end local v8    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x23

    shl-long/2addr v8, v0

    xor-long/2addr v8, v6

    move-wide v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_8c

    .line 1817
    const-wide v2, -0x7f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_e6

    .line 1818
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_8c
    add-long v8, v4, v2

    .end local v4    # "tempPos":J
    .restart local v8    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v10

    if-ltz v0, :cond_a4

    .line 1819
    const-wide v2, 0x3f80fe03f80L

    xor-long/2addr v2, v6

    move-wide v6, v8

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_e6

    .line 1820
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_a4
    add-long v4, v8, v2

    .end local v8    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x31

    shl-long/2addr v8, v0

    xor-long/2addr v8, v6

    move-wide v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_bc

    .line 1821
    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_e6

    .line 1830
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_bc
    add-long v8, v4, v2

    .end local v4    # "tempPos":J
    .restart local v8    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 1831
    .end local v6    # "x":J
    .local v4, "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 1840
    cmp-long v0, v4, v10

    if-gez v0, :cond_e4

    .line 1841
    add-long v6, v8, v2

    .end local v8    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_e2

    .line 1842
    nop

    .line 1849
    .end local v1    # "y":I
    .end local v4    # "x":J
    .end local v6    # "tempPos":J
    :goto_dd
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 1841
    .restart local v1    # "y":I
    .restart local v4    # "x":J
    .restart local v6    # "tempPos":J
    :cond_e2
    move-wide v2, v4

    goto :goto_e6

    .line 1840
    .end local v6    # "tempPos":J
    .restart local v8    # "tempPos":J
    :cond_e4
    move-wide v2, v4

    move-wide v6, v8

    .line 1846
    .end local v4    # "x":J
    .end local v8    # "tempPos":J
    .restart local v2    # "x":J
    .restart local v6    # "tempPos":J
    :goto_e6
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1847
    return-wide v2
.end method

.method blacklist readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1854
    const-wide/16 v0, 0x0

    .line 1855
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1856
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v3

    .line 1857
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 1858
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    .line 1859
    return-wide v0

    .line 1855
    .end local v3    # "b":B
    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 1862
    .end local v2    # "shift":I
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1692
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1697
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1702
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public blacklist readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1707
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1508
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1509
    .local v0, "size":I
    if-lez v0, :cond_24

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_24

    .line 1514
    new-array v4, v0, [B

    .line 1515
    .local v4, "bytes":[B
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1516
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1517
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1518
    return-object v1

    .line 1521
    .end local v1    # "result":Ljava/lang/String;
    .end local v4    # "bytes":[B
    :cond_24
    if-nez v0, :cond_29

    .line 1522
    const-string v1, ""

    return-object v1

    .line 1524
    :cond_29
    if-gez v0, :cond_30

    .line 1525
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1527
    :cond_30
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1532
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1533
    .local v0, "size":I
    if-lez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1f

    .line 1534
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v1

    .line 1535
    .local v1, "bufferPos":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "result":Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1537
    return-object v2

    .line 1540
    .end local v1    # "bufferPos":I
    .end local v2    # "result":Ljava/lang/String;
    :cond_1f
    if-nez v0, :cond_24

    .line 1541
    const-string v1, ""

    return-object v1

    .line 1543
    :cond_24
    if-gtz v0, :cond_2b

    .line 1544
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1546
    :cond_2b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1339
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1340
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1341
    return v0

    .line 1344
    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1345
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1350
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    .line 1348
    :cond_1b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1682
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1478
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUnknownGroup(ILcom/android/framework/protobuf/MessageLite$Builder;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/android/framework/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1581
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 1582
    return-void
.end method

.method public blacklist resetSizeCounter()V
    .registers 3

    .line 1906
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1907
    return-void
.end method

.method public blacklist skipField(I)Z
    .registers 5
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1367
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 1388
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1385
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1386
    return v2

    .line 1383
    :pswitch_12
    const/4 v0, 0x0

    return v0

    .line 1378
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage()V

    .line 1379
    nop

    .line 1380
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 1379
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1381
    return v2

    .line 1375
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1376
    return v2

    .line 1372
    :pswitch_2c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1373
    return v2

    .line 1369
    :pswitch_32
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarint()V

    .line 1370
    return v2

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2c
        :pswitch_24
        :pswitch_14
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public blacklist skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z
    .registers 7
    .param p1, "tag"    # I
    .param p2, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1394
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    .line 1439
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1433
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 1434
    .local v0, "value":I
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1435
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 1436
    return v1

    .line 1429
    .end local v0    # "value":I
    :pswitch_18
    const/4 v0, 0x0

    return v0

    .line 1418
    :pswitch_1a
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1419
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 1420
    nop

    .line 1422
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 1421
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 1423
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1424
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1425
    return v1

    .line 1411
    .end local v0    # "endtag":I
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 1412
    .local v0, "value":Lcom/android/framework/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1413
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 1414
    return v1

    .line 1404
    .end local v0    # "value":Lcom/android/framework/protobuf/ByteString;
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 1405
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1406
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 1407
    return v1

    .line 1397
    .end local v2    # "value":J
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readInt64()J

    move-result-wide v2

    .line 1398
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1399
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 1400
    return v1

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3c
        :pswitch_31
        :pswitch_1a
        :pswitch_18
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist skipMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1446
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    .line 1447
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 1450
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 1448
    .restart local v0    # "tag":I
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    .line 1457
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 1460
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 1458
    .restart local v0    # "tag":I
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist skipRawBytes(I)V
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1981
    if-ltz p1, :cond_f

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_f

    .line 1983
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1984
    return-void

    .line 1987
    :cond_f
    if-gez p1, :cond_16

    .line 1988
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1990
    :cond_16
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method
