.class public final Lcom/android/okhttp/internal/http/RequestLine;
.super Ljava/lang/Object;
.source "RequestLine.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;Lcom/android/okhttp/Protocol;)Ljava/lang/String;
    .locals 3
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;
    .param p2, "protocol"    # Lcom/android/okhttp/Protocol;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 20
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 23
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/http/RequestLine;->includeAuthorityInRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 24
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    .line 29
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 30
    invoke-static {p2}, Lcom/android/okhttp/internal/http/RequestLine;->version(Lcom/android/okhttp/Protocol;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@30
    move-result-object v1

    #@31
    invoke-static {v1}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_0
.end method

.method private static includeAuthorityInRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Z
    .locals 2
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 40
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->isHttps()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@9
    if-ne p1, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static requestPath(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 49
    .local v0, "pathAndQuery":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v1, "/"

    #@9
    return-object v1

    #@a
    .line 50
    :cond_0
    const-string/jumbo v1, "/"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "/"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 51
    :cond_1
    return-object v0
.end method

.method public static version(Lcom/android/okhttp/Protocol;)Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # Lcom/android/okhttp/Protocol;

    #@0
    .prologue
    .line 55
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const-string/jumbo v0, "HTTP/1.0"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    const-string/jumbo v0, "HTTP/1.1"

    #@b
    goto :goto_0
.end method
