.class final Lcom/android/okhttp/RequestBody$2;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;I[BI)V
    .locals 0
    .param p1, "val$contentType"    # Lcom/android/okhttp/MediaType;
    .param p2, "val$byteCount"    # I
    .param p3, "val$content"    # [B
    .param p4, "val$offset"    # I

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$2;->val$contentType:Lcom/android/okhttp/MediaType;

    #@2
    iput p2, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    #@4
    iput-object p3, p0, Lcom/android/okhttp/RequestBody$2;->val$content:[B

    #@6
    iput p4, p0, Lcom/android/okhttp/RequestBody$2;->val$offset:I

    #@8
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    #@0
    .prologue
    .line 92
    iget v0, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$2;->val$contentType:Lcom/android/okhttp/MediaType;

    #@2
    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .locals 3
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$2;->val$content:[B

    #@2
    iget v1, p0, Lcom/android/okhttp/RequestBody$2;->val$offset:I

    #@4
    iget v2, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    #@6
    invoke-interface {p1, v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->write([BII)Lcom/android/okhttp/okio/BufferedSink;

    #@9
    .line 95
    return-void
.end method
