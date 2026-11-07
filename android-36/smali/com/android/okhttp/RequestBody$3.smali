.class Lcom/android/okhttp/RequestBody$3;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Ljava/io/File;)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$contentType:Lcom/android/okhttp/MediaType;

.field final synthetic blacklist val$file:Ljava/io/File;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/MediaType;Ljava/io/File;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$3;->val$contentType:Lcom/android/okhttp/MediaType;

    iput-object p2, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3

    .line 115
    iget-object p0, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/okhttp/RequestBody$3;->val$contentType:Lcom/android/okhttp/MediaType;

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    :try_start_1
    iget-object p0, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 124
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_e
    move-exception p0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    throw p0
.end method
