.class public final Lcom/android/okhttp/internal/http/RealResponseBody;
.super Lcom/android/okhttp/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lcom/android/okhttp/Headers;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V
    .locals 0
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    #@5
    .line 29
    iput-object p2, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@7
    .line 27
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 33
    iget-object v2, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    #@3
    const-string/jumbo v3, "Content-Type"

    #@6
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 34
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@f
    move-result-object v1

    #@10
    :cond_0
    return-object v1
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    return-object v0
.end method
