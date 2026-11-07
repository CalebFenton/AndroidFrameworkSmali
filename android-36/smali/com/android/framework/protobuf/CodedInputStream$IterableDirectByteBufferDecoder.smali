.class final Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;
.super Lcom/android/framework/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IterableDirectByteBufferDecoder"
.end annotation


# instance fields
.field private blacklist bufferSizeAfterCurrentLimit:I

.field private blacklist currentAddress:J

.field private blacklist currentByteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist currentByteBufferLimit:J

.field private blacklist currentByteBufferPos:J

.field private blacklist currentByteBufferStartPos:J

.field private blacklist currentLimit:I

.field private blacklist enableAliasing:Z

.field private final blacklist immutable:Z

.field private final blacklist input:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist lastTag:I

.field private blacklist startOffset:I

.field private blacklist totalBufferSize:I

.field private blacklist totalBytesRead:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Iterable;IZ)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "immutableFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;IZ)V"
        }
    .end annotation

    .line 3189
    .local p1, "inputBufs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 3162
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3190
    iput p2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    .line 3191
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->input:Ljava/lang/Iterable;

    .line 3192
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->input:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    .line 3193
    iput-boolean p3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    .line 3194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    .line 3195
    if-nez p2, :cond_2d

    .line 3196
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3198
    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3199
    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3200
    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    goto :goto_30

    .line 3202
    :cond_2d
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->tryGetNextByteBuffer()V

    .line 3204
    :goto_30
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Iterable;IZLcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/Iterable;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/android/framework/protobuf/CodedInputStream$1;

    .line 3140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;-><init>(Ljava/lang/Iterable;IZ)V

    return-void
.end method

