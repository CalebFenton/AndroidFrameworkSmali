.class public abstract Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionOutputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/SessionOutputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final MAX_CHUNK:I = 0x100


# instance fields
.field private ascii:Z

.field private buffer:Lorg/apache/http/util/ByteArrayBuffer;

.field private charset:Ljava/lang/String;

.field private metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

.field private outstream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 59
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    #@8
    .line 57
    return-void

    #@9
    .line 59
    nop

    #@a
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const-string/jumbo v0, "US-ASCII"

    #@6
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    #@8
    .line 67
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    #@b
    .line 57
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    #@3
    .line 100
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@8
    .line 98
    return-void
.end method

.method protected flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 90
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@3
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    #@6
    move-result v0

    #@7
    .line 91
    .local v0, "len":I
    if-lez v0, :cond_0

    #@9
    .line 92
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    #@b
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@d
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    #@14
    .line 93
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@16
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    #@19
    .line 94
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@1b
    int-to-long v2, v0

    #@1c
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    #@1f
    .line 89
    :cond_0
    return-void
.end method

.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@2
    return-object v0
.end method

.method protected init(Ljava/io/OutputStream;ILorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 72
    if-nez p1, :cond_0

    #@2
    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Input stream may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 75
    :cond_0
    if-gtz p2, :cond_1

    #@d
    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Buffer size may not be negative or zero"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 78
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 81
    :cond_2
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    #@23
    .line 82
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    #@25
    invoke-direct {v0, p2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    #@28
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@2a
    .line 83
    invoke-static {p3}, Lorg/apache/http/params/HttpProtocolParams;->getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    #@30
    .line 84
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    #@32
    const-string/jumbo v1, "US-ASCII"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_3

    #@3b
    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    #@3d
    const-string/jumbo v1, "ASCII"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@43
    move-result v0

    #@44
    .line 84
    :goto_0
    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    #@46
    .line 86
    new-instance v0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@48
    invoke-direct {v0}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    #@4b
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@4d
    .line 71
    return-void

    #@4e
    .line 84
    :cond_3
    const/4 v0, 0x1

    #@4f
    goto :goto_0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->isFull()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 137
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    #@b
    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@d
    invoke-virtual {v0, p1}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    #@10
    .line 135
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    if-nez p1, :cond_0

    #@2
    .line 130
    return-void

    #@3
    .line 132
    :cond_0
    array-length v0, p1

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([BII)V

    #@8
    .line 128
    return-void
.end method

.method public write([BII)V
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
    .line 104
    if-nez p1, :cond_0

    #@2
    .line 105
    return-void

    #@3
    .line 110
    :cond_0
    const/16 v1, 0x100

    #@5
    if-gt p3, v1, :cond_1

    #@7
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@9
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    #@c
    move-result v1

    #@d
    if-le p3, v1, :cond_2

    #@f
    .line 112
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    #@12
    .line 114
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    #@14
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@17
    .line 115
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    #@19
    int-to-long v2, p3

    #@1a
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    #@1d
    .line 103
    :goto_0
    return-void

    #@1e
    .line 118
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@20
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    #@23
    move-result v1

    #@24
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@26
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    #@29
    move-result v2

    #@2a
    sub-int v0, v1, v2

    #@2c
    .line 119
    .local v0, "freecapacity":I
    if-le p3, v0, :cond_3

    #@2e
    .line 121
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    #@31
    .line 124
    :cond_3
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@33
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    #@36
    goto :goto_0
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    if-nez p1, :cond_0

    #@2
    .line 144
    return-void

    #@3
    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_1

    #@9
    .line 147
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([B)V

    #@12
    .line 149
    :cond_1
    sget-object v0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    #@14
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([B)V

    #@17
    .line 142
    return-void
.end method

.method public writeLine(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 6
    .param p1, "s"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    if-nez p1, :cond_0

    #@2
    .line 154
    return-void

    #@3
    .line 156
    :cond_0
    iget-boolean v4, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    #@5
    if-eqz v4, :cond_3

    #@7
    .line 157
    const/4 v1, 0x0

    #@8
    .line 158
    .local v1, "off":I
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@b
    move-result v2

    #@c
    .line 159
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_4

    #@e
    .line 160
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@10
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    #@13
    move-result v4

    #@14
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@16
    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    #@19
    move-result v5

    #@1a
    sub-int v0, v4, v5

    #@1c
    .line 161
    .local v0, "chunk":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v0

    #@20
    .line 162
    if-lez v0, :cond_1

    #@22
    .line 163
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@24
    invoke-virtual {v4, p1, v1, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    #@27
    .line 165
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    #@29
    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->isFull()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_2

    #@2f
    .line 166
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    #@32
    .line 168
    :cond_2
    add-int/2addr v1, v0

    #@33
    .line 169
    sub-int/2addr v2, v0

    #@34
    goto :goto_0

    #@35
    .line 174
    .end local v0    # "chunk":I
    .end local v1    # "off":I
    .end local v2    # "remaining":I
    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@3e
    move-result-object v3

    #@3f
    .line 175
    .local v3, "tmp":[B
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([B)V

    #@42
    .line 177
    .end local v3    # "tmp":[B
    :cond_4
    sget-object v4, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    #@44
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([B)V

    #@47
    .line 152
    return-void
.end method
