.class final Lcom/android/okhttp/RequestBody$3;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Ljava/io/File;)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;Ljava/io/File;)V
    .locals 0
    .param p1, "val$contentType"    # Lcom/android/okhttp/MediaType;
    .param p2, "val$file"    # Ljava/io/File;

    #@0
    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$3;->val$contentType:Lcom/android/okhttp/MediaType;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    #@4
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$3;->val$contentType:Lcom/android/okhttp/MediaType;

    #@2
    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .locals 2
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    .line 117
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    #@3
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    #@6
    move-result-object v0

    #@7
    .line 118
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 120
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@d
    .line 114
    return-void

    #@e
    .line 119
    .end local v0    # "source":Lcom/android/okhttp/okio/Source;
    :catchall_0
    move-exception v1

    #@f
    .line 120
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@12
    .line 119
    throw v1
.end method
