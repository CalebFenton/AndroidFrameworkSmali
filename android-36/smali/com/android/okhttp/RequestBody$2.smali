.class Lcom/android/okhttp/RequestBody$2;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$byteCount:I

.field final synthetic blacklist val$content:[B

.field final synthetic blacklist val$contentType:Lcom/android/okhttp/MediaType;

.field final synthetic blacklist val$offset:I


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/MediaType;I[BI)V
    .registers 5

    .line 90
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$2;->val$contentType:Lcom/android/okhttp/MediaType;

    iput p2, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lcom/android/okhttp/RequestBody$2;->val$content:[B

    iput p4, p0, Lcom/android/okhttp/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3

    .line 96
    iget p0, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/okhttp/RequestBody$2;->val$contentType:Lcom/android/okhttp/MediaType;

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$2;->val$content:[B

    iget v1, p0, Lcom/android/okhttp/RequestBody$2;->val$offset:I

    iget p0, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, p0}, Lcom/android/okhttp/okio/BufferedSink;->write([BII)Lcom/android/okhttp/okio/BufferedSink;

    return-void
.end method
