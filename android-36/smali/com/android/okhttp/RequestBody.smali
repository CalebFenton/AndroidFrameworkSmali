.class public abstract Lcom/android/okhttp/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;
    .registers 3

    .line 65
    new-instance v0, Lcom/android/okhttp/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/RequestBody$1;-><init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)V

    return-object v0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;Ljava/io/File;)Lcom/android/okhttp/RequestBody;
    .registers 3

    if-eqz p1, :cond_8

    .line 109
    new-instance v0, Lcom/android/okhttp/RequestBody$3;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/RequestBody$3;-><init>(Lcom/android/okhttp/MediaType;Ljava/io/File;)V

    return-object v0

    .line 107
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/RequestBody;
    .registers 4

    .line 51
    sget-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_21

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_20

    .line 56
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

    .line 59
    :cond_21
    :goto_21
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 60
    invoke-static {p0, p1}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;
    .registers 4

    .line 82
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;
    .registers 11

    if-eqz p1, :cond_f

    .line 89
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 90
    new-instance v0, Lcom/android/okhttp/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/okhttp/RequestBody$2;-><init>(Lcom/android/okhttp/MediaType;I[BI)V

    return-object v0

    .line 88
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist-max-o contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract greylist-max-o contentType()Lcom/android/okhttp/MediaType;
.end method

.method public abstract greylist-max-o writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