.method private blacklist currentRemaining()J
    .registers 5

    .line 3961
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getNextByteBuffer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3208
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3211
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->tryGetNextByteBuffer()V

    .line 3212
    return-void

    .line 3209
    :cond_c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readRawBytesTo([BII)V
    .registers 13
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3884
    if-ltz p3, :cond_35

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_35

    .line 3885
    move v0, p3

    .line 3886
    .local v0, "l":I
    :goto_9
    if-lez v0, :cond_34

    .line 3887
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    .line 3888
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3890
    :cond_18
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3891
    .local v1, "bytesToCopy":I
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-int v4, p3, v0

    add-int/2addr v4, p2

    int-to-long v5, v4

    int-to-long v7, v1

    move-object v4, p1

    .end local p1    # "bytes":[B
    .local v4, "bytes":[B
    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3892
    sub-int/2addr v0, v1

    .line 3893
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v1

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3894
    .end local v1    # "bytesToCopy":I
    goto :goto_9

    .line 3895
    .end local v4    # "bytes":[B
    .restart local p1    # "bytes":[B
    :cond_34
    return-void

    .line 3884
    .end local v0    # "l":I
    :cond_35
    move-object v4, p1

    .line 3898
    .end local p1    # "bytes":[B
    .restart local v4    # "bytes":[B
    if-gtz p3, :cond_40

    .line 3899
    if-nez p3, :cond_3b

    .line 3900
    return-void

    .line 3902
    :cond_3b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3905
    :cond_40
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 4

    .line 3808
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    .line 3809
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    sub-int/2addr v0, v1

    .line 3810
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    if-le v0, v1, :cond_1e

    .line 3812
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    .line 3813
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    goto :goto_21

    .line 3815
    :cond_1e
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    .line 3817
    :goto_21
    return-void
.end method

.method private blacklist remaining()I
    .registers 5

    .line 3951
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v0, v2

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

    .line 3937
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 3938
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 3939
    return-void

    .line 3937
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3942
    .end local v0    # "i":I
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist slice(II)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3965
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 3966
    .local v0, "prevPos":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3969
    .local v1, "prevLimit":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3971
    .local v2, "asBuffer":Ljava/nio/Buffer;
    :try_start_e
    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3972
    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 3973
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1a} :catch_23
    .catchall {:try_start_e .. :try_end_1a} :catchall_21

    .line 3977
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3978
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 3973
    return-object v3

    .line 3977
    :catchall_21
    move-exception v3

    goto :goto_29

    .line 3974
    :catch_23
    move-exception v3

    .line 3975
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_24
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    .end local v0    # "prevPos":I
    .end local v1    # "prevLimit":I
    .end local v2    # "asBuffer":Ljava/nio/Buffer;
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;
    .end local p1    # "begin":I
    .end local p2    # "end":I
    throw v4
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 3977
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "prevPos":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "asBuffer":Ljava/nio/Buffer;
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;
    .restart local p1    # "begin":I
    .restart local p2    # "end":I
    :goto_29
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3978
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 3979
    throw v3
.end method

.method private blacklist tryGetNextByteBuffer()V
    .registers 6

    .line 3215
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3216
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    .line 3217
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3218
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3219
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3220
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    .line 3221
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3222
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3223
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3224
    return-void
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

    .line 3244
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 3247
    return-void

    .line 3245
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist enableAliasing(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 3782
    iput-boolean p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    .line 3783
    return-void
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 3827
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 3828
    const/4 v0, -0x1

    return v0

    .line 3831
    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getLastTag()I
    .registers 2

    .line 3251
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 5

    .line 3841
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

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

    .line 3836
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist popLimit(I)V
    .registers 2
    .param p1, "oldLimit"    # I

    .line 3821
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3822
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3823
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

    .line 3792
    if-ltz p1, :cond_16

    .line 3795
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 3796
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3797
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_11

    .line 3800
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3802
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3804
    return v0

    .line 3798
    :cond_11
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3793
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

    .line 3391
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

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

    .line 3562
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3567
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3568
    .local v0, "size":I
    if-lez v0, :cond_45

    int-to-long v1, v0

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_45

    .line 3569
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-nez v1, :cond_30

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_30

    .line 3570
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3571
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 3575
    :cond_30
    new-array v4, v0, [B

    .line 3576
    .local v4, "bytes":[B
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3577
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v0

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3578
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 3580
    .end local v4    # "bytes":[B
    :cond_45
    if-lez v0, :cond_58

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_58

    .line 3581
    new-array v1, v0, [B

    .line 3582
    .local v1, "temp":[B
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3583
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 3586
    .end local v1    # "temp":[B
    :cond_58
    if-nez v0, :cond_5d

    .line 3587
    sget-object v1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 3589
    :cond_5d
    if-gez v0, :cond_64

    .line 3590
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3592
    :cond_64
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3516
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3517
    .local v0, "size":I
    if-lez v0, :cond_44

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_44

    .line 3518
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_2f

    .line 3519
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 3520
    .local v1, "idx":I
    add-int v2, v1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    .line 3521
    .local v2, "result":Lcom/android/framework/protobuf/ByteString;
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3522
    return-object v2

    .line 3524
    .end local v1    # "idx":I
    .end local v2    # "result":Lcom/android/framework/protobuf/ByteString;
    :cond_2f
    new-array v7, v0, [B

    .line 3525
    .local v7, "bytes":[B
    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v8, 0x0

    int-to-long v10, v0

    invoke-static/range {v5 .. v11}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3526
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3527
    invoke-static {v7}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 3529
    .end local v7    # "bytes":[B
    :cond_44
    if-lez v0, :cond_9d

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_9d

    .line 3530
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-eqz v1, :cond_92

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_92

    .line 3531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3532
    .local v1, "byteStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/framework/protobuf/ByteString;>;"
    move v2, v0

    .line 3533
    .local v2, "l":I
    :goto_5a
    if-lez v2, :cond_8d

    .line 3534
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_69

    .line 3535
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3537
    :cond_69
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3538
    .local v3, "bytesToCopy":I
    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 3539
    .local v4, "idx":I
    add-int v5, v4, v3

    invoke-direct {p0, v4, v5}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3540
    sub-int/2addr v2, v3

    .line 3541
    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3542
    .end local v3    # "bytesToCopy":I
    .end local v4    # "idx":I
    goto :goto_5a

    .line 3543
    :cond_8d
    invoke-static {v1}, Lcom/android/framework/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    return-object v3

    .line 3545
    .end local v1    # "byteStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/framework/protobuf/ByteString;>;"
    .end local v2    # "l":I
    :cond_92
    new-array v1, v0, [B

    .line 3546
    .local v1, "temp":[B
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3547
    invoke-static {v1}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 3551
    .end local v1    # "temp":[B
    :cond_9d
    if-nez v0, :cond_a2

    .line 3552
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    .line 3554
    :cond_a2
    if-gez v0, :cond_a9

    .line 3555
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3557
    :cond_a9
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

    .line 3356
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

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

    .line 3602
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

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

    .line 3386
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

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

    .line 3381
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

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

    .line 3361
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

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

    .line 3464
    .local p2, "parser":Lcom/android/framework/protobuf/Parser;, "Lcom/android/framework/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkRecursionLimit()V

    .line 3465
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3466
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    .line 3467
    .local v0, "result":Lcom/android/framework/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3468
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3469
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

    .line 3450
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkRecursionLimit()V

    .line 3451
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3452
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 3453
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3454
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3455
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3376
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

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

    .line 3371
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

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

    .line 3500
    .local p1, "parser":Lcom/android/framework/protobuf/Parser;, "Lcom/android/framework/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3501
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkRecursionLimit()V

    .line 3502
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->pushLimit(I)I

    move-result v1

    .line 3503
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3504
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    .line 3505
    .local v2, "result":Lcom/android/framework/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3506
    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3507
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getBytesUntilLimit()I

    move-result v3

    if-nez v3, :cond_2b

    .line 3510
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->popLimit(I)V

    .line 3511
    return-object v2

    .line 3508
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

    .line 3483
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3484
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkRecursionLimit()V

    .line 3485
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->pushLimit(I)I

    move-result v1

    .line 3486
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3487
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 3488
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3489
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3490
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getBytesUntilLimit()I

    move-result v2

    if-nez v2, :cond_28

    .line 3493
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->popLimit(I)V

    .line 3494
    return-void

    .line 3491
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

    .line 3847
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 3848
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3850
    :cond_d
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 10
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3855
    if-ltz p1, :cond_1c

    int-to-long v0, p1

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1c

    .line 3856
    new-array v3, p1, [B

    .line 3857
    .local v3, "bytes":[B
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v4, 0x0

    int-to-long v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3858
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3859
    return-object v3

    .line 3861
    .end local v3    # "bytes":[B
    :cond_1c
    if-ltz p1, :cond_2b

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_2b

    .line 3862
    new-array v0, p1, [B

    .line 3863
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3864
    return-object v0

    .line 3867
    .end local v0    # "bytes":[B
    :cond_2b
    if-gtz p1, :cond_37

    .line 3868
    if-nez p1, :cond_32

    .line 3869
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 3871
    :cond_32
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3875
    :cond_37
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

    .line 3742
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3c

    .line 3743
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3744
    .local v0, "tempPos":J
    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3745
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 3746
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 3747
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    .line 3748
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 3745
    return v2

    .line 3750
    .end local v0    # "tempPos":J
    :cond_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3751
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3752
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 3753
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 3750
    return v0
.end method

.method public blacklist readRawLittleEndian64()J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3758
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    const/16 v5, 0x30

    const/16 v6, 0x28

    const/16 v7, 0x20

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/16 v10, 0x8

    const-wide/16 v11, 0xff

    if-ltz v1, :cond_7c

    .line 3759
    iget-wide v13, v0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3760
    .local v13, "tempPos":J
    move-wide v15, v3

    const/16 v1, 0x38

    iget-wide v2, v0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v2, v15

    iput-wide v2, v0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3761
    invoke-static {v13, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v11

    const-wide/16 v15, 0x1

    add-long/2addr v15, v13

    .line 3762
    invoke-static/range {v15 .. v16}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    move v15, v1

    move-wide/from16 v16, v2

    int-to-long v1, v4

    and-long/2addr v1, v11

    shl-long/2addr v1, v10

    or-long v1, v16, v1

    const-wide/16 v3, 0x2

    add-long/2addr v3, v13

    .line 3763
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v9

    or-long/2addr v1, v3

    const-wide/16 v3, 0x3

    add-long/2addr v3, v13

    .line 3764
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v8

    or-long/2addr v1, v3

    const-wide/16 v3, 0x4

    add-long/2addr v3, v13

    .line 3765
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    const-wide/16 v3, 0x5

    add-long/2addr v3, v13

    .line 3766
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v6

    or-long/2addr v1, v3

    const-wide/16 v3, 0x6

    add-long/2addr v3, v13

    .line 3767
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const-wide/16 v3, 0x7

    add-long/2addr v3, v13

    .line 3768
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v15

    or-long/2addr v1, v3

    .line 3761
    return-wide v1

    .line 3770
    .end local v13    # "tempPos":J
    :cond_7c
    const/16 v15, 0x38

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v11

    .line 3771
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v10

    or-long/2addr v1, v3

    .line 3772
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v9

    or-long/2addr v1, v3

    .line 3773
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v8

    or-long/2addr v1, v3

    .line 3774
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    .line 3775
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v6

    or-long/2addr v1, v3

    .line 3776
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 3777
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v15

    or-long/2addr v1, v3

    .line 3770
    return-wide v1
.end method

.method public blacklist readRawVarint32()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3629
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3631
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 3632
    goto/16 :goto_94

    .line 3636
    :cond_c
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .end local v0    # "tempPos":J
    .local v4, "tempPos":J
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    .local v1, "x":I
    if-ltz v0, :cond_1d

    .line 3637
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3638
    return v1

    .line 3639
    :cond_1d
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v0, v6, v8

    if-gez v0, :cond_2a

    .line 3640
    goto/16 :goto_94

    .line 3641
    :cond_2a
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_3a

    .line 3642
    xor-int/lit8 v0, v1, -0x80

    .end local v1    # "x":I
    .local v0, "x":I
    goto/16 :goto_a8

    .line 3643
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_3a
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_4b

    .line 3644
    xor-int/lit16 v0, v1, 0x3f80

    move-wide v6, v4

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto/16 :goto_a8

    .line 3645
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_4b
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_5c

    .line 3646
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto :goto_a8

    .line 3648
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_5c
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    .line 3649
    .local v0, "y":I
    shl-int/lit8 v6, v0, 0x1c

    xor-int/2addr v1, v6

    .line 3650
    const v6, 0xfe03f80

    xor-int/2addr v1, v6

    .line 3651
    if-gez v0, :cond_a6

    add-long v6, v4, v2

    .line 3652
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_a4

    add-long v4, v6, v2

    .line 3653
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_a1

    add-long v6, v4, v2

    .line 3654
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_9f

    add-long v4, v6, v2

    .line 3655
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_9c

    add-long v6, v4, v2

    .line 3656
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-gez v2, :cond_9a

    .line 3657
    nop

    .line 3663
    .end local v0    # "y":I
    .end local v1    # "x":I
    .end local v6    # "tempPos":J
    :goto_94
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 3656
    .restart local v0    # "y":I
    .restart local v1    # "x":I
    .restart local v6    # "tempPos":J
    :cond_9a
    move v0, v1

    goto :goto_a8

    .line 3655
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_9c
    move v0, v1

    move-wide v6, v4

    goto :goto_a8

    .line 3654
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    :cond_9f
    move v0, v1

    goto :goto_a8

    .line 3653
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_a1
    move v0, v1

    move-wide v6, v4

    goto :goto_a8

    .line 3652
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    :cond_a4
    move v0, v1

    goto :goto_a8

    .line 3651
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_a6
    move v0, v1

    move-wide v6, v4

    .line 3660
    .end local v1    # "x":I
    .end local v4    # "tempPos":J
    .local v0, "x":I
    .restart local v6    # "tempPos":J
    :goto_a8
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3661
    return v0
.end method

.method public blacklist readRawVarint64()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3670
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3672
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 3673
    goto/16 :goto_e4

    .line 3678
    :cond_c
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .end local v0    # "tempPos":J
    .local v4, "tempPos":J
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    .local v1, "y":I
    if-ltz v0, :cond_1e

    .line 3679
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3680
    int-to-long v2, v1

    return-wide v2

    .line 3681
    :cond_1e
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v0, v6, v8

    if-gez v0, :cond_2b

    .line 3682
    goto/16 :goto_e4

    .line 3683
    :cond_2b
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_3c

    .line 3684
    xor-int/lit8 v0, v1, -0x80

    int-to-long v2, v0

    .local v2, "x":J
    goto/16 :goto_ed

    .line 3685
    .end local v2    # "x":J
    :cond_3c
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_4e

    .line 3686
    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move-wide v6, v4

    .restart local v2    # "x":J
    goto/16 :goto_ed

    .line 3687
    .end local v2    # "x":J
    :cond_4e
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_61

    .line 3688
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v2, v0

    .restart local v2    # "x":J
    goto/16 :goto_ed

    .line 3689
    .end local v2    # "x":J
    :cond_61
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

    if-ltz v0, :cond_7b

    .line 3690
    const-wide/32 v2, 0xfe03f80

    xor-long/2addr v2, v6

    move-wide v6, v8

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto/16 :goto_ed

    .line 3691
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_7b
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

    if-gez v0, :cond_93

    .line 3692
    const-wide v2, -0x7f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_ed

    .line 3693
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_93
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

    if-ltz v0, :cond_ab

    .line 3694
    const-wide v2, 0x3f80fe03f80L

    xor-long/2addr v2, v6

    move-wide v6, v8

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_ed

    .line 3695
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_ab
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

    if-gez v0, :cond_c3

    .line 3696
    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_ed

    .line 3705
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_c3
    add-long v8, v4, v2

    .end local v4    # "tempPos":J
    .restart local v8    # "tempPos":J
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 3706
    .end local v6    # "x":J
    .local v4, "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 3715
    cmp-long v0, v4, v10

    if-gez v0, :cond_eb

    .line 3716
    add-long v6, v8, v2

    .end local v8    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_e9

    .line 3717
    nop

    .line 3724
    .end local v1    # "y":I
    .end local v4    # "x":J
    .end local v6    # "tempPos":J
    :goto_e4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 3716
    .restart local v1    # "y":I
    .restart local v4    # "x":J
    .restart local v6    # "tempPos":J
    :cond_e9
    move-wide v2, v4

    goto :goto_ed

    .line 3715
    .end local v6    # "tempPos":J
    .restart local v8    # "tempPos":J
    :cond_eb
    move-wide v2, v4

    move-wide v6, v8

    .line 3721
    .end local v4    # "x":J
    .end local v8    # "tempPos":J
    .restart local v2    # "x":J
    .restart local v6    # "tempPos":J
    :goto_ed
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3722
    return-wide v2
.end method

.method blacklist readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3729
    const-wide/16 v0, 0x0

    .line 3730
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 3731
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    .line 3732
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 3733
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    .line 3734
    return-wide v0

    .line 3730
    .end local v3    # "b":B
    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 3737
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

    .line 3607
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

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

    .line 3612
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

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

    .line 3617
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->decodeZigZag32(I)I

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

    .line 3622
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->decodeZigZag64(J)J

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

    .line 3396
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3397
    .local v0, "size":I
    if-lez v0, :cond_28

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_28

    .line 3398
    new-array v4, v0, [B

    .line 3399
    .local v4, "bytes":[B
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3400
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3401
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v0

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3402
    return-object v1

    .line 3403
    .end local v1    # "result":Ljava/lang/String;
    .end local v4    # "bytes":[B
    :cond_28
    if-lez v0, :cond_3e

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3e

    .line 3405
    new-array v1, v0, [B

    .line 3406
    .local v1, "bytes":[B
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3407
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3408
    .local v2, "result":Ljava/lang/String;
    return-object v2

    .line 3411
    .end local v1    # "bytes":[B
    .end local v2    # "result":Ljava/lang/String;
    :cond_3e
    if-nez v0, :cond_43

    .line 3412
    const-string v1, ""

    return-object v1

    .line 3414
    :cond_43
    if-gez v0, :cond_4a

    .line 3415
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3417
    :cond_4a
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

    .line 3422
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3423
    .local v0, "size":I
    if-lez v0, :cond_23

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_23

    .line 3424
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 3425
    .local v1, "bufferPos":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    .line 3426
    .local v2, "result":Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3427
    return-object v2

    .line 3429
    .end local v1    # "bufferPos":I
    .end local v2    # "result":Ljava/lang/String;
    :cond_23
    if-ltz v0, :cond_36

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_36

    .line 3430
    new-array v1, v0, [B

    .line 3431
    .local v1, "bytes":[B
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3432
    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3435
    .end local v1    # "bytes":[B
    :cond_36
    if-nez v0, :cond_3b

    .line 3436
    const-string v1, ""

    return-object v1

    .line 3438
    :cond_3b
    if-gtz v0, :cond_42

    .line 3439
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3441
    :cond_42
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

    .line 3228
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    .line 3230
    return v0

    .line 3233
    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    .line 3234
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 3239
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0

    .line 3237
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

    .line 3597
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

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

    .line 3366
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

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

    .line 3476
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 3477
    return-void
.end method

.method public blacklist resetSizeCounter()V
    .registers 5

    .line 3787
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    .line 3788
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

    .line 3256
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 3277
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 3274
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3275
    return v2

    .line 3272
    :pswitch_12
    const/4 v0, 0x0

    return v0

    .line 3267
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipMessage()V

    .line 3268
    nop

    .line 3269
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 3268
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3270
    return v2

    .line 3264
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3265
    return v2

    .line 3261
    :pswitch_2c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3262
    return v2

    .line 3258
    :pswitch_32
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawVarint()V

    .line 3259
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

    .line 3283
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    .line 3328
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 3322
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 3323
    .local v0, "value":I
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3324
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 3325
    return v1

    .line 3318
    .end local v0    # "value":I
    :pswitch_18
    const/4 v0, 0x0

    return v0

    .line 3307
    :pswitch_1a
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3308
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 3309
    nop

    .line 3311
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 3310
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 3312
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3313
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3314
    return v1

    .line 3300
    .end local v0    # "endtag":I
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 3301
    .local v0, "value":Lcom/android/framework/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3302
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 3303
    return v1

    .line 3293
    .end local v0    # "value":Lcom/android/framework/protobuf/ByteString;
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 3294
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3295
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 3296
    return v1

    .line 3286
    .end local v2    # "value":J
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readInt64()J

    move-result-wide v2

    .line 3287
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3288
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 3289
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

    .line 3335
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readTag()I

    move-result v0

    .line 3336
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 3339
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 3337
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

    .line 3345
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readTag()I

    move-result v0

    .line 3346
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 3349
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 3347
    .restart local v0    # "tag":I
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist skipRawBytes(I)V
    .registers 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3910
    if-ltz p1, :cond_35

    int-to-long v0, p1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_35

    .line 3917
    move v0, p1

    .line 3918
    .local v0, "l":I
    :goto_14
    if-lez v0, :cond_34

    .line 3919
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    .line 3920
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3922
    :cond_23
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3923
    .local v1, "rl":I
    sub-int/2addr v0, v1

    .line 3924
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3925
    .end local v1    # "rl":I
    goto :goto_14

    .line 3926
    :cond_34
    return-void

    .line 3929
    .end local v0    # "l":I
    :cond_35
    if-gez p1, :cond_3c

    .line 3930
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3932
    :cond_3c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method
