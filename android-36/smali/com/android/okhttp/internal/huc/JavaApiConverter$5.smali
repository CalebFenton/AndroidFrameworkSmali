.class Lcom/android/okhttp/internal/huc/JavaApiConverter$5;
.super Lcom/android/okhttp/ResponseBody;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist body:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic blacklist val$urlConnection:Ljava/net/URLConnection;


# direct methods
.method constructor blacklist <init>(Ljava/net/URLConnection;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3

    .line 514
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 515
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->stringToLong(Ljava/lang/String;)J
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$000(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 1

    .line 510
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 511
    :cond_a
    invoke-static {p0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public blacklist source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    if-nez v0, :cond_14

    .line 519
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 520
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    .line 522
    :cond_14
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    return-object p0
.end method
