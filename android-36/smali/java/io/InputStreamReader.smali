.class public Ljava/io/InputStreamReader;
.super Ljava/io/Reader;
.source "InputStreamReader.java"


# instance fields
.field private final greylist-max-o sd:Lsun/nio/cs/StreamDecoder;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 76
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 77
    nop

    .line 78
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 77
    invoke-static {p1, p0, v0}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 98
    if-eqz p2, :cond_c

    .line 100
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    .line 101
    return-void

    .line 99
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charsetName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .line 112
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 113
    if-eqz p2, :cond_c

    .line 115
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    .line 116
    return-void

    .line 114
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .line 127
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 128
    if-eqz p2, :cond_c

    .line 130
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    .line 131
    return-void

    .line 129
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset decoder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamDecoder;->close()V

    .line 193
    return-void
.end method

.method public whitelist test-api getEncoding()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamDecoder;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamDecoder;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read(Ljava/nio/CharBuffer;)I
    .registers 3
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0, p1}, Lsun/nio/cs/StreamDecoder;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([CII)I
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamDecoder;->read([CII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamDecoder;->ready()Z

    move-result v0

    return v0
.end method
