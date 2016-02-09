.class public Lcom/android/internal/util/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mBuffer:[B

.field private mLineFinished:Z

.field private final mStream:Ljava/io/InputStream;

.field private mTail:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    #@5
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    #@5
    .line 49
    new-array v0, p2, [B

    #@7
    iput-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@9
    .line 52
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    #@c
    .line 47
    return-void
.end method

.method private consumeBuf(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 78
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@3
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@5
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@7
    sub-int/2addr v2, p1

    #@8
    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 79
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@d
    sub-int/2addr v0, p1

    #@e
    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@10
    .line 80
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@12
    if-nez v0, :cond_0

    #@14
    .line 81
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    #@17
    .line 75
    :cond_0
    return-void
.end method

.method private fillBuf()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@2
    array-length v2, v2

    #@3
    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@5
    sub-int v0, v2, v3

    #@7
    .line 60
    .local v0, "length":I
    if-nez v0, :cond_0

    #@9
    .line 61
    new-instance v2, Ljava/io/IOException;

    #@b
    const-string/jumbo v3, "attempting to fill already-full buffer"

    #@e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 64
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    #@14
    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@16
    iget v4, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@18
    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    #@1b
    move-result v1

    #@1c
    .line 65
    .local v1, "read":I
    const/4 v2, -0x1

    #@1d
    if-eq v1, v2, :cond_1

    #@1f
    .line 66
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@21
    add-int/2addr v2, v1

    #@22
    iput v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@24
    .line 68
    :cond_1
    return v1
.end method

.method private invalidLong(I)Ljava/lang/NumberFormatException;
    .locals 6
    .param p1, "tokenIndex"    # I

    #@0
    .prologue
    .line 214
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "invalid long: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    new-instance v2, Ljava/lang/String;

    #@10
    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@12
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@14
    const/4 v5, 0x0

    #@15
    invoke-direct {v2, v3, v5, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 214
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@23
    return-object v0
.end method

.method private nextTokenIndex()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 94
    const/4 v2, -0x1

    #@5
    return v2

    #@6
    .line 97
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 100
    .local v1, "i":I
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@9
    if-ge v1, v2, :cond_4

    #@b
    .line 101
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@d
    aget-byte v0, v2, v1

    #@f
    .line 102
    .local v0, "b":B
    const/16 v2, 0xa

    #@11
    if-ne v0, v2, :cond_2

    #@13
    .line 103
    const/4 v2, 0x1

    #@14
    iput-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    #@16
    .line 104
    return v1

    #@17
    .line 106
    :cond_2
    const/16 v2, 0x20

    #@19
    if-ne v0, v2, :cond_3

    #@1b
    .line 107
    return v1

    #@1c
    .line 100
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 110
    .end local v0    # "b":B
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    #@22
    move-result v2

    #@23
    if-gtz v2, :cond_1

    #@25
    .line 112
    new-instance v2, Ljava/net/ProtocolException;

    #@27
    const-string/jumbo v3, "End of stream while looking for token boundary"

    #@2a
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2
.end method

.method private parseAndConsumeLong(I)J
    .locals 12
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 190
    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@3
    aget-byte v3, v3, v8

    #@5
    const/16 v8, 0x2d

    #@7
    if-ne v3, v8, :cond_1

    #@9
    const/4 v2, 0x1

    #@a
    .line 193
    .local v2, "negative":Z
    :goto_0
    const-wide/16 v6, 0x0

    #@c
    .line 194
    .local v6, "result":J
    if-eqz v2, :cond_2

    #@e
    const/4 v1, 0x1

    #@f
    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_5

    #@11
    .line 195
    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@13
    aget-byte v3, v3, v1

    #@15
    add-int/lit8 v0, v3, -0x30

    #@17
    .line 196
    .local v0, "digit":I
    if-ltz v0, :cond_0

    #@19
    const/16 v3, 0x9

    #@1b
    if-le v0, v3, :cond_3

    #@1d
    .line 197
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    #@20
    move-result-object v3

    #@21
    throw v3

    #@22
    .line 190
    .end local v0    # "digit":I
    .end local v1    # "i":I
    .end local v2    # "negative":Z
    .end local v6    # "result":J
    :cond_1
    const/4 v2, 0x0

    #@23
    .restart local v2    # "negative":Z
    goto :goto_0

    #@24
    .line 194
    .restart local v6    # "result":J
    :cond_2
    const/4 v1, 0x0

    #@25
    .restart local v1    # "i":I
    goto :goto_1

    #@26
    .line 202
    .restart local v0    # "digit":I
    :cond_3
    const-wide/16 v8, 0xa

    #@28
    mul-long/2addr v8, v6

    #@29
    int-to-long v10, v0

    #@2a
    sub-long v4, v8, v10

    #@2c
    .line 203
    .local v4, "next":J
    cmp-long v3, v4, v6

    #@2e
    if-lez v3, :cond_4

    #@30
    .line 204
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    #@33
    move-result-object v3

    #@34
    throw v3

    #@35
    .line 206
    :cond_4
    move-wide v6, v4

    #@36
    .line 194
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_1

    #@39
    .line 209
    .end local v0    # "digit":I
    .end local v4    # "next":J
    :cond_5
    add-int/lit8 v3, p1, 0x1

    #@3b
    invoke-direct {p0, v3}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    #@3e
    .line 210
    if-eqz v2, :cond_6

    #@40
    .end local v6    # "result":J
    :goto_2
    return-wide v6

    #@41
    .restart local v6    # "result":J
    :cond_6
    neg-long v6, v6

    #@42
    goto :goto_2
.end method

.method private parseAndConsumeString(I)Ljava/lang/String;
    .locals 4
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@4
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v3, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@a
    .line 185
    .local v0, "s":Ljava/lang/String;
    add-int/lit8 v1, p1, 0x1

    #@c
    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    #@f
    .line 186
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@5
    .line 230
    return-void
.end method

.method public finishLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 127
    iget-boolean v1, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 128
    iput-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    #@7
    .line 129
    return-void

    #@8
    .line 132
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 135
    .local v0, "i":I
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@b
    if-ge v0, v1, :cond_3

    #@d
    .line 136
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    #@f
    aget-byte v1, v1, v0

    #@11
    const/16 v2, 0xa

    #@13
    if-ne v1, v2, :cond_2

    #@15
    .line 137
    add-int/lit8 v1, v0, 0x1

    #@17
    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    #@1a
    .line 138
    return-void

    #@1b
    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    #@21
    move-result v1

    #@22
    if-gtz v1, :cond_1

    #@24
    .line 143
    new-instance v1, Ljava/net/ProtocolException;

    #@26
    const-string/jumbo v2, "End of stream while looking for line boundary"

    #@29
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
.end method

.method public hasMoreData()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 119
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    #@3
    move-result-wide v0

    #@4
    .line 223
    .local v0, "value":J
    const-wide/32 v2, 0x7fffffff

    #@7
    cmp-long v2, v0, v2

    #@9
    if-gtz v2, :cond_0

    #@b
    const-wide/32 v2, -0x80000000

    #@e
    cmp-long v2, v0, v2

    #@10
    if-gez v2, :cond_1

    #@12
    .line 224
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    #@14
    const-string/jumbo v3, "parsed value larger than integer"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 226
    :cond_1
    long-to-int v2, v0

    #@1c
    return v2
.end method

.method public nextLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    #@3
    move-result v0

    #@4
    .line 163
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 164
    new-instance v1, Ljava/net/ProtocolException;

    #@9
    const-string/jumbo v2, "Missing required long"

    #@c
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 166
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(I)J

    #@13
    move-result-wide v2

    #@14
    return-wide v2
.end method

.method public nextOptionalLong(J)J
    .locals 5
    .param p1, "def"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    #@3
    move-result v0

    #@4
    .line 176
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 177
    return-wide p1

    #@8
    .line 179
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(I)J

    #@b
    move-result-wide v2

    #@c
    return-wide v2
.end method

.method public nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    #@3
    move-result v0

    #@4
    .line 151
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 152
    new-instance v1, Ljava/net/ProtocolException;

    #@9
    const-string/jumbo v2, "Missing required string"

    #@c
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 154
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method
