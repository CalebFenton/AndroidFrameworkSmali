.class public Lcom/android/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Call$AsyncCall;,
        Lcom/android/okhttp/Call$ApplicationInterceptorChain;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lcom/android/okhttp/OkHttpClient;

.field engine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lcom/android/okhttp/Request;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/Call;Z)Lcom/android/okhttp/Response;
    .locals 1
    .param p1, "forWebSocket"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/Call;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/Call;->toLoggableString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)V
    .locals 1
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "originalRequest"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    #@9
    .line 51
    iput-object p2, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@b
    .line 47
    return-void
.end method

.method private getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;
    .locals 3
    .param p1, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    new-instance v0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, p0, v2, v1, p1}, Lcom/android/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V

    #@8
    .line 201
    .local v0, "chain":Lcom/android/okhttp/Interceptor$Chain;
    iget-object v1, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@a
    invoke-interface {v0, v1}, Lcom/android/okhttp/Interceptor$Chain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 190
    iget-boolean v3, p0, Lcom/android/okhttp/Call;->canceled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v2, "canceled call"

    #@7
    .line 192
    .local v2, "string":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    #@9
    iget-object v4, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@b
    invoke-virtual {v4}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@e
    move-result-object v4

    #@f
    const-string/jumbo v5, "/..."

    #@12
    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@15
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 193
    .local v1, "redactedUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, " to "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v3

    #@31
    return-object v3

    #@32
    .line 190
    .end local v1    # "redactedUrl":Ljava/lang/String;
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "call"

    #@35
    .restart local v2    # "string":Ljava/lang/String;
    goto :goto_0

    #@36
    .line 194
    :catch_0
    move-exception v0

    #@37
    .line 195
    .local v0, "e":Ljava/net/MalformedURLException;
    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 123
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    #@3
    .line 124
    iget-object v0, p0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@9
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->disconnect()V

    #@c
    .line 122
    :cond_0
    return-void
.end method

.method public enqueue(Lcom/android/okhttp/Callback;)V
    .locals 1
    .param p1, "responseCallback"    # Lcom/android/okhttp/Callback;

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Call;->enqueue(Lcom/android/okhttp/Callback;Z)V

    #@4
    .line 106
    return-void
.end method

.method enqueue(Lcom/android/okhttp/Callback;Z)V
    .locals 3
    .param p1, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p2, "forWebSocket"    # Z

    #@0
    .prologue
    .line 111
    monitor-enter p0

    #@1
    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Already Executed"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 111
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 113
    :cond_0
    const/4 v0, 0x1

    #@12
    :try_start_1
    iput-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 115
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    #@17
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    #@1a
    move-result-object v0

    #@1b
    new-instance v1, Lcom/android/okhttp/Call$AsyncCall;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/okhttp/Call$AsyncCall;-><init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;ZLcom/android/okhttp/Call$AsyncCall;)V

    #@21
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Dispatcher;->enqueue(Lcom/android/okhttp/Call$AsyncCall;)V

    #@24
    .line 110
    return-void
.end method

.method public execute()Lcom/android/okhttp/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    monitor-enter p0

    #@1
    .line 76
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/Call;->executed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "Already Executed"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 75
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 77
    :cond_0
    const/4 v1, 0x1

    #@12
    :try_start_1
    iput-boolean v1, p0, Lcom/android/okhttp/Call;->executed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 80
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    #@17
    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->executed(Lcom/android/okhttp/Call;)V

    #@1e
    .line 81
    const/4 v1, 0x0

    #@1f
    invoke-direct {p0, v1}, Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;

    #@22
    move-result-object v0

    #@23
    .line 82
    .local v0, "result":Lcom/android/okhttp/Response;
    if-nez v0, :cond_1

    #@25
    new-instance v1, Ljava/io/IOException;

    #@27
    const-string/jumbo v2, "Canceled"

    #@2a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2e
    .line 84
    .end local v0    # "result":Lcom/android/okhttp/Response;
    :catchall_1
    move-exception v1

    #@2f
    .line 85
    iget-object v2, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    #@31
    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call;)V

    #@38
    .line 84
    throw v1

    #@39
    .line 85
    .restart local v0    # "result":Lcom/android/okhttp/Response;
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    #@3b
    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call;)V

    #@42
    .line 83
    return-object v0
