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

.field private volatile javaNetUri:Ljava/net/URI;

.field private volatile javaNetUrl:Ljava/net/URL;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lcom/android/okhttp/HttpUrl;


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

.method static synthetic -get4(Lcom/android/okhttp/Request;)Lcom/android/okhttp/HttpUrl;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/okhttp/Request$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/Request$Builder;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get4(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/HttpUrl;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    #@9
    .line 41
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get2(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    #@f
    .line 42
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
    .line 43
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get0(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    #@1f
    .line 44
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
    .line 39
    return-void

    #@2c
    :cond_0
    move-object v0, p0

    #@2d
    .line 44
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
    .line 86
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    #@2
    return-object v0
.end method

.method public cacheControl()Lcom/android/okhttp/CacheControl;
    .locals 2

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    #@2
    .line 103
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
    .line 78
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
    .line 74
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
    .line 82
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public httpUrl()Lcom/android/okhttp/HttpUrl;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    #@2
    return-object v0
.end method

.method public isHttps()Z
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->isHttps()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public newBuilder()Lcom/android/okhttp/Request$Builder;
    .locals 2

    #@0
    .prologue
    .line 94
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
    .line 90
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 111
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
    .line 112
    iget-object v1, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    #@e
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 113
    const-string/jumbo v1, ", url="

    #@15
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 114
    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    #@1b
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 115
    const-string/jumbo v1, ", tag="

    #@22
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 116
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    #@28
    if-eq v0, p0, :cond_0

    #@2a
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    #@2c
    .line 111
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 117
    const/16 v1, 0x7d

    #@32
    .line 111
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
    .line 116
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
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Request;->javaNetUri:Ljava/net/URI;

    #@2
    .line 59
    .local v1, "result":Ljava/net/URI;
    if-eqz v1, :cond_0

    #@4
    .end local v1    # "result":Ljava/net/URI;
    :goto_0
    return-object v1

    #@5
    .restart local v1    # "result":Ljava/net/URI;
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    #@7
    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    #@a
    move-result-object v1

    #@b
    .end local v1    # "result":Ljava/net/URI;
    iput-object v1, p0, Lcom/android/okhttp/Request;->javaNetUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    goto :goto_0

    #@e
    .line 60
    :catch_0
    move-exception v0

    #@f
    .line 61
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/IOException;

    #@11
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2
.end method

.method public url()Ljava/net/URL;
    .locals 2

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    #@2
    .line 53
    .local v0, "result":Ljava/net/URL;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Ljava/net/URL;
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Ljava/net/URL;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    #@7
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    #@a
    move-result-object v0

    #@b
    .end local v0    # "result":Ljava/net/URL;
    iput-object v0, p0, Lcom/android/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    #@d
    goto :goto_0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
