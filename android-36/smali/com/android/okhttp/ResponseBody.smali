.class public abstract Lcom/android/okhttp/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private greylist-max-o reader:Ljava/io/Reader;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o charset()Ljava/nio/charset/Charset;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 92
    sget-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object p0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;
    .registers 5

    if-eqz p3, :cond_8

    .line 126
    new-instance v0, Lcom/android/okhttp/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/okhttp/ResponseBody$1;-><init>(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)V

    return-object v0

    .line 125
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/ResponseBody;
    .registers 4

    .line 104
    sget-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_21

    .line 106
    invoke-virtual {p0}, Lcom/android/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_20

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object p0

    goto :goto_21

    :cond_20
    move-object v0, v1

    .line 112
    :cond_21
    :goto_21
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/ResponseBody;
    .registers 5

    .line 118
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write([B)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    .line 119
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final greylist-max-o byteStream()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final greylist-max-o bytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_31

    .line 58
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p0

    .line 61
    :try_start_f
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByteArray()[B

    move-result-object v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2c

    .line 63
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v3, -0x1

    cmp-long p0, v0, v3

    if-eqz p0, :cond_2b

    .line 65
    array-length p0, v2

    int-to-long v3, p0

    cmp-long p0, v0, v3

    if-nez p0, :cond_23

    goto :goto_2b

    .line 66
    :cond_23
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Content-Length and stream length disagree"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    :goto_2b
    return-object v2

    :catchall_2c
    move-exception v0

    .line 63
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 64
    throw v0

    .line 55
    :cond_31
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final greylist-max-o charStream()Ljava/io/Reader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_5

    return-object v0

    .line 78
    :cond_5
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/android/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->close()V

    return-void
.end method

.method public abstract greylist-max-o contentLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o contentType()Lcom/android/okhttp/MediaType;
.end method

.method public abstract greylist-max-o source()Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final greylist-max-o string()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
