.class public abstract Lcom/android/okhttp/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;
    .locals 1
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    .line 61
    new-instance v0, Lcom/android/okhttp/RequestBody$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/RequestBody$1;-><init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)V

    #@5
    return-object v0
.end method

.method public static create(Lcom/android/okhttp/MediaType;Ljava/io/File;)Lcom/android/okhttp/RequestBody;
    .locals 2
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 103
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "content == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 105
    :cond_0
    new-instance v0, Lcom/android/okhttp/RequestBody$3;

    #@d
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/RequestBody$3;-><init>(Lcom/android/okhttp/MediaType;Ljava/io/File;)V

    #@10
    return-object v0
.end method

.method public static create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/RequestBody;
    .locals 4
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    sget-object v1, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    .line 48
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    #@4
    .line 49
    invoke-virtual {p0}, Lcom/android/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    #@7
    move-result-object v1

    #@8
    .line 50
    if-nez v1, :cond_0

    #@a
    .line 51
    sget-object v1, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@c
    .line 52
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
    .line 55
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@27
    move-result-object v0

    #@28
    .line 56
    .local v0, "bytes":[B
    invoke-static {p0, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method public static create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;
    .locals 2
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # [B

    #@0
    .prologue
    .line 78
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;
    .locals 6
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 84
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "content == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 85
    :cond_0
    array-length v0, p1

    #@c
    int-to-long v0, v0

    #@d
    int-to-long v2, p2

    #@e
    int-to-long v4, p3

    #@f
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    #@12
    .line 86
    new-instance v0, Lcom/android/okhttp/RequestBody$2;

    #@14
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/okhttp/RequestBody$2;-><init>(Lcom/android/okhttp/MediaType;I[BI)V

    #@17
    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public abstract contentType()Lcom/android/okhttp/MediaType;
.end method

.method public abstract writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
