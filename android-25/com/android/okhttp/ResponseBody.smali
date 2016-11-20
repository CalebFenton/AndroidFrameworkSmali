.class public abstract Lcom/android/okhttp/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    #@0
    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->contentType()Lcom/android/okhttp/MediaType;

    #@3
    move-result-object v0

    #@4
    .line 88
    .local v0, "contentType":Lcom/android/okhttp/MediaType;
    if-eqz v0, :cond_0

    #@6
    sget-object v1, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/okhttp/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    #@b
    move-result-object v1

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    sget-object v1, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@f
    goto :goto_0
.end method

.method public static create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;
    .locals 3
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lcom/android/okhttp/okio/BufferedSource;

    #@0
    .prologue
    .line 121
    if-nez p3, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 122
    :cond_0
    new-instance v0, Lcom/android/okhttp/ResponseBody$1;

    #@d
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/okhttp/ResponseBody$1;-><init>(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)V

    #@10
    return-object v0
.end method

.method public static create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    sget-object v1, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    .line 101
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    #@4
    .line 102
    invoke-virtual {p0}, Lcom/android/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    #@7
    move-result-object v1

    #@8
    .line 103
    if-nez v1, :cond_0

    #@a
    .line 104
    sget-object v1, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@c
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "; charset=utf-8"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v2}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@23
    move-result-object p0

    #@24
    .line 108
    :cond_0
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    #@26
    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@29
    invoke-virtual {v2, p1, v1}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    #@2c
    move-result-object v0

    #@2d
    .line 109
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@30
    move-result-wide v2

    #@31
    invoke-static {p0, v2, v3, v0}, Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method

.method public static create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # [B

    #@0
    .prologue
    .line 114
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@5
    invoke-virtual {v1, p1}, Lcom/android/okhttp/okio/Buffer;->write([B)Lcom/android/okhttp/okio/Buffer;

    #@8
    move-result-object v0

    #@9
    .line 115
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    array-length v1, p1

    #@a
    int-to-long v2, v1

    #@b
    invoke-static {p0, v2, v3, v0}, Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final bytes()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    #@3
    move-result-wide v2

    #@4
    .line 50
    .local v2, "contentLength":J
    const-wide/32 v4, 0x7fffffff

    #@7
    cmp-long v4, v2, v4

    #@9
    if-lez v4, :cond_0

    #@b
    .line 51
    new-instance v4, Ljava/io/IOException;

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Cannot buffer entire body for content length: "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4

    #@25
    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    #@28
    move-result-object v1

    #@29
    .line 57
    .local v1, "source":Lcom/android/okhttp/okio/BufferedSource;
    :try_start_0
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-object v0

    #@2d
    .line 59
    .local v0, "bytes":[B
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@30
    .line 61
    const-wide/16 v4, -0x1

    #@32
    cmp-long v4, v2, v4

    #@34
    if-eqz v4, :cond_1

    #@36
    array-length v4, v0

    #@37
    int-to-long v4, v4

    #@38
    cmp-long v4, v2, v4

    #@3a
    if-eqz v4, :cond_1

    #@3c
    .line 62
    new-instance v4, Ljava/io/IOException;

    #@3e
    const-string/jumbo v5, "Content-Length and stream length disagree"

    #@41
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v4

    #@45
    .line 58
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v4

    #@46
    .line 59
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@49
    .line 58
    throw v4

    #@4a
    .line 64
    .restart local v0    # "bytes":[B
    :cond_1
    return-object v0
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    #@2
    .line 74
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "r":Ljava/io/Reader;
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "r":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    #@7
    .end local v0    # "r":Ljava/io/Reader;
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@12
    iput-object v0, p0, Lcom/android/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    #@14
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    #@7
    .line 91
    return-void
.end method

.method public abstract contentLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract contentType()Lcom/android/okhttp/MediaType;
.end method

.method public abstract source()Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final string()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->bytes()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@11
    return-object v0
.end method
