.class Landroid/net/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "content-length"

.field private static final HOST_HEADER:Ljava/lang/String; = "Host"

.field private static requestContentProcessor:Lorg/apache/http/protocol/RequestContent;


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field volatile mCancelled:Z

.field private final mClientResource:Ljava/lang/Object;

.field private mConnection:Landroid/net/http/Connection;

.field mEventHandler:Landroid/net/http/EventHandler;

.field mFailCount:I

.field mHost:Lorg/apache/http/HttpHost;

.field mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

.field private mLoadingPaused:Z

.field mPath:Ljava/lang/String;

.field mProxyHost:Lorg/apache/http/HttpHost;

.field private mReceivedBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 93
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    #@5
    .line 92
    sput-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    #@7
    .line 47
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "proxyHost"    # Lorg/apache/http/HttpHost;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "bodyProvider"    # Ljava/io/InputStream;
    .param p6, "bodyLength"    # I
    .param p7, "eventHandler"    # Landroid/net/http/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/EventHandler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p8, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@1
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput-boolean v1, p0, Landroid/net/http/Request;->mCancelled:Z

    #@6
    .line 69
    iput v1, p0, Landroid/net/http/Request;->mFailCount:I

    #@8
    .line 73
    iput v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    #@a
    .line 83
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    #@11
    .line 86
    iput-boolean v1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    #@13
    .line 110
    iput-object p7, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@15
    .line 111
    iput-object p2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@17
    .line 112
    iput-object p3, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    #@19
    .line 113
    iput-object p4, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    #@1b
    .line 114
    iput-object p5, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    #@1d
    .line 115
    iput p6, p0, Landroid/net/http/Request;->mBodyLength:I

    #@1f
    .line 117
    if-nez p5, :cond_0

    #@21
    const-string/jumbo v0, "POST"

    #@24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 120
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    #@2c
    .line 121
    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 120
    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@35
    .line 125
    if-eqz p5, :cond_1

    #@37
    .line 126
    invoke-direct {p0, p5, p6}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    #@3a
    .line 129
    :cond_1
    :goto_0
    const-string/jumbo v0, "Host"

    #@3d
    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    .line 134
    const-string/jumbo v0, "Accept-Encoding"

    #@47
    const-string/jumbo v1, "gzip"

    #@4a
    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 135
    invoke-virtual {p0, p8}, Landroid/net/http/Request;->addHeaders(Ljava/util/Map;)V

    #@50
    .line 109
    return-void

    #@51
    .line 118
    :cond_2
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    #@53
    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@5c
    goto :goto_0
.end method

.method private static canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z
    .locals 3
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 473
    const-string/jumbo v1, "HEAD"

    #@4
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 474
    return v0

    #@13
    .line 476
    :cond_0
    const/16 v1, 0xc8

    #@15
    if-lt p1, v1, :cond_1

    #@17
    .line 477
    const/16 v1, 0xcc

    #@19
    if-eq p1, v1, :cond_1

    #@1b
    .line 478
    const/16 v1, 0x130

    #@1d
    if-eq p1, v1, :cond_1

    #@1f
    const/4 v0, 0x1

    #@20
    .line 476
    :cond_1
    return v0
.end method

