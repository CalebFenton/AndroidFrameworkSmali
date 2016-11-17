.class final Lcom/android/okhttp/RequestBody$1;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/android/okhttp/okio/ByteString;

.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)V
    .locals 0
    .param p1, "val$contentType"    # Lcom/android/okhttp/MediaType;
    .param p2, "val$content"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    #@4
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    #@7
    return-void
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
    .line 67
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    #@2
    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    #@2
    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    #@5
    .line 70
    return-void
.end method
