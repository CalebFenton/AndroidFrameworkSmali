.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$5;
.super Lcom/android/okhttp/ResponseBody;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic val$urlConnection:Ljava/net/URLConnection;


# direct methods
.method constructor <init>(Ljava/net/URLConnection;)V
    .locals 0
    .param p1, "val$urlConnection"    # Ljava/net/URLConnection;

    #@0
    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    #@2
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    #@0
    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    #@2
    const-string/jumbo v2, "Content-Length"

    #@5
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 513
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap3(Ljava/lang/String;)J

    #@c
    move-result-wide v2

    #@d
    return-wide v2
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 508
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    #@3
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 509
    .local v0, "contentTypeHeader":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 517
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    #@6
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@9
    move-result-object v0

    #@a
    .line 518
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    #@d
    move-result-object v1

    #@e
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    #@14
    .line 520
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    #@16
    return-object v1
.end method
