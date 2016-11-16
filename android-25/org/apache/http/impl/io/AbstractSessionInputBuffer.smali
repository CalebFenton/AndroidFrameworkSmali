.class public abstract Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/SessionInputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private ascii:Z

.field private buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private charset:Ljava/lang/String;

.field private instream:Ljava/io/InputStream;

.field private linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

.field private maxLineLen:I

.field private metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@6
    .line 67
    const-string/jumbo v0, "US-ASCII"

    #@9
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    #@b
    .line 68
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    #@e
    .line 69
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    #@11
    .line 58
    return-void
.end method

.method private lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 5
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 215
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@3
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    #@6
    move-result v0

    #@7
    .line 216
    .local v0, "l":I
    if-lez v0, :cond_1

    #@9
    .line 217
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@b
    add-int/lit8 v3, v0, -0x1

    #@d
    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    #@10
    move-result v2

    #@11
    const/16 v3, 0xa

    #@13
    if-ne v2, v3, :cond_0

    #@15
    .line 218
    add-int/lit8 v0, v0, -0x1

    #@17
    .line 219
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@19
    invoke-virtual {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;->setLength(I)V

    #@1c
    .line 222
    :cond_0
    if-lez v0, :cond_1

    #@1e
    .line 223
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@20
    add-int/lit8 v3, v0, -0x1

    #@22
    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    #@25
    move-result v2

    #@26
    const/16 v3, 0xd

    #@28
    if-ne v2, v3, :cond_1

    #@2a
    .line 224
    add-int/lit8 v0, v0, -0x1

    #@2c
    .line 225
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@2e
    invoke-virtual {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;->setLength(I)V

    #@31
    .line 229
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@33
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    #@36
    move-result v0

    #@37
    .line 230
    iget-boolean v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 231
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@3d
    invoke-virtual {p1, v2, v4, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/ByteArrayBuffer;II)V

    #@40
    .line 238
    :goto_0
    return v0

    #@41
    .line 235
    :cond_2
    new-instance v1, Ljava/lang/String;

    #@43
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@45
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    #@48
    move-result-object v2

    #@49
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    #@4b
    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@4e
    .line 236
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@51
    goto :goto_0
.end method

.method private lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I
    .locals 5
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@2
    .line 245
    .local v1, "off":I
    add-int/lit8 v3, p2, 0x1

    #@4
    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@6
    .line 249
    if-le p2, v1, :cond_0

    #@8
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@a
    add-int/lit8 v4, p2, -0x1

    #@c
    aget-byte v3, v3, v4

    #@e
    const/16 v4, 0xd

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 251
    add-int/lit8 p2, p2, -0x1

    #@14
    .line 254
    :cond_0
    sub-int v0, p2, v1

    #@16
    .line 255
    .local v0, "len":I
    iget-boolean v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 256
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@1c
    invoke-virtual {p1, v3, v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    #@1f
    .line 263
    :goto_0
    return v0

    #@20
    .line 260
    :cond_1
    new-instance v2, Ljava/lang/String;

    #@22
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@24
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    #@26
    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@29
    .line 261
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method

.method private locateLF()I
    .locals 3

    #@0
    .prologue
    .line 161
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@2
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 162
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@8
    aget-byte v1, v1, v0

    #@a
    const/16 v2, 0xa

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 163
    return v0

    #@f
    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 166
    :cond_1
    const/4 v1, -0x1

    #@13
    return v1
.end method


# virtual methods
.method protected fillBuffer()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 97
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@4
    if-lez v3, :cond_1

    #@6
    .line 98
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@8
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@a
    sub-int v1, v3, v4

    #@c
    .line 99
    .local v1, "len":I
    if-lez v1, :cond_0

    #@e
    .line 100
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@10
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@12
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@14
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 102
    :cond_0
    iput v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@19
    .line 103
    iput v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@1b
    .line 106
    .end local v1    # "len":I
    :cond_1
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@1d
    .line 107
    .local v2, "off":I
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@1f
    array-length v3, v3

    #@20
    sub-int v1, v3, v2

    #@22
    .line 108
    .restart local v1    # "len":I
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    #@24
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@26
    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    #@29
    move-result v0

    #@2a
    .line 109
    .local v0, "l":I
    if-ne v0, v7, :cond_2

    #@2c
    .line 110
    return v7

    #@2d
    .line 112
    :cond_2
    add-int v3, v2, v0

    #@2f
    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@31
    .line 113
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@33
    int-to-long v4, v0

    #@34
    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    #@37
    .line 114
    return v0
.end method

.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@2
    return-object v0
.end method

.method protected hasBufferedData()Z
    .locals 2

    #@0
    .prologue
    .line 119
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@2
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method protected init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 74
    if-nez p1, :cond_0

    #@3
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Input stream may not be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 77
    :cond_0
    if-gtz p2, :cond_1

    #@e
    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "Buffer size may not be negative or zero"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 80
    :cond_1
    if-nez p3, :cond_2

    #@19
    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 83
    :cond_2
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    #@24
    .line 84
    new-array v0, p2, [B

    #@26
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@28
    .line 85
    iput v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@2a
    .line 86
    iput v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@2c
    .line 87
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    #@2e
    invoke-direct {v0, p2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    #@31
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@33
    .line 88
    invoke-static {p3}, Lorg/apache/http/params/HttpProtocolParams;->getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    #@39
    .line 89
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    #@3b
    const-string/jumbo v1, "US-ASCII"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_3

    #@44
    .line 90
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    #@46
    const-string/jumbo v1, "ASCII"

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c
    move-result v0

    #@4d
    .line 89
    :goto_0
    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    #@4f
    .line 91
    const-string/jumbo v0, "http.connection.max-line-length"

    #@52
    const/4 v1, -0x1

    #@53
    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@56
    move-result v0

    #@57
    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    #@59
    .line 92
    new-instance v0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@5b
    invoke-direct {v0}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    #@5e
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@60
    .line 73
    return-void

    #@61
    .line 89
    :cond_3
    const/4 v0, 0x1

    #@62
    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 123
    const/4 v0, 0x0

    #@2
    .line 124
    .local v0, "noRead":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 125
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    #@b
    move-result v0

    #@c
    .line 126
    if-ne v0, v2, :cond_0

    #@e
    .line 127
    return v2

    #@f
    .line 130
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@11
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@13
    add-int/lit8 v3, v2, 0x1

    #@15
    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@17
    aget-byte v1, v1, v2

    #@19
    and-int/lit16 v1, v1, 0xff

    #@1b
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 154
    if-nez p1, :cond_0

    #@3
    .line 155
    return v1

    #@4
    .line 157
    :cond_0
    array-length v0, p1

    #@5
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->read([BII)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 134
    if-nez p1, :cond_0

    #@3
    .line 135
    const/4 v2, 0x0

    #@4
    return v2

    #@5
    .line 137
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 138
    .local v1, "noRead":I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_2

    #@c
    .line 139
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    #@f
    move-result v1

    #@10
    .line 140
    if-ne v1, v3, :cond_1

    #@12
    .line 141
    return v3

    #@13
    .line 144
    :cond_2
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@15
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@17
    sub-int v0, v2, v3

    #@19
    .line 145
    .local v0, "chunk":I
    if-le v0, p3, :cond_3

    #@1b
    .line 146
    move v0, p3

    #@1c
    .line 148
    :cond_3
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@1e
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@20
    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 149
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@25
    add-int/2addr v2, v0

    #@26
    iput v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@28
    .line 150
    return v0
.end method

.method public readLine(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 8
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 170
    if-nez p1, :cond_0

    #@3
    .line 171
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "Char array buffer may not be null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 173
    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@e
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    #@11
    .line 174
    const/4 v2, 0x0

    #@12
    .line 175
    .local v2, "noRead":I
    const/4 v3, 0x1

    #@13
    .line 176
    .local v3, "retry":Z
    :cond_1
    if-eqz v3, :cond_6

    #@15
    .line 178
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->locateLF()I

    #@18
    move-result v0

    #@19
    .line 179
    .local v0, "i":I
    if-eq v0, v7, :cond_4

    #@1b
    .line 181
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@1d
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2

    #@23
    .line 183
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I

    #@26
    move-result v4

    #@27
    return v4

    #@28
    .line 185
    :cond_2
    const/4 v3, 0x0

    #@29
    .line 186
    add-int/lit8 v4, v0, 0x1

    #@2b
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@2d
    sub-int v1, v4, v5

    #@2f
    .line 187
    .local v1, "len":I
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@31
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@33
    iget v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@35
    invoke-virtual {v4, v5, v6, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    #@38
    .line 188
    add-int/lit8 v4, v0, 0x1

    #@3a
    iput v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@3c
    .line 201
    .end local v1    # "len":I
    :cond_3
    :goto_0
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    #@3e
    if-lez v4, :cond_1

    #@40
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@42
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    #@45
    move-result v4

    #@46
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    #@48
    if-lt v4, v5, :cond_1

    #@4a
    .line 202
    new-instance v4, Ljava/io/IOException;

    #@4c
    const-string/jumbo v5, "Maximum line length limit exceeded"

    #@4f
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v4

    #@53
    .line 191
    :cond_4
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_5

    #@59
    .line 192
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@5b
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@5d
    sub-int v1, v4, v5

    #@5f
    .line 193
    .restart local v1    # "len":I
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@61
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    #@63
    iget v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@65
    invoke-virtual {v4, v5, v6, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    #@68
    .line 194
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    #@6a
    iput v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    #@6c
    .line 196
    .end local v1    # "len":I
    :cond_5
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    #@6f
    move-result v2

    #@70
    .line 197
    if-ne v2, v7, :cond_3

    #@72
    .line 198
    const/4 v3, 0x0

    #@73
    goto :goto_0

    #@74
    .line 205
    .end local v0    # "i":I
    :cond_6
    if-ne v2, v7, :cond_7

    #@76
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@78
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_7

    #@7e
    .line 207
    return v7

    #@7f
    .line 209
    :cond_7
    invoke-direct {p0, p1}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I

    #@82
    move-result v4

    #@83
    return v4
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@2
    const/16 v2, 0x40

    #@4
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@7
    .line 268
    .local v0, "charbuffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    #@a
    move-result v1

    #@b
    .line 269
    .local v1, "l":I
    const/4 v2, -0x1

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 270
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 272
    :cond_0
    const/4 v2, 0x0

    #@14
    return-object v2
.end method
