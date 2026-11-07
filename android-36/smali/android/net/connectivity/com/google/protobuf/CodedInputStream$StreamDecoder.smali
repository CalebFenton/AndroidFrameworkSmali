.class final Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;
.super Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private blacklist bufferSize:I

.field private blacklist bufferSizeAfterLimit:I

.field private blacklist currentLimit:I

.field private final blacklist input:Ljava/io/InputStream;

.field private blacklist lastTag:I

.field private blacklist pos:I

.field private blacklist refillCallback:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

.field private blacklist totalBytesRetired:I


# direct methods
.method private constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 2058
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;-><init>(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$1;)V

    .line 2056
    const v1, 0x7fffffff

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2766
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2059
    const-string v0, "input"

    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2060
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2061
    new-array v0, p2, [B

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2062
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2063
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2064
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2065
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/InputStream;ILandroid/net/connectivity/com/google/protobuf/CodedInputStream$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream$1;

    .line 2037
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic blacklist access$500(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)I
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    .line 2037
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)[B
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    .line 2037
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    return-object v0
.end method

.method private static blacklist available(Ljava/io/InputStream;)I
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2098
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_4
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 2099
    :catch_5
    move-exception v0

    .line 2100
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2101
    throw v0
.end method

.method private static blacklist read(Ljava/io/InputStream;[BII)I
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_4
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 2081
    :catch_5
    move-exception v0

    .line 2082
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2083
    throw v0
.end method

.method private blacklist readBytesSlowPath(I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 13
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3021
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 3022
    .local v0, "result":[B
    if-eqz v0, :cond_b

    .line 3025
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom([B)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 3028
    :cond_b
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3029
    .local v1, "originalBufferPos":I
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v2, v3

    .line 3032
    .local v2, "bufferedBytes":I
    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3033
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3034
    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3037
    sub-int v4, p1, v2

    .line 3041
    .local v4, "sizeLeft":I
    invoke-direct {p0, v4}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v5

    .line 3044
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v6, p1, [B

    .line 3047
    .local v6, "bytes":[B
    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v7, v1, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3050
    move v7, v2

    .line 3051
    .local v7, "tempPos":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_30
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 3052
    .local v9, "chunk":[B
    array-length v10, v9

    invoke-static {v9, v3, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3053
    array-length v10, v9

    add-int/2addr v7, v10

    .line 3054
    .end local v9    # "chunk":[B
    goto :goto_30

    .line 3056
    :cond_43
    invoke-static {v6}, Landroid/net/connectivity/com/google/protobuf/ByteString;->wrap([B)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v3

    return-object v3
.end method

.method private blacklist readRawBytesSlowPath(IZ)[B
    .registers 14
    .param p1, "size"    # I
    .param p2, "ensureNoLeakedReferences"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2886
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 2887
    .local v0, "result":[B
    if-eqz v0, :cond_11

    .line 2888
    if-eqz p2, :cond_f

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1

    .line 2891
    :cond_11
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2892
    .local v1, "originalBufferPos":I
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v2, v3

    .line 2895
    .local v2, "bufferedBytes":I
    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2896
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2897
    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2900
    sub-int v4, p1, v2

    .line 2904
    .local v4, "sizeLeft":I
    invoke-direct {p0, v4}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v5

    .line 2907
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v6, p1, [B

    .line 2910
    .local v6, "bytes":[B
    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v7, v1, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2913
    move v7, v2

    .line 2914
    .local v7, "tempPos":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 2915
    .local v9, "chunk":[B
    array-length v10, v9

    invoke-static {v9, v3, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2916
    array-length v10, v9

    add-int/2addr v7, v10

    .line 2917
    .end local v9    # "chunk":[B
    goto :goto_36

    .line 2920
    :cond_49
    return-object v6
.end method

.method private blacklist readRawBytesSlowPathOneChunk(I)[B
    .registers 9
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2930
    if-nez p1, :cond_5

    .line 2931
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 2933
    :cond_5
    if-ltz p1, :cond_73

    .line 2938
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2939
    .local v0, "currentMessageSize":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6e

    .line 2944
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_5e

    .line 2950
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 2952
    .local v1, "bufferedBytes":I
    sub-int v2, p1, v1

    .line 2954
    .local v2, "sizeLeft":I
    const/16 v3, 0x1000

    if-lt v2, v3, :cond_2d

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->available(Ljava/io/InputStream;)I

    move-result v3

    if-gt v2, v3, :cond_2b

    goto :goto_2d

    .line 2979
    :cond_2b
    const/4 v3, 0x0

    return-object v3

    .line 2957
    :cond_2d
    :goto_2d
    new-array v3, p1, [B

    .line 2960
    .local v3, "bytes":[B
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2961
    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2962
    iput v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2963
    iput v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2966
    move v4, v1

    .line 2967
    .local v4, "tempPos":I
    :goto_43
    array-length v5, v3

    if-ge v4, v5, :cond_5d

    .line 2968
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v6, p1, v4

    invoke-static {v5, v3, v4, v6}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 2969
    .local v5, "n":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_58

    .line 2972
    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2973
    add-int/2addr v4, v5

    .line 2974
    .end local v5    # "n":I
    goto :goto_43

    .line 2970
    .restart local v5    # "n":I
    :cond_58
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    .line 2976
    .end local v5    # "n":I
    :cond_5d
    return-object v3

    .line 2946
    .end local v1    # "bufferedBytes":I
    .end local v2    # "sizeLeft":I
    .end local v3    # "bytes":[B
    .end local v4    # "tempPos":I
    :cond_5e
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2947
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2940
    :cond_6e
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2934
    .end local v0    # "currentMessageSize":I
    :cond_73
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->negativeSize()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;
    .registers 7
    .param p1, "sizeLeft"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2997
    .local v0, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_5
    if-lez p1, :cond_30

    .line 2999
    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    .line 3000
    .local v1, "chunk":[B
    const/4 v2, 0x0

    .line 3001
    .local v2, "tempPos":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_2a

    .line 3002
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 3003
    .local v3, "n":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 3006
    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3007
    add-int/2addr v2, v3

    .line 3008
    .end local v3    # "n":I
    goto :goto_10

    .line 3004
    .restart local v3    # "n":I
    :cond_25
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 3009
    .end local v3    # "n":I
    :cond_2a
    array-length v3, v1

    sub-int/2addr p1, v3

    .line 3010
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3011
    .end local v1    # "chunk":[B
    .end local v2    # "tempPos":I
    goto :goto_5

    .line 3013
    :cond_30
    return-object v0
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 4

    .line 2725
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2726
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v0, v1

    .line 2727
    .local v0, "bufferEnd":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v0, v1, :cond_1e

    .line 2729
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2730
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    goto :goto_21

    .line 2732
    :cond_1e
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2734
    :goto_21
    return-void
.end method

.method private blacklist refillBuffer(I)V
    .registers 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2777
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2780
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_15

    .line 2781
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2783
    :cond_15
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2786
    :cond_1a
    return-void
.end method

.method private static blacklist skip(Ljava/io/InputStream;J)J
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2089
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_4
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    .line 2090
    :catch_5
    move-exception v0

    .line 2091
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2092
    throw v0
.end method

.method private blacklist skipRawBytesSlowPath(I)V
    .registers 10
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3074
    if-ltz p1, :cond_b2

    .line 3078
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_a2

    .line 3085
    const/4 v0, 0x0

    .line 3086
    .local v0, "totalSkipped":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-nez v1, :cond_7d

    .line 3088
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3089
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 3090
    .end local v0    # "totalSkipped":I
    .local v1, "totalSkipped":I
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3091
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v0, v1

    .line 3094
    .end local v1    # "totalSkipped":I
    .restart local v0    # "totalSkipped":I
    :goto_23
    if-ge v0, p1, :cond_74

    .line 3095
    sub-int v1, p1, v0

    .line 3096
    .local v1, "toSkip":I
    :try_start_27
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skip(Ljava/io/InputStream;J)J

    move-result-wide v2

    .line 3097
    .local v2, "skipped":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_41

    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-gtz v6, :cond_41

    .line 3103
    cmp-long v4, v2, v4

    if-nez v4, :cond_3e

    .line 3108
    goto :goto_74

    .line 3110
    :cond_3e
    long-to-int v4, v2

    add-int/2addr v0, v4

    .line 3111
    .end local v1    # "toSkip":I
    .end local v2    # "skipped":J
    goto :goto_23

    .line 3098
    .restart local v1    # "toSkip":I
    .restart local v2    # "skipped":J
    :cond_41
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 3099
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#skip returned invalid result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nThe InputStream implementation is buggy."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "totalSkipped":I
    .end local p0    # "this":Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;
    .end local p1    # "size":I
    throw v4
    :try_end_6a
    .catchall {:try_start_27 .. :try_end_6a} :catchall_6a

    .line 3113
    .end local v1    # "toSkip":I
    .end local v2    # "skipped":J
    .restart local v0    # "totalSkipped":I
    .restart local p0    # "this":Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;
    .restart local p1    # "size":I
    :catchall_6a
    move-exception v1

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3114
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3115
    throw v1

    .line 3113
    :cond_74
    :goto_74
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3114
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3115
    nop

    .line 3117
    :cond_7d
    if-ge v0, p1, :cond_a1

    .line 3119
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 3120
    .local v1, "tempPos":I
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3124
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 3125
    :goto_8c
    sub-int v3, p1, v1

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v3, v4, :cond_9d

    .line 3126
    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v1, v3

    .line 3127
    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3128
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    goto :goto_8c

    .line 3131
    :cond_9d
    sub-int v2, p1, v1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3133
    .end local v1    # "tempPos":I
    :cond_a1
    return-void

    .line 3080
    .end local v0    # "totalSkipped":I
    :cond_a2
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3082
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3075
    :cond_b2
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->negativeSize()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2546
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2547
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintFastPath()V

    goto :goto_10

    .line 2549
    :cond_d
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintSlowPath()V

    .line 2551
    :goto_10
    return-void
.end method

.method private blacklist skipRawVarintFastPath()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 2555
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    .line 2556
    return-void

    .line 2554
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2559
    .end local v0    # "i":I
    :cond_15
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

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

    .line 2563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 2564
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 2565
    return-void

    .line 2563
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2568
    .end local v0    # "i":I
    :cond_f
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist tryRefillBuffer(I)Z
    .registers 10
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2797
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v0, v1, :cond_aa

    .line 2805
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p1, v0, :cond_13

    .line 2806
    return v1

    .line 2810
    :cond_13
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v0, v2, :cond_1e

    .line 2812
    return v1

    .line 2815
    :cond_1e
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v0, :cond_27

    .line 2816
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->onRefill()V

    .line 2819
    :cond_27
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2820
    .local v0, "tempPos":I
    if-lez v0, :cond_45

    .line 2821
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v2, v0, :cond_39

    .line 2822
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2824
    :cond_39
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2825
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2826
    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2830
    :cond_45
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v5, v5

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v7, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v6, v7

    .line 2835
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2831
    invoke-static {v2, v3, v4, v5}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v2

    .line 2840
    .local v2, "bytesRead":I
    if-eqz v2, :cond_81

    const/4 v3, -0x1

    if-lt v2, v3, :cond_81

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v3, v3

    if-gt v2, v3, :cond_81

    .line 2847
    if-lez v2, :cond_80

    .line 2848
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2849
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2850
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-lt v1, p1, :cond_7b

    const/4 v1, 0x1

    goto :goto_7f

    :cond_7b
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    :goto_7f
    return v1

    .line 2853
    :cond_80
    return v1

    .line 2841
    :cond_81
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2842
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#read(byte[]) returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2798
    .end local v0    # "tempPos":I
    .end local v2    # "bytesRead":I
    :cond_aa
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes were already available in buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2123
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 2126
    return-void

    .line 2124
    :cond_5
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist enableAliasing(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 2700
    return-void
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 2744
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 2745
    const/4 v0, -0x1

    return v0

    .line 2748
    :cond_9
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    .line 2749
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public blacklist getLastTag()I
    .registers 2

    .line 2130
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 3

    .line 2759
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist isAtEnd()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2754
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist popLimit(I)V
    .registers 2
    .param p1, "oldLimit"    # I

    .line 2738
    iput p1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2739
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2740
    return-void
.end method

.method public blacklist pushLimit(I)I
    .registers 4
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2709
    if-ltz p1, :cond_17

    .line 2712
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2713
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2714
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_12

    .line 2717
    iput p1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2719
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2721
    return v0

    .line 2715
    :cond_12
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2710
    .end local v0    # "oldLimit":I
    :cond_17
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->negativeSize()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

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

    .line 2296
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2437
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2438
    .local v0, "size":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    if-lez v0, :cond_1e

    .line 2441
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2442
    .local v1, "result":[B
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2443
    return-object v1

    .line 2447
    .end local v1    # "result":[B
    :cond_1e
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2454
    .local v0, "size":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_22

    if-lez v0, :cond_22

    .line 2456
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2457
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2458
    return-object v1

    .line 2460
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_22
    if-nez v0, :cond_27

    .line 2461
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 2467
    :cond_27
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public blacklist readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2421
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2422
    .local v0, "size":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    if-lez v0, :cond_1b

    .line 2425
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom([BII)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    .line 2426
    .local v1, "result":Landroid/net/connectivity/com/google/protobuf/ByteString;
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2427
    return-object v1

    .line 2429
    .end local v1    # "result":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :cond_1b
    if-nez v0, :cond_20

    .line 2430
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v1

    .line 2432
    :cond_20
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readBytesSlowPath(I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2261
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2477
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2291
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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

    .line 2286
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2266
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readGroup(ILandroid/net/connectivity/com/google/protobuf/Parser;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            ">(I",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "TT;>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2369
    .local p2, "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2370
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2371
    invoke-interface {p2, p0, p3}, Landroid/net/connectivity/com/google/protobuf/Parser;->parsePartialFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 2372
    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2373
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2374
    return-object v0
.end method

.method public blacklist readGroup(ILandroid/net/connectivity/com/google/protobuf/MessageLite$Builder;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2355
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2356
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2357
    invoke-interface {p2, p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    .line 2358
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2359
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2360
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2281
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2276
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readMessage(Landroid/net/connectivity/com/google/protobuf/Parser;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 7
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "TT;>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2405
    .local p1, "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2406
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2407
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2408
    .local v1, "oldLimit":I
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2409
    invoke-interface {p1, p0, p2}, Landroid/net/connectivity/com/google/protobuf/Parser;->parsePartialFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 2410
    .local v2, "result":Landroid/net/connectivity/com/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2411
    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2412
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result v3

    if-nez v3, :cond_2b

    .line 2415
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2416
    return-object v2

    .line 2413
    :cond_2b
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public blacklist readMessage(Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 6
    .param p1, "builder"    # Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2388
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2389
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2390
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2391
    .local v1, "oldLimit":I
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2392
    invoke-interface {p1, p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    .line 2393
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2394
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2395
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result v2

    if-nez v2, :cond_28

    .line 2398
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2399
    return-void

    .line 2396
    :cond_28
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2858
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_a

    .line 2859
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2861
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2866
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2867
    .local v0, "tempPos":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_16

    if-lez p1, :cond_16

    .line 2868
    add-int v1, v0, p1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2869
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v2, v0, p1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 2872
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist readRawLittleEndian32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2659
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2661
    .local v0, "tempPos":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 2662
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2663
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2666
    :cond_d
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2667
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2668
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method public blacklist readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2676
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2678
    .local v0, "tempPos":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 2679
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2680
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2683
    :cond_e
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2684
    .local v1, "buffer":[B
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2685
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v4, v7, v5

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public blacklist readRawVarint32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2507
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2509
    .local v0, "tempPos":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_8

    .line 2510
    goto/16 :goto_74

    .line 2513
    :cond_8
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2515
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v0, v1, v0

    move v3, v0

    .local v3, "x":I
    if-ltz v0, :cond_14

    .line 2516
    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2517
    return v3

    .line 2518
    :cond_14
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v0, v2

    const/16 v4, 0x9

    if-ge v0, v4, :cond_1c

    .line 2519
    goto :goto_74

    .line 2520
    :cond_1c
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_29

    .line 2521
    xor-int/lit8 v2, v3, -0x80

    .end local v3    # "x":I
    .local v2, "x":I
    goto :goto_7f

    .line 2522
    .end local v2    # "x":I
    .restart local v3    # "x":I
    :cond_29
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_39

    .line 2523
    xor-int/lit16 v0, v3, 0x3f80

    move v5, v2

    move v2, v0

    move v0, v5

    .end local v3    # "x":I
    .local v0, "x":I
    goto :goto_7f

    .line 2524
    .end local v0    # "x":I
    .restart local v3    # "x":I
    :cond_39
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .local v0, "tempPos":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_48

    .line 2525
    const v2, -0x1fc080

    xor-int/2addr v2, v3

    .end local v3    # "x":I
    .local v2, "x":I
    goto :goto_7f

    .line 2527
    .end local v2    # "x":I
    .restart local v3    # "x":I
    :cond_48
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v0, v1, v0

    .line 2528
    .local v0, "y":I
    shl-int/lit8 v4, v0, 0x1c

    xor-int/2addr v3, v4

    .line 2529
    const v4, 0xfe03f80

    xor-int/2addr v3, v4

    .line 2530
    if-gez v0, :cond_7d

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tempPos":I
    .local v4, "tempPos":I
    aget-byte v2, v1, v2

    if-gez v2, :cond_7a

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v4, v1, v4

    if-gez v4, :cond_7d

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v2, v1, v2

    if-gez v2, :cond_7a

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v4, v1, v4

    if-gez v4, :cond_7d

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v2, v1, v2

    if-gez v2, :cond_7a

    .line 2536
    nop

    .line 2542
    .end local v0    # "y":I
    .end local v1    # "buffer":[B
    .end local v3    # "x":I
    .end local v4    # "tempPos":I
    :goto_74
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 2530
    .restart local v0    # "y":I
    .restart local v1    # "buffer":[B
    .restart local v3    # "x":I
    .restart local v4    # "tempPos":I
    :cond_7a
    move v2, v3

    move v0, v4

    goto :goto_7f

    .end local v4    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_7d
    move v0, v2

    move v2, v3

    .line 2539
    .end local v3    # "x":I
    .local v0, "tempPos":I
    .local v2, "x":I
    :goto_7f
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2540
    return v2
.end method

.method public blacklist readRawVarint64()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2586
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2588
    .local v0, "tempPos":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_8

    .line 2589
    goto/16 :goto_c2

    .line 2592
    :cond_8
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2595
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v0, v1, v0

    move v3, v0

    .local v3, "y":I
    if-ltz v0, :cond_15

    .line 2596
    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2597
    int-to-long v4, v3

    return-wide v4

    .line 2598
    :cond_15
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v0, v2

    const/16 v4, 0x9

    if-ge v0, v4, :cond_1e

    .line 2599
    goto/16 :goto_c2

    .line 2600
    :cond_1e
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_2d

    .line 2601
    xor-int/lit8 v2, v3, -0x80

    int-to-long v4, v2

    .local v4, "x":J
    goto/16 :goto_c8

    .line 2602
    .end local v4    # "x":J
    :cond_2d
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3d

    .line 2603
    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v2

    .restart local v4    # "x":J
    goto/16 :goto_c8

    .line 2604
    .end local v4    # "x":J
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_4e

    .line 2605
    const v2, -0x1fc080

    xor-int/2addr v2, v3

    int-to-long v4, v2

    .restart local v4    # "x":J
    goto/16 :goto_c8

    .line 2606
    .end local v4    # "x":J
    :cond_4e
    int-to-long v4, v3

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v0, v1, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_65

    .line 2607
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v2

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c8

    .line 2608
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_65
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    int-to-long v4, v2

    const/16 v2, 0x23

    shl-long/2addr v4, v2

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v2, v4, v8

    if-gez v2, :cond_7a

    .line 2609
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c8

    .line 2610
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_7a
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_90

    .line 2611
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v2

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c8

    .line 2612
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_90
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    int-to-long v4, v2

    const/16 v2, 0x31

    shl-long/2addr v4, v2

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v2, v4, v8

    if-gez v2, :cond_a5

    .line 2613
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c8

    .line 2622
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_a5
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 2623
    .end local v6    # "x":J
    .restart local v4    # "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 2632
    cmp-long v0, v4, v8

    if-gez v0, :cond_c7

    .line 2633
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    int-to-long v6, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_c8

    .line 2634
    nop

    .line 2641
    .end local v0    # "tempPos":I
    .end local v1    # "buffer":[B
    .end local v3    # "y":I
    .end local v4    # "x":J
    :goto_c2
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 2632
    .restart local v1    # "buffer":[B
    .restart local v2    # "tempPos":I
    .restart local v3    # "y":I
    .restart local v4    # "x":J
    :cond_c7
    move v0, v2

    .line 2638
    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    :cond_c8
    :goto_c8
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2639
    return-wide v4
.end method

.method blacklist readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2646
    const-wide/16 v0, 0x0

    .line 2647
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 2648
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v3

    .line 2649
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 2650
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    .line 2651
    return-wide v0

    .line 2647
    .end local v3    # "b":B
    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 2654
    .end local v2    # "shift":I
    :cond_18
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

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

    .line 2482
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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

    .line 2487
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2492
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag32(I)I

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

    .line 2497
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2301
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2302
    .local v0, "size":I
    if-lez v0, :cond_1e

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    .line 2305
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2306
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2307
    return-object v1

    .line 2309
    .end local v1    # "result":Ljava/lang/String;
    :cond_1e
    if-nez v0, :cond_23

    .line 2310
    const-string v1, ""

    return-object v1

    .line 2312
    :cond_23
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v1, :cond_3b

    .line 2313
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2314
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2315
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2316
    return-object v1

    .line 2319
    .end local v1    # "result":Ljava/lang/String;
    :cond_3b
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    sget-object v3, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2324
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2326
    .local v0, "size":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2328
    .local v1, "oldPos":I
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_15

    if-lez v0, :cond_15

    .line 2331
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2332
    .local v2, "bytes":[B
    add-int v3, v1, v0

    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2333
    move v3, v1

    .local v3, "tempPos":I
    goto :goto_2f

    .line 2334
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_15
    if-nez v0, :cond_1a

    .line 2335
    const-string v2, ""

    return-object v2

    .line 2336
    :cond_1a
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v2, :cond_29

    .line 2337
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2338
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2339
    .restart local v2    # "bytes":[B
    const/4 v3, 0x0

    .line 2340
    .restart local v3    # "tempPos":I
    add-int v4, v3, v0

    iput v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_2f

    .line 2343
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_29
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    .line 2344
    .restart local v2    # "bytes":[B
    const/4 v3, 0x0

    .line 2346
    .restart local v3    # "tempPos":I
    :goto_2f
    invoke-static {v2, v3, v0}, Landroid/net/connectivity/com/google/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public blacklist readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2107
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2108
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2109
    return v0

    .line 2112
    :cond_a
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2113
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 2118
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2116
    :cond_1b
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidTag()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

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

    .line 2472
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2271
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUnknownGroup(ILandroid/net/connectivity/com/google/protobuf/MessageLite$Builder;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2381
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readGroup(ILandroid/net/connectivity/com/google/protobuf/MessageLite$Builder;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 2382
    return-void
.end method

.method public blacklist resetSizeCounter()V
    .registers 2

    .line 2704
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    neg-int v0, v0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2705
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

    .line 2135
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 2156
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2153
    :pswitch_e
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2154
    return v2

    .line 2151
    :pswitch_12
    const/4 v0, 0x0

    return v0

    .line 2146
    :pswitch_14
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2147
    nop

    .line 2148
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2147
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2149
    return v2

    .line 2143
    :pswitch_24
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2144
    return v2

    .line 2140
    :pswitch_2c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2141
    return v2

    .line 2137
    :pswitch_32
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarint()V

    .line 2138
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

.method public blacklist skipField(ILandroid/net/connectivity/com/google/protobuf/CodedOutputStream;)Z
    .registers 7
    .param p1, "tag"    # I
    .param p2, "output"    # Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2162
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    .line 2207
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2201
    :pswitch_d
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 2202
    .local v0, "value":I
    invoke-virtual {p2, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2203
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 2204
    return v1

    .line 2197
    .end local v0    # "value":I
    :pswitch_18
    const/4 v0, 0x0

    return v0

    .line 2186
    :pswitch_1a
    invoke-virtual {p2, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2187
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;)V

    .line 2188
    nop

    .line 2190
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 2189
    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2191
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2192
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2193
    return v1

    .line 2179
    .end local v0    # "endtag":I
    :pswitch_31
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    .line 2180
    .local v0, "value":Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2181
    invoke-virtual {p2, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeBytesNoTag(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 2182
    return v1

    .line 2172
    .end local v0    # "value":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :pswitch_3c
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 2173
    .local v2, "value":J
    invoke-virtual {p2, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2174
    invoke-virtual {p2, v2, v3}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 2175
    return v1

    .line 2165
    .end local v2    # "value":J
    :pswitch_47
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v2

    .line 2166
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2167
    invoke-virtual {p2, v2, v3}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 2168
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

    .line 2214
    nop

    :goto_1
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    .line 2215
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 2218
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 2216
    .restart local v0    # "tag":I
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist skipMessage(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;)V
    .registers 4
    .param p1, "output"    # Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2224
    nop

    :goto_1
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    .line 2225
    .local v0, "tag":I
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipField(ILandroid/net/connectivity/com/google/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    .line 2228
    .end local v0    # "tag":I
    :cond_e
    goto :goto_1

    .line 2226
    .restart local v0    # "tag":I
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist skipRawBytes(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3061
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_f

    if-ltz p1, :cond_f

    .line 3063
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_12

    .line 3065
    :cond_f
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytesSlowPath(I)V

    .line 3067
    :goto_12
    return-void
.end method
