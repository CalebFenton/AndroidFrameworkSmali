.class public Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;
.super Ljava/lang/Object;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# instance fields
.field private final mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "appAndVersion"    # Ljava/lang/String;
    .param p3, "gzipCapable"    # Z

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, " ("

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, ")"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 106
    .local v0, "userAgent":Ljava/lang/String;
    if-nez p3, :cond_0

    #@33
    .line 109
    :goto_0
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@39
    .line 110
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    #@3b
    .line 111
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    #@3d
    .line 112
    return-void

    #@3e
    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    const-string/jumbo v2, "; gzip"

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    goto :goto_0
.end method

.method private static wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 3
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    :try_start_0
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 205
    new-instance v1, Lorg/apache/http/impl/client/RequestWrapper;

    #@6
    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    #@9
    .line 209
    .end local p0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .local v1, "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    #@c
    .line 211
    return-object v1

    #@d
    .line 202
    .end local v1    # "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local p0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    #@f
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@11
    .end local p0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .restart local v1    # "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    goto :goto_0

    #@15
    .line 211
    .end local v1    # "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v0

    #@16
    .line 213
    .local v0, "e":Lorg/apache/http/ProtocolException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    #@18
    invoke-direct {v2, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->close()V

    #@5
    .line 120
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 242
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    #@3
    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@3
    move-result-object v2

    #@4
    .line 173
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 176
    .local v1, "original":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    #@a
    .end local v2    # "uri":Ljava/net/URI;
    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 182
    .restart local v2    # "uri":Ljava/net/URI;
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    #@10
    move-result-object v3

    #@11
    .line 183
    .local v3, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    #@14
    .line 184
    move-object p1, v3

    #@15
    .line 189
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@18
    move-result-object v4

    #@19
    return-object v4

    #@1a
    .line 179
    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v0

    #@1b
    .line 178
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@1d
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "Bad URL from: "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@34
    throw v4
.end method

.method public executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-string/jumbo v0, "Error"

    #@3
    .line 127
    .local v0, "code":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v4

    #@7
    .line 129
    .local v4, "start":J
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@9
    invoke-virtual {v3, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@c
    move-result-object v2

    #@d
    .line 130
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v0

    #@19
    .line 131
    return-object v2

    #@1a
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    #@1b
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v0, "IOException"

    #@1e
    .line 134
    throw v1
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->mClient:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
