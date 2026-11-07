.class final Landroid/net/connectivity/com/google/protobuf/NioByteString;
.super Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
.source "NioByteString.java"


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 52
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;-><init>()V

    .line 53
    const-string v0, "buffer"

    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    .line 57
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/net/connectivity/com/google/protobuf/NioByteString;)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/NioByteString;

    .line 49
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "NioByteString instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist slice(II)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 283
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt p1, v0, :cond_2f

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-gt p2, v0, :cond_2f

    if-gt p1, p2, :cond_2f

    .line 288
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 289
    .local v0, "slice":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 290
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 291
    return-object v0

    .line 284
    .end local v0    # "slice":Ljava/nio/ByteBuffer;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid indices [%d, %d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist byteAt(I)B
    .registers 5
    .param p1, "index"    # I

    .line 77
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 80
    :catch_7
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_12
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    throw v0
.end method

.method public blacklist copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 119
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 120
    return-void
.end method

.method protected blacklist copyToInternal([BIII)V
    .registers 6
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 112
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 114
    invoke-virtual {v0, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 115
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 191
    return v0

    .line 193
    :cond_4
    instance-of v1, p1, Landroid/net/connectivity/com/google/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 194
    return v2

    .line 196
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 197
    .local v1, "otherString":Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->size()I

    move-result v3

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 198
    return v2

    .line 200
    :cond_18
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->size()I

    move-result v2

    if-nez v2, :cond_1f

    .line 201
    return v0

    .line 203
    :cond_1f
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/NioByteString;

    if-eqz v0, :cond_2f

    .line 204
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, p1

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/NioByteString;

    iget-object v2, v2, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 206
    :cond_2f
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    if-eqz v0, :cond_38

    .line 207
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 209
    :cond_38
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist equalsRange(Landroid/net/connectivity/com/google/protobuf/ByteString;II)Z
    .registers 6
    .param p1, "other"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist internalByteAt(I)B
    .registers 3
    .param p1, "index"    # I

    .line 89
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->byteAt(I)B

    move-result v0

    return v0
.end method

.method public blacklist isValidUtf8()Z
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/Utf8;->isValidUtf8(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public blacklist newCodedInput()Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .registers 3

    .line 272
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;Z)Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newInput()Ljava/io/InputStream;
    .registers 2

    .line 222
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;-><init>(Landroid/net/connectivity/com/google/protobuf/NioByteString;)V

    return-object v0
.end method

.method protected blacklist partialHash(III)I
    .registers 7
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 214
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_12

    .line 215
    mul-int/lit8 v1, p1, 0x1f

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int p1, v1, v2

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "i":I
    :cond_12
    return p1
.end method

.method protected blacklist partialIsValidUtf8(III)I
    .registers 6
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 185
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    add-int v1, p2, p3

    invoke-static {p1, v0, p2, v1}, Landroid/net/connectivity/com/google/protobuf/Utf8;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public blacklist substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 100
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    .local v0, "slice":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/NioByteString;

    invoke-direct {v1, v0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 104
    .end local v0    # "slice":Ljava/nio/ByteBuffer;
    :catch_a
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_15
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    throw v0
.end method

.method protected blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 165
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 166
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 167
    .local v0, "bytes":[B
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 168
    .local v1, "offset":I
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .local v2, "length":I
    goto :goto_28

    .line 171
    .end local v0    # "bytes":[B
    .end local v1    # "offset":I
    .end local v2    # "length":I
    :cond_22
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->toByteArray()[B

    move-result-object v0

    .line 172
    .restart local v0    # "bytes":[B
    const/4 v1, 0x0

    .line 173
    .restart local v1    # "offset":I
    array-length v2, v0

    .line 175
    .restart local v2    # "length":I
    :goto_28
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v3
.end method

.method blacklist writeTo(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V
    .registers 3
    .param p1, "output"    # Landroid/net/connectivity/com/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/com/google/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    .line 148
    return-void
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 125
    return-void
.end method

.method blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 137
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 138
    .local v0, "bufferOffset":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 139
    return-void

    .line 142
    .end local v0    # "bufferOffset":I
    :cond_20
    add-int v0, p2, p3

    invoke-direct {p0, p2, v0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/connectivity/com/google/protobuf/ByteBufferWriter;->write(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 143
    return-void
.end method
