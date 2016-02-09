.class public final Lcom/android/okhttp/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/android/okhttp/RequestBody;

.field private volatile cacheControl:Lcom/android/okhttp/CacheControl;

.field private final headers:Lcom/android/okhttp/Headers;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private volatile uri:Ljava/net/URI;

.field private volatile url:Ljava/net/URL;

.field private final urlString:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/Request;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/Request;)Ljava/net/URL;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request;->urlString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/okhttp/Request$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/Request$Builder;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get5(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/Request;->urlString:Ljava/lang/String;

    #@9
    .line 44
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get2(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    #@f
    .line 45
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get1(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    #@19
    .line 46
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get0(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    #@1f
    .line 47
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get3(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    if-eqz v0, :cond_0

    #@25
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get3(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    :goto_0
    iput-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    #@2b
    .line 48
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get4(Lcom/android/okhttp/Request$Builder;)Ljava/net/URL;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;

    #@31
    .line 42
    return-void

    #@32
    :cond_0
    move-object v0, p0

    #@33
    .line 47
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/Request$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;)V

    #@3
    return-void
.end method


# virtual methods
.method public body()Lcom/android/okhttp/RequestBody;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    #@2
    return-object v0
.end method

.method public cacheControl()Lcom/android/okhttp/CacheControl;
    .locals 2

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    #@2
    .line 107
    .local v0, "result":Lcom/android/okhttp/CacheControl;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Lcom/android/okhttp/CacheControl;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    #@7
    invoke-static {v1}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    #@a
    move-result-object v0

    #@b
    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    iput-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    #@d
    goto :goto_0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headers()Lcom/android/okhttp/Headers;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    #@2
    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "https"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public newBuilder()Lcom/android/okhttp/Request$Builder;
    .locals 2

    #@0
    .prologue
    .line 98
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$Builder;)V

    #@6
    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Request{method="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 116
    iget-object v1, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    #@e
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 117
    const-string/jumbo v1, ", url="

    #@15
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 118
    iget-object v1, p0, Lcom/android/okhttp/Request;->urlString:Ljava/lang/String;

    #@1b
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 119
    const-string/jumbo v1, ", tag="

    #@22
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 120
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    #@28
    if-eq v0, p0, :cond_0

    #@2a
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    #@2c
    .line 115
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 121
    const/16 v1, 0x7d

    #@32
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0

    #@3b
    .line 120
    :cond_0
    const/4 v0, 0x0

    #@3c
    goto :goto_0
.end method

.method public uri()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Request;->uri:Ljava/net/URI;

    #@2
    .line 63
    .local v1, "result":Ljava/net/URI;
    if-eqz v1, :cond_0

    #@4
    .end local v1    # "result":Ljava/net/URI;
    :goto_0
    return-object v1

    #@5
    .restart local v1    # "result":Ljava/net/URI;
    :cond_0
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/Platform;->toUriLenient(Ljava/net/URL;)Ljava/net/URI;

    #@10
    move-result-object v1

    #@11
    .end local v1    # "result":Ljava/net/URI;
    iput-object v1, p0, Lcom/android/okhttp/Request;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 64
    :catch_0
    move-exception v0

    #@15
    .line 65
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/IOException;

    #@17
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
.end method

.method public url()Ljava/net/URL;
    .locals 5

    #@0
    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;

    #@2
    .line 54
    .local v1, "result":Ljava/net/URL;
    if-eqz v1, :cond_0

    #@4
    .end local v1    # "result":Ljava/net/URL;
    :goto_0
    return-object v1

    #@5
    .restart local v1    # "result":Ljava/net/URL;
    :cond_0
    new-instance v1, Ljava/net/URL;

    #@7
    .end local v1    # "result":Ljava/net/URL;
    iget-object v2, p0, Lcom/android/okhttp/Request;->urlString:Ljava/lang/String;

    #@9
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v1, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    goto :goto_0

    #@f
    .line 55
    :catch_0
    move-exception v0

    #@10
    .line 56
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Malformed URL: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    iget-object v4, p0, Lcom/android/okhttp/Request;->urlString:Ljava/lang/String;

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v2
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/Request;->urlString:Ljava/lang/String;

    #@2
    return-object v0
.end method