.end method

.method getResponse(Lcom/android/okhttp/Request;Z)Lcom/android/okhttp/Response;
    .locals 23
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    #@3
    move-result-object v12

    #@4
    .line 242
    .local v12, "body":Lcom/android/okhttp/RequestBody;
    if-eqz v12, :cond_1

    #@6
    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    #@9
    move-result-object v21

    #@a
    .line 245
    .local v21, "requestBuilder":Lcom/android/okhttp/Request$Builder;
    invoke-virtual {v12}, Lcom/android/okhttp/RequestBody;->contentType()Lcom/android/okhttp/MediaType;

    #@d
    move-result-object v13

    #@e
    .line 246
    .local v13, "contentType":Lcom/android/okhttp/MediaType;
    if-eqz v13, :cond_0

    #@10
    .line 247
    const-string/jumbo v2, "Content-Type"

    #@13
    invoke-virtual {v13}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    move-object/from16 v0, v21

    #@19
    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@1c
    .line 250
    :cond_0
    invoke-virtual {v12}, Lcom/android/okhttp/RequestBody;->contentLength()J

    #@1f
    move-result-wide v14

    #@20
    .line 251
    .local v14, "contentLength":J
    const-wide/16 v2, -0x1

    #@22
    cmp-long v2, v14, v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 252
    const-string/jumbo v2, "Content-Length"

    #@29
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    move-object/from16 v0, v21

    #@2f
    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@32
    .line 253
    const-string/jumbo v2, "Transfer-Encoding"

    #@35
    move-object/from16 v0, v21

    #@37
    invoke-virtual {v0, v2}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@3a
    .line 259
    :goto_0
    invoke-virtual/range {v21 .. v21}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@3d
    move-result-object p1

    #@3e
    .line 263
    .end local v13    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v14    # "contentLength":J
    .end local v21    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_1
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v3, v0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    #@44
    const/4 v5, 0x0

    #@45
    const/4 v6, 0x0

    #@46
    const/4 v8, 0x0

    #@47
    const/4 v9, 0x0

    #@48
    const/4 v10, 0x0

    #@49
    const/4 v11, 0x0

    #@4a
    move-object/from16 v4, p1

    #@4c
    move/from16 v7, p2

    #@4e
    invoke-direct/range {v2 .. v11}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    #@51
    move-object/from16 v0, p0

    #@53
    iput-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@55
    .line 265
    const/16 v20, 0x0

    #@57
    .line 267
    .local v20, "followUpCount":I
    :goto_1
    move-object/from16 v0, p0

    #@59
    iget-boolean v2, v0, Lcom/android/okhttp/Call;->canceled:Z

    #@5b
    if-eqz v2, :cond_3

    #@5d
    .line 268
    move-object/from16 v0, p0

    #@5f
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@61
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@64
    .line 269
    new-instance v2, Ljava/io/IOException;

    #@66
    const-string/jumbo v3, "Canceled"

    #@69
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v2

    #@6d
    .line 255
    .end local v20    # "followUpCount":I
    .restart local v13    # "contentType":Lcom/android/okhttp/MediaType;
    .restart local v14    # "contentLength":J
    .restart local v21    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_2
    const-string/jumbo v2, "Transfer-Encoding"

    #@70
    const-string/jumbo v3, "chunked"

    #@73
    move-object/from16 v0, v21

    #@75
    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@78
    .line 256
    const-string/jumbo v2, "Content-Length"

    #@7b
    move-object/from16 v0, v21

    #@7d
    invoke-virtual {v0, v2}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@80
    goto :goto_0

    #@81
    .line 273
    .end local v13    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v14    # "contentLength":J
    .end local v21    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    .restart local v20    # "followUpCount":I
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@85
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    #@88
    .line 274
    move-object/from16 v0, p0

    #@8a
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@8c
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8f
    .line 299
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@93
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@96
    move-result-object v11

    #@97
    .line 300
    .local v11, "response":Lcom/android/okhttp/Response;
    move-object/from16 v0, p0

    #@99
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@9b
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    #@9e
    move-result-object v19

    #@9f
    .line 302
    .local v19, "followUp":Lcom/android/okhttp/Request;
    if-nez v19, :cond_7

    #@a1
    .line 303
    if-nez p2, :cond_4

    #@a3
    .line 304
    move-object/from16 v0, p0

    #@a5
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@a7
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@aa
    .line 306
    :cond_4
    return-object v11

    #@ab
    .line 287
    .end local v11    # "response":Lcom/android/okhttp/Response;
    .end local v19    # "followUp":Lcom/android/okhttp/Request;
    :catch_0
    move-exception v18

    #@ac
    .line 289
    .local v18, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@ae
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@b0
    const/4 v3, 0x0

    #@b1
    move-object/from16 v0, v18

    #@b3
    invoke-virtual {v2, v0, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@b6
    move-result-object v22

    #@b7
    .line 290
    .local v22, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v22, :cond_5

    #@b9
    .line 291
    move-object/from16 v0, v22

    #@bb
    move-object/from16 v1, p0

    #@bd
    iput-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@bf
    goto :goto_1

    #@c0
    .line 296
    :cond_5
    throw v18

    #@c1
    .line 278
    .end local v18    # "e":Ljava/io/IOException;
    .end local v22    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_1
    move-exception v17

    #@c2
    .line 280
    .local v17, "e":Lcom/android/okhttp/internal/http/RouteException;
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@c6
    move-object/from16 v0, v17

    #@c8
    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@cb
    move-result-object v22

    #@cc
    .line 281
    .restart local v22    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v22, :cond_6

    #@ce
    .line 282
    move-object/from16 v0, v22

    #@d0
    move-object/from16 v1, p0

    #@d2
    iput-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@d4
    goto :goto_1

    #@d5
    .line 286
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    #@d8
    move-result-object v2

    #@d9
    throw v2

    #@da
    .line 275
    .end local v17    # "e":Lcom/android/okhttp/internal/http/RouteException;
    .end local v22    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_2
    move-exception v16

    #@db
    .line 277
    .local v16, "e":Lcom/android/okhttp/internal/http/RequestException;
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    #@de
    move-result-object v2

    #@df
    throw v2

    #@e0
    .line 309
    .end local v16    # "e":Lcom/android/okhttp/internal/http/RequestException;
    .restart local v11    # "response":Lcom/android/okhttp/Response;
    .restart local v19    # "followUp":Lcom/android/okhttp/Request;
    :cond_7
    add-int/lit8 v20, v20, 0x1

    #@e2
    const/16 v2, 0x14

    #@e4
    move/from16 v0, v20

    #@e6
    if-le v0, v2, :cond_8

    #@e8
    .line 310
    new-instance v2, Ljava/net/ProtocolException;

    #@ea
    new-instance v3, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v4, "Too many follow-up requests: "

    #@f2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v3

    #@f6
    move/from16 v0, v20

    #@f8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v3

    #@fc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v3

    #@100
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@103
    throw v2

    #@104
    .line 313
    :cond_8
    move-object/from16 v0, p0

    #@106
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@108
    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@10b
    move-result-object v3

    #@10c
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Ljava/net/URL;)Z

    #@10f
    move-result v2

    #@110
    if-nez v2, :cond_9

    #@112
    .line 314
    move-object/from16 v0, p0

    #@114
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@116
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@119
    .line 317
    :cond_9
    move-object/from16 v0, p0

    #@11b
    iget-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@11d
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    #@120
    move-result-object v8

    #@121
    .line 318
    .local v8, "connection":Lcom/android/okhttp/Connection;
    move-object/from16 p1, v19

    #@123
    .line 319
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v3, v0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    #@129
    const/4 v5, 0x0

    #@12a
    const/4 v6, 0x0

    #@12b
    const/4 v9, 0x0

    #@12c
    const/4 v10, 0x0

    #@12d
    move-object/from16 v4, p1

    #@12f
    move/from16 v7, p2

    #@131
    invoke-direct/range {v2 .. v11}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    #@134
    move-object/from16 v0, p0

    #@136
    iput-object v2, v0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@138
    goto/16 :goto_1
.end method

.method public isCanceled()Z
    .locals 1

    #@0
    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    #@2
    return v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
