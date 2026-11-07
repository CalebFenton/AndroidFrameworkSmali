.class public final Lcom/android/okhttp/internal/http/RequestLine;
.super Ljava/lang/Object;
.source "RequestLine.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;
    .registers 4

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/http/RequestLine;->includeAuthorityInRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 27
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 29
    :cond_1f
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_2a
    const-string p0, " HTTP/1.1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist includeAuthorityInRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Z
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .registers 3

    .line 50
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v0
.end method