.method private setBodyProvider(Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "bodyProvider"    # Ljava/io/InputStream;
    .param p2, "bodyLength"    # I

    #@0
    .prologue
    .line 490
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 492
    const-string/jumbo v1, "bodyProvider must support mark()"

    #@b
    .line 491
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 495
    :cond_0
    const v0, 0x7fffffff

    #@12
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    #@15
    .line 497
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@17
    check-cast v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    #@19
    .line 498
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    #@1b
    int-to-long v2, p2

    #@1c
    invoke-direct {v1, p1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    #@1f
    .line 497
    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    #@22
    .line 489
    return-void
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    if-nez p1, :cond_0

    #@2
    .line 169
    const-string/jumbo v0, "Null http header name"

    #@5
    .line 170
    .local v0, "damage":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    #@8
    .line 171
    new-instance v1, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 173
    .end local v0    # "damage":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    #@10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_2

    #@16
    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Null or empty value for header \""

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "\""

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 175
    .restart local v0    # "damage":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    #@34
    .line 176
    new-instance v1, Ljava/lang/RuntimeException;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 178
    .end local v0    # "damage":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@3c
    invoke-virtual {v1, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 167
    return-void
.end method

.method addHeaders(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    .line 187
    return-void

    #@3
    .line 191
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 192
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 194
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/lang/String;

    #@1d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Ljava/lang/String;

    #@23
    invoke-virtual {p0, v2, v3}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    goto :goto_0

    #@27
    .line 185
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method declared-synchronized cancel()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 369
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    #@4
    .line 370
    invoke-virtual {p0}, Landroid/net/http/Request;->notify()V

    #@7
    .line 372
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    #@a
    .line 373
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 374
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    #@10
    invoke-virtual {v0}, Landroid/net/http/Connection;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 362
    return-void

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method complete()V
    .locals 2

    #@0
    .prologue
    .line 452
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 453
    :try_start_0
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 451
    return-void

    #@a
    .line 452
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method error(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorId"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 518
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    #@5
    .line 517
    return-void
.end method

.method getEventHandler()Landroid/net/http/EventHandler;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@2
    return-object v0
.end method

.method getHostPort()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 379
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@2
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 380
    .local v1, "myScheme":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@8
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    #@b
    move-result v0

    #@c
    .line 383
    .local v0, "myPort":I
    const/16 v2, 0x50

    #@e
    if-eq v0, v2, :cond_0

    #@10
    const-string/jumbo v2, "http"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 384
    :cond_0
    const/16 v2, 0x1bb

    #@1b
    if-eq v0, v2, :cond_2

    #@1d
    const-string/jumbo v2, "https"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    .line 383
    if-eqz v2, :cond_2

    #@26
    .line 385
    :cond_1
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@28
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    return-object v2

    #@2d
    .line 387
    :cond_2
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@2f
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    return-object v2
.end method

.method getUri()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 393
    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@6
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "https"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    .line 392
    if-eqz v0, :cond_1

    #@13
    .line 394
    :cond_0
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    #@15
    return-object v0

    #@16
    .line 396
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@1d
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, "://"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 1
    .param p1, "proceed"    # Z

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    #@2
    check-cast v0, Landroid/net/http/HttpsConnection;

    #@4
    .line 508
    .local v0, "connection":Landroid/net/http/HttpsConnection;
    if-eqz v0, :cond_0

    #@6
    .line 509
    invoke-virtual {v0, p1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    #@9
    .line 506
    :cond_0
    return-void
.end method

.method readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    .locals 27
    .param p1, "httpClientConnection"    # Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    #@4
    move/from16 v23, v0

    #@6
    if-eqz v23, :cond_0

    #@8
    return-void

    #@9
    .line 242
    :cond_0
    const/16 v20, 0x0

    #@b
    .line 243
    .local v20, "statusLine":Lorg/apache/http/StatusLine;
    const/4 v12, 0x0

    #@c
    .line 244
    .local v12, "hasBody":Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    #@f
    .line 245
    const/16 v19, 0x0

    #@11
    .line 247
    .local v19, "statusCode":I
    new-instance v13, Landroid/net/http/Headers;

    #@13
    invoke-direct {v13}, Landroid/net/http/Headers;-><init>()V

    #@16
    .line 249
    .end local v20    # "statusLine":Lorg/apache/http/StatusLine;
    .local v13, "header":Landroid/net/http/Headers;
    :cond_1
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v0, v13}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    #@1b
    move-result-object v20

    #@1c
    .line 250
    .local v20, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@1f
    move-result v19

    #@20
    .line 251
    const/16 v23, 0xc8

    #@22
    move/from16 v0, v19

    #@24
    move/from16 v1, v23

    #@26
    if-lt v0, v1, :cond_1

    #@28
    .line 256
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@2b
    move-result-object v22

    #@2c
    .line 257
    .local v22, "v":Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@30
    move-object/from16 v23, v0

    #@32
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    #@35
    move-result v24

    #@36
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    #@39
    move-result v25

    #@3a
    .line 258
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    #@3d
    move-result-object v26

    #@3e
    .line 257
    move-object/from16 v0, v23

    #@40
    move/from16 v1, v24

    #@42
    move/from16 v2, v25

    #@44
    move/from16 v3, v19

    #@46
    move-object/from16 v4, v26

    #@48
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    #@4b
    .line 259
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@4f
    move-object/from16 v23, v0

    #@51
    move-object/from16 v0, v23

    #@53
    invoke-interface {v0, v13}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    #@56
    .line 260
    const/4 v11, 0x0

    #@57
    .line 261
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@5b
    move-object/from16 v23, v0

    #@5d
    move-object/from16 v0, v23

    #@5f
    move/from16 v1, v19

    #@61
    invoke-static {v0, v1}, Landroid/net/http/Request;->canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z

    #@64
    move-result v12

    #@65
    .line 263
    .local v12, "hasBody":Z
    if-eqz v12, :cond_2

    #@67
    .line 264
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v0, v13}, Landroid/net/http/AndroidHttpClientConnection;->receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;

    #@6c
    move-result-object v11

    #@6d
    .line 268
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2
    const-string/jumbo v23, "bytes"

    #@70
    invoke-virtual {v13}, Landroid/net/http/Headers;->getAcceptRanges()Ljava/lang/String;

    #@73
    move-result-object v24

    #@74
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@77
    move-result v21

    #@78
    .line 271
    .local v21, "supportPartialContent":Z
    if-eqz v11, :cond_5

    #@7a
    .line 272
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@7d
    move-result-object v14

    #@7e
    .line 275
    .local v14, "is":Ljava/io/InputStream;
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@81
    move-result-object v6

    #@82
    .line 276
    .local v6, "contentEncoding":Lorg/apache/http/Header;
    const/16 v17, 0x0

    #@84
    .line 277
    .local v17, "nis":Ljava/io/InputStream;
    const/4 v5, 0x0

    #@85
    .line 278
    .local v5, "buf":[B
    const/4 v7, 0x0

    #@86
    .line 280
    .local v7, "count":I
    if-eqz v6, :cond_6

    #@88
    .line 281
    :try_start_0
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@8b
    move-result-object v23

    #@8c
    const-string/jumbo v24, "gzip"

    #@8f
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v23

    #@93
    .line 280
    if-eqz v23, :cond_6

    #@95
    .line 282
    new-instance v18, Ljava/util/zip/GZIPInputStream;

    #@97
    move-object/from16 v0, v18

    #@99
    invoke-direct {v0, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    #@9c
    .local v18, "nis":Ljava/io/InputStream;
    move-object/from16 v17, v18

    #@9e
    .line 289
    .end local v18    # "nis":Ljava/io/InputStream;
    .local v17, "nis":Ljava/io/InputStream;
    :goto_0
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    #@a2
    move-object/from16 v23, v0

    #@a4
    invoke-virtual/range {v23 .. v23}, Landroid/net/http/Connection;->getBuf()[B

    #@a7
    move-result-object v5

    #@a8
    .line 290
    .local v5, "buf":[B
    const/4 v15, 0x0

    #@a9
    .line 291
    .local v15, "len":I
    array-length v0, v5

    #@aa
    move/from16 v23, v0

    #@ac
    div-int/lit8 v16, v23, 0x2

    #@ae
    .line 292
    .local v16, "lowWater":I
    :cond_3
    :goto_1
    const/16 v23, -0x1

    #@b0
    move/from16 v0, v23

    #@b2
    if-eq v15, v0, :cond_a

    #@b4
    .line 293
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b5
    .line 294
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    #@b7
    iget-boolean v0, v0, Landroid/net/http/Request;->mLoadingPaused:Z

    #@b9
    move/from16 v23, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bb
    if-eqz v23, :cond_7

    #@bd
    .line 300
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Request;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c0
    goto :goto_2

    #@c1
    .line 301
    :catch_0
    move-exception v10

    #@c2
    .line 302
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v23, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v24, "Interrupted exception whilst network thread paused at WebCore\'s request. "

    #@ca
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v23

    #@ce
    .line 304
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    #@d1
    move-result-object v24

    #@d2
    .line 302
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v23

    #@d6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v23

    #@da
    invoke-static/range {v23 .. v23}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@dd
    goto :goto_2

    #@de
    .line 293
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v23

    #@df
    :try_start_4
    monitor-exit p0

    #@e0
    throw v23
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e1
    .line 321
    .end local v5    # "buf":[B
    .end local v15    # "len":I
    .end local v16    # "lowWater":I
    .end local v17    # "nis":Ljava/io/InputStream;
    :catch_1
    move-exception v8

    #@e2
    .line 325
    .local v8, "e":Ljava/io/EOFException;
    if-lez v7, :cond_4

    #@e4
    .line 327
    :try_start_5
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@e8
    move-object/from16 v23, v0

    #@ea
    move-object/from16 v0, v23

    #@ec
    invoke-interface {v0, v5, v7}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ef
    .line 342
    :cond_4
    if-eqz v17, :cond_5

    #@f1
    .line 343
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    #@f4
    .line 347
    .end local v6    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "count":I
    .end local v8    # "e":Ljava/io/EOFException;
    .end local v14    # "is":Ljava/io/InputStream;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    #@f8
    move-object/from16 v23, v0

    #@fa
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@fd
    move-result-object v24

    #@fe
    .line 348
    invoke-virtual {v13}, Landroid/net/http/Headers;->getConnectionType()I

    #@101
    move-result v25

    #@102
    .line 347
    move-object/from16 v0, v23

    #@104
    move-object/from16 v1, v24

    #@106
    move/from16 v2, v25

    #@108
    invoke-virtual {v0, v11, v1, v2}, Landroid/net/http/Connection;->setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V

    #@10b
    .line 349
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@10f
    move-object/from16 v23, v0

    #@111
    invoke-interface/range {v23 .. v23}, Landroid/net/http/EventHandler;->endData()V

    #@114
    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Request;->complete()V

    #@117
    .line 238
    return-void

    #@118
    .line 284
    .local v5, "buf":[B
    .restart local v6    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "count":I
    .restart local v14    # "is":Ljava/io/InputStream;
    .local v17, "nis":Ljava/io/InputStream;
    :cond_6
    move-object/from16 v17, v14

    #@11a
    .local v17, "nis":Ljava/io/InputStream;
    goto :goto_0

    #@11b
    .local v5, "buf":[B
    .restart local v15    # "len":I
    .restart local v16    # "lowWater":I
    :cond_7
    :try_start_6
    monitor-exit p0

    #@11c
    .line 309
    array-length v0, v5

    #@11d
    move/from16 v23, v0

    #@11f
    sub-int v23, v23, v7

    #@121
    move-object/from16 v0, v17

    #@123
    move/from16 v1, v23

    #@125
    invoke-virtual {v0, v5, v7, v1}, Ljava/io/InputStream;->read([BII)I

    #@128
    move-result v15

    #@129
    .line 311
    const/16 v23, -0x1

    #@12b
    move/from16 v0, v23

    #@12d
    if-eq v15, v0, :cond_8

    #@12f
    .line 312
    add-int/2addr v7, v15

    #@130
    .line 313
    if-eqz v21, :cond_8

    #@132
    move-object/from16 v0, p0

    #@134
    iget v0, v0, Landroid/net/http/Request;->mReceivedBytes:I

    #@136
    move/from16 v23, v0

    #@138
    add-int v23, v23, v15

    #@13a
    move/from16 v0, v23

    #@13c
    move-object/from16 v1, p0

    #@13e
    iput v0, v1, Landroid/net/http/Request;->mReceivedBytes:I

    #@140
    .line 315
    :cond_8
    const/16 v23, -0x1

    #@142
    move/from16 v0, v23

    #@144
    if-eq v15, v0, :cond_9

    #@146
    move/from16 v0, v16

    #@148
    if-lt v7, v0, :cond_3

    #@14a
    .line 317
    :cond_9
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@14e
    move-object/from16 v23, v0

    #@150
    move-object/from16 v0, v23

    #@152
    invoke-interface {v0, v5, v7}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@155
    .line 318
    const/4 v7, 0x0

    #@156
    goto/16 :goto_1

    #@158
    .line 342
    :cond_a
    if-eqz v17, :cond_5

    #@15a
    .line 343
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    #@15d
    goto :goto_3

    #@15e
    .line 330
    .end local v5    # "buf":[B
    .end local v15    # "len":I
    .end local v16    # "lowWater":I
    .end local v17    # "nis":Ljava/io/InputStream;
    :catch_2
    move-exception v9

    #@15f
    .line 332
    .local v9, "e":Ljava/io/IOException;
    const/16 v23, 0xc8

    #@161
    move/from16 v0, v19

    #@163
    move/from16 v1, v23

    #@165
    if-eq v0, v1, :cond_b

    #@167
    .line 333
    const/16 v23, 0xce

    #@169
    move/from16 v0, v19

    #@16b
    move/from16 v1, v23

    #@16d
    if-ne v0, v1, :cond_e

    #@16f
    .line 334
    :cond_b
    if-eqz v21, :cond_c

    #@171
    if-lez v7, :cond_c

    #@173
    .line 337
    :try_start_7
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@177
    move-object/from16 v23, v0

    #@179
    move-object/from16 v0, v23

    #@17b
    invoke-interface {v0, v5, v7}, Landroid/net/http/EventHandler;->data([BI)V

    #@17e
    .line 339
    :cond_c
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@17f
    .line 341
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v23

    #@180
    .line 342
    if-eqz v17, :cond_d

    #@182
    .line 343
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    #@185
    .line 341
    :cond_d
    throw v23

    #@186
    .line 342
    .restart local v9    # "e":Ljava/io/IOException;
    :cond_e
    if-eqz v17, :cond_5

    #@188
    .line 343
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    #@18b
    goto/16 :goto_3
.end method

.method reset()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 413
    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@3
    const-string/jumbo v2, "content-length"

    #@6
    invoke-virtual {v1, v2}, Lorg/apache/http/message/BasicHttpRequest;->removeHeaders(Ljava/lang/String;)V

    #@9
    .line 415
    iget-object v1, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 417
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    #@f
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 423
    :goto_0
    iget-object v1, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    #@14
    iget v2, p0, Landroid/net/http/Request;->mBodyLength:I

    #@16
    invoke-direct {p0, v1, v2}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    #@19
    .line 426
    :cond_0
    iget v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    #@1b
    if-lez v1, :cond_1

    #@1d
    .line 428
    iput v3, p0, Landroid/net/http/Request;->mFailCount:I

    #@1f
    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "*** Request.reset() to range:"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget v2, p0, Landroid/net/http/Request;->mReceivedBytes:I

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v1}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    #@38
    .line 432
    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@3a
    const-string/jumbo v2, "Range"

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "bytes="

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    iget v4, p0, Landroid/net/http/Request;->mReceivedBytes:I

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, "-"

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/message/BasicHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 411
    :cond_1
    return-void

    #@5e
    .line 418
    :catch_0
    move-exception v0

    #@5f
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    .locals 3
    .param p1, "httpClientConnection"    # Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    iget-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 218
    :cond_0
    sget-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    #@7
    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@9
    .line 219
    iget-object v2, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    #@b
    invoke-virtual {v2}, Landroid/net/http/Connection;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    #@e
    move-result-object v2

    #@f
    .line 218
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/RequestContent;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    #@12
    .line 220
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@14
    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    #@17
    .line 221
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@19
    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 223
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@1f
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@21
    .line 222
    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    #@24
    .line 202
    :cond_1
    return-void
.end method

.method setConnection(Landroid/net/http/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/net/http/Connection;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    #@2
    .line 153
    return-void
.end method

.method declared-synchronized setLoadingPaused(Z)V
    .locals 1
    .param p1, "pause"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 142
    :try_start_0
    iput-boolean p1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    #@3
    .line 145
    iget-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 146
    invoke-virtual {p0}, Landroid/net/http/Request;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 141
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method waitUntilComplete()V
    .locals 3

    #@0
    .prologue
    .line 441
    iget-object v2, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    #@5
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :goto_0
    monitor-exit v2

    #@9
    .line 440
    return-void

    #@a
    .line 441
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v2

    #@c
    throw v1

    #@d
    .line 446
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
