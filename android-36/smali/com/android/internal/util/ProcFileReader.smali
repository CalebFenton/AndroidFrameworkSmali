.class public Lcom/android/internal/util/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final blacklist mBuffer:[B

.field private blacklist mLineFinished:Z

.field private final blacklist mStream:Ljava/io/InputStream;

.field private blacklist mTail:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    .line 51
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 52
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 57
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 58
    return-void
.end method

.method private blacklist consumeBuf(I)V
    .registers 7
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    nop

    :goto_1
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    const/16 v1, 0x20

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v0, v0, p1

    if-ne v0, v1, :cond_10

    .line 86
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 88
    :cond_10
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 90
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-nez v0, :cond_34

    .line 91
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 93
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v0, v0, v4

    if-ne v0, v1, :cond_34

    .line 96
    invoke-direct {p0, v4}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 99
    :cond_34
    return-void
.end method

.method private blacklist fillBuf()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, v1

    .line 65
    .local v0, "length":I
    if-eqz v0, :cond_1b

    .line 69
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 70
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 71
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 73
    :cond_1a
    return v1

    .line 66
    .end local v1    # "read":I
    :cond_1b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "attempting to fill already-full buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist invalidLong(I)Ljava/lang/NumberFormatException;
    .registers 8
    .param p1, "tokenIndex"    # I

    .line 244
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist nextTokenIndex()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v0, :cond_6

    .line 110
    const/4 v0, -0x1

    return v0

    .line 113
    :cond_6
    const/4 v0, 0x0

    .line 116
    .local v0, "i":I
    :goto_7
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_1f

    .line 117
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    .line 118
    .local v1, "b":B
    const/16 v2, 0xa

    if-ne v1, v2, :cond_17

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 120
    return v0

    .line 122
    :cond_17
    const/16 v2, 0x20

    if-ne v1, v2, :cond_1c

    .line 123
    return v0

    .line 116
    .end local v1    # "b":B
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 126
    :cond_1f
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-lez v1, :cond_26

    goto :goto_7

    .line 128
    :cond_26
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for token boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist parseAndConsumeLong(IZ)J
    .registers 13
    .param p1, "tokenIndex"    # I
    .param p2, "stopAtInvalid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v0, v2, :cond_c

    move v0, v3

    goto :goto_d

    :cond_c
    move v0, v1

    .line 219
    .local v0, "negative":Z
    :goto_d
    const-wide/16 v4, 0x0

    .line 220
    .local v4, "result":J
    if-eqz v0, :cond_12

    move v1, v3

    .local v1, "i":I
    :cond_12
    :goto_12
    if-ge v1, p1, :cond_3b

    .line 221
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, -0x30

    .line 222
    .local v2, "digit":I
    if-ltz v2, :cond_33

    const/16 v3, 0x9

    if-le v2, v3, :cond_21

    goto :goto_33

    .line 232
    :cond_21
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    int-to-long v8, v2

    sub-long/2addr v6, v8

    .line 233
    .local v6, "next":J
    cmp-long v3, v6, v4

    if-gtz v3, :cond_2e

    .line 236
    move-wide v4, v6

    .line 220
    .end local v2    # "digit":I
    .end local v6    # "next":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 234
    .restart local v2    # "digit":I
    .restart local v6    # "next":J
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 223
    .end local v6    # "next":J
    :cond_33
    :goto_33
    if-eqz p2, :cond_36

    .line 224
    goto :goto_3b

    .line 226
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 239
    .end local v1    # "i":I
    .end local v2    # "digit":I
    :cond_3b
    :goto_3b
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 240
    if-eqz v0, :cond_44

    move-wide v1, v4

    goto :goto_45

    :cond_44
    neg-long v1, v4

    :goto_45
    return-wide v1
.end method

.method private blacklist parseAndConsumeString(I)Ljava/lang/String;
    .registers 6
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 208
    .local v0, "s":Ljava/lang/String;
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 209
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 292
    return-void
.end method

.method public blacklist finishLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v0, :cond_8

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 145
    return-void

    .line 148
    :cond_8
    const/4 v0, 0x0

    .line 151
    .local v0, "i":I
    :goto_9
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_1e

    .line 152
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1b

    .line 153
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 154
    return-void

    .line 151
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 157
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-lez v1, :cond_25

    goto :goto_9

    .line 159
    :cond_25
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for line boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist hasMoreData()Z
    .registers 2

    .line 135
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist nextIgnored()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 264
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 267
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 269
    return-void

    .line 265
    :cond_d
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required token"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist nextInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v0

    .line 253
    .local v0, "value":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_14

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_14

    .line 256
    long-to-int v2, v0

    return v2

    .line 254
    :cond_14
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "parsed value larger than integer"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist nextLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ProcFileReader;->nextLong(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist nextLong(Z)J
    .registers 5
    .param p1, "stopAtInvalid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 186
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 189
    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(IZ)J

    move-result-wide v1

    return-wide v1

    .line 187
    :cond_c
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required long"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist nextOptionalLong(J)J
    .registers 6
    .param p1, "def"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 199
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 200
    return-wide p1

    .line 202
    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist nextString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 167
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 170
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 168
    :cond_c
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required string"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist rewind()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_14

    .line 277
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_21

    .line 278
    :cond_14
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 279
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 284
    :goto_21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 285
    iput-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 286
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 287
    return-void

    .line 281
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The InputStream is NOT markable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
